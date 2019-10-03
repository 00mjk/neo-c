#include "common.h"
#include <ctype.h>

static BOOL write_to_automatically_header(sBuf* buf)
{
    char path[PATH_MAX];
    snprintf(path, PATH_MAX, "%s.h", gMainModulePath);

    FILE* f = fopen(path, "a");

    if(f == NULL) {
        fprintf(stderr, "can't open automatically header target file. %s\n", path);
        return FALSE;
    }

    fprintf(f, "%s", buf->mBuf);

    fclose(f);

    return TRUE;
}

static BOOL is_type_name(char* buf, sParserInfo* info)
{
    sCLClass* klass = get_class(buf);
    sNodeType* node_type = get_typedef(buf);

    int i;
    BOOL generics_type_name = FALSE;
    for(i=0; i<info->mNumGenerics; i++) {
        if(strcmp(buf, info->mGenericsTypeNames[i]) == 0)
        {
            generics_type_name = TRUE;
        }
    }

    BOOL method_type_name = FALSE;
    for(i=0; i<info->mNumMethodGenericsTypes; i++) {
        if(strcmp(buf, info->mMethodGenericsTypeNames[i]) == 0)
        {
            method_type_name = TRUE;
        }
    }

    return klass || node_type || generics_type_name || method_type_name || (strcmp(buf, "const") == 0) || (strcmp(buf, "unsigned") == 0) || (strcmp(buf, "static") == 0);
}


static BOOL parse_type(sNodeType** result_type, sParserInfo* info);

static BOOL parse_struct(unsigned int* node, sParserInfo* info) 
{
    char* head_of_struct = info->p;

    if(info->mBlockLevel > 0) {
        parser_err_msg(info, "definition of struct should be at the top level");
        info->err_num++;
    }

    char sname[PATH_MAX];
    xstrncpy(sname, info->sname, PATH_MAX);

    int sline = info->sline;

    int num_fields = 0;
    char field_names[STRUCT_FIELD_MAX][VAR_NAME_MAX];
    sNodeType* fields[STRUCT_FIELD_MAX];

    char struct_name[VAR_NAME_MAX];
    if(!parse_word(struct_name, VAR_NAME_MAX, info, TRUE, FALSE)) {
        return FALSE;
    }

    info->mNumGenerics = 0;

    /// generics ///
    if(*info->p == '<') {
        info->p++;
        skip_spaces_and_lf(info);

        int num_generics = 0;

        while(TRUE) {
            char buf[VAR_NAME_MAX];
            if(!parse_word(buf, VAR_NAME_MAX, info, TRUE, FALSE)) {
                return FALSE;
            }

            xstrncpy(info->mGenericsTypeNames[num_generics], buf, VAR_NAME_MAX);

            num_generics++;

            if(num_generics >= GENERICS_TYPES_MAX)
            {
                parser_err_msg(info, "overflow generics types");
                return FALSE;
            }

            if(*info->p == ',') {
                info->p++;
                skip_spaces_and_lf(info);
            }
            else if(*info->p == '>') {
                info->p++;
                skip_spaces_and_lf(info);
                break;
            }
            else {
                parser_err_msg(info, "require , or > character");
                info->err_num++;
                break;
            }
        }

        info->mNumGenerics = num_generics;
    }

    expect_next_character_with_one_forward("{", info);

    sCLClass* struct_class = get_class(struct_name);

    BOOL anonymous = FALSE;
    if(struct_class == NULL) {
        struct_class = alloc_struct(struct_name, anonymous);
    }

    int n = 0;
    while(TRUE) {
        if(*info->p == '#') {
            if(!parse_sharp(info)) {
                return FALSE;
            }
        }

        if(!parse_word(field_names[num_fields], VAR_NAME_MAX, info, TRUE, FALSE)) 
        {
            return FALSE;
        }

        expect_next_character_with_one_forward(":", info);

        sNodeType* field = NULL;
        if(!parse_type(&field, info)) {
            return FALSE;
        }

        fields[num_fields] = field;

        num_fields++;

        if(num_fields >= STRUCT_FIELD_MAX) {
            parser_err_msg(info, "overflow struct field");
            return FALSE;
        }

        if(*info->p == ';') {
            info->p++;
            skip_spaces_and_lf(info);
        }

        if(*info->p == '}') {
            info->p++;
            skip_spaces_and_lf(info);
            break;
        }
        else if(*info->p == '#') {
            if(!parse_sharp(info)) {
                return FALSE;
            }

            if(*info->p == '}') {
                info->p++;
                skip_spaces_and_lf(info);
                break;
            }
        }
    }

    if(info->parse_struct_phase) {
        add_fields_to_struct(struct_class, num_fields, field_names, fields);
    }

    sNodeType* struct_type = create_node_type_with_class_pointer(struct_class);

    *node = sNodeTree_struct(struct_type, info, sname, sline, anonymous);

/*
    if(info->parse_struct_phase && !included_generics_type(struct_type)) 
    {
        sCompileInfo cinfo;
        memset(&cinfo, 0, sizeof(sCompileInfo));
        cinfo.no_output = TRUE;

        if(!create_llvm_struct_type(struct_type, struct_type, TRUE, &cinfo))
        {
            parser_err_msg(info, "Can't create llvm struct from this node type");
            show_node_type(struct_type);
            return FALSE;
        }
    }
*/

    if(info->automatically_header)
    {
        if(info->parse_struct_phase) {
            sBuf buf;
            sBuf_init(&buf);

            int source_size = info->p - head_of_struct;

            sBuf_append_str(&buf, "struct ");
            sBuf_append(&buf, head_of_struct, source_size);

            if(!write_to_automatically_header(&buf))
            {
                return FALSE;
            }

            free(buf.mBuf);
        }
    }

    info->mNumGenerics = 0;

    return TRUE;
}


static BOOL parse_enum(unsigned int* node, sParserInfo* info) 
{
    char name[VAR_NAME_MAX];
    if(!parse_word(name, VAR_NAME_MAX, info, TRUE, FALSE)) 
    {
        return FALSE;
    }

    expect_next_character_with_one_forward("{", info);

    unsigned int nodes[IMPL_DEF_MAX];
    memset(nodes, 0, sizeof(unsigned int)*IMPL_DEF_MAX);
    int num_nodes = 0;
    int value = 0;

    while(TRUE) {
        char var_name[VAR_NAME_MAX];
        if(!parse_word(var_name, VAR_NAME_MAX, info, TRUE, FALSE)) 
        {
            return FALSE;
        }

        unsigned int right_node;

        if(*info->p == '=') {
            info->p++;
            skip_spaces_and_lf(info);

            if(!expression(&right_node, info)) {
                return FALSE;
            }

            if(gNodes[right_node].mNodeType != kNodeTypeIntValue)
            {
                parser_err_msg(info, "This is not Int Value");
                info->err_num++;
                return TRUE;
            }

            value = gNodes[right_node].uValue.mIntValue;
        }
        else {
            right_node = sNodeTree_create_int_value(value, info);
        }

        if(info->parse_struct_phase) {
            BOOL alloc_ = TRUE;
            *node = sNodeTree_create_store_variable(var_name, right_node, alloc_, info);

            sNodeType* result_type = create_node_type_with_class_name("int");
            result_type->mConstant = TRUE;

            check_already_added_variable(info->lv_table, var_name, info);
            BOOL readonly = TRUE;
            if(!add_variable_to_table(info->lv_table, var_name, result_type, readonly, NULL, -1, info->mBlockLevel == 0, result_type->mConstant))
            {
                fprintf(stderr, "overflow variable table\n");
                exit(2);
            }

            nodes[num_nodes++] = *node;
            value++;

            if(num_nodes >= IMPL_DEF_MAX) {
                fprintf(stderr, "overflow enum element max");
                return FALSE;
            }
        }

        if(*info->p == ',') {
            info->p++;
            skip_spaces_and_lf(info);
        }

        if(*info->p == '}') {
            info->p++;
            skip_spaces_and_lf(info);
            break;
        }
    }

    if(*info->p == ';') {
        info->p++;
        skip_spaces_and_lf(info);
    }

    BOOL extern_ = FALSE;
    *node = sNodeTree_create_define_variables(nodes, num_nodes, extern_, info);

    (void)alloc_enum(name);

    return TRUE;
}

static BOOL parse_type(sNodeType** result_type, sParserInfo* info)
{
    char type_name[VAR_NAME_MAX];

    *result_type = NULL;

    BOOL heap = FALSE;
    BOOL nullable = FALSE;
    BOOL constant = FALSE;
    BOOL unsigned_ = FALSE;
    BOOL static_ = FALSE;
    BOOL no_heap = FALSE;
    BOOL managed = FALSE;

    while(TRUE) {
        char* p_before = info->p;
        int sline_before = info->sline;

        if(!parse_word(type_name, VAR_NAME_MAX, info, TRUE, FALSE)) 
        {
            return FALSE;
        }

        if(strcmp(type_name, "const") == 0) {
            constant = TRUE;
        }
        else if(strcmp(type_name, "unsigned") == 0) {
            unsigned_ = TRUE;
        }
        else if(strcmp(type_name, "static") == 0) {
            static_ = TRUE;
        }
        else {
            info->p = p_before;
            info->sline = sline_before;
            break;
        }
    }

    if(!parse_word(type_name, VAR_NAME_MAX, info, TRUE, FALSE)) 
    {
        return FALSE;
    }

    if(*result_type == NULL) {
        int i;
        for(i=0; i<info->mNumGenerics; i++) {
            if(strcmp(type_name, info->mGenericsTypeNames[i]) == 0)
            {
                char buf[VAR_NAME_MAX+1];
                snprintf(buf, VAR_NAME_MAX, "generics%d", i);

                *result_type = create_node_type_with_class_name(buf);
            }
        }
    }

    if(*result_type == NULL) {
        int i;
        for(i=0; i<info->mNumMethodGenerics; i++) {
            if(strcmp(type_name, info->mMethodGenericsTypeNames[i]) == 0)
            {
                char buf[VAR_NAME_MAX+1];
                snprintf(buf, VAR_NAME_MAX, "mgenerics%d", i);

                *result_type = create_node_type_with_class_name(buf);
            }
        }
    }

    if(*result_type == NULL) {
        *result_type = get_typedef(type_name);

        if(*result_type != NULL) {
            heap = (*result_type)->mHeap;
            nullable = (*result_type)->mNullable;
            constant = (*result_type)->mConstant;
            unsigned_ = (*result_type)->mUnsigned;
            static_ = (*result_type)->mStatic;
            no_heap = (*result_type)->mNoHeap;
            managed = (*result_type)->mManaged;
        }
    }

    if(*result_type == NULL) {
        sCLClass* klass = get_class(type_name);

        if(klass) {
            *result_type = create_node_type_with_class_name(type_name);
        }
    }

    if(strcmp(type_name, "typeof") == 0 && *info->p == '(')
    {
        info->p++;
        skip_spaces_and_lf(info);

        unsigned int node = 0;
        if(!expression(&node, info)) {
            return FALSE;
        }

        *result_type = create_node_type_with_class_name("TYPEOF");

        expect_next_character_with_one_forward(")", info);

        (*result_type)->mTypeOfExpression = node;
    }

    if(*result_type == NULL || (*result_type)->mClass == NULL) {
        parser_err_msg(info, "%s is not defined class(2)", type_name);
        info->err_num++;
        return FALSE;
    }

    if(*info->p == '<' && *(info->p+1) != '<' && *(info->p+1) != '=') 
    {
        info->p++;
        skip_spaces_and_lf(info);

        int generics_num = 0;

        while(1) {
            if(!parse_type(&(*result_type)->mGenericsTypes[generics_num], info))
            {
                return FALSE;
            }

            generics_num++;

            if(generics_num >= GENERICS_TYPES_MAX) {
                parser_err_msg(info, "overflow generics parametor number");
                return FALSE;
            }

            if(*info->p == ',') {
                info->p++;
                skip_spaces_and_lf(info);
            }
            else if(*info->p == '>') {
                info->p++;
                skip_spaces_and_lf(info);
                break;
            }
            else {
                parser_err_msg(info, "invalid character(%c) in generics types", *info->p);
                info->err_num++;
                break;
            }
        }

        (*result_type)->mNumGenericsTypes = generics_num;
    }

    if(memcmp(info->p, "lambda", 6) == 0) 
    {
        info->p += 6;
        skip_spaces_and_lf(info);

        sNodeType* node_type = clone_node_type(*result_type);

        *result_type = create_node_type_with_class_name("lambda");

        (*result_type)->mResultType = node_type;

        if(*info->p == '(') {
            info->p++;
            skip_spaces_and_lf(info);

            if(*info->p == ')') {
                info->p++;
                skip_spaces_and_lf(info);
            }
            else {
                while(1) {
                    sNodeType* node_type = NULL;
                    if(!parse_type(&node_type, info))
                    {
                        return FALSE;
                    }

                    (*result_type)->mParamTypes[(*result_type)->mNumParams] = node_type;

                    (*result_type)->mNumParams++;

                    if((*result_type)->mNumParams >= PARAMS_MAX) {
                        parser_err_msg(info, "oveflow type params");
                        return FALSE;
                    }

                    if(*info->p == ')') {
                        info->p++;
                        skip_spaces_and_lf(info);
                        break;
                    }
                    else if(*info->p == ',') {
                        info->p++;
                        skip_spaces_and_lf(info);
                    }
                    else {
                        parser_err_msg(info, "invalid character in lambda type name(%c)", *info->p);
                        break;
                    }
                }
            }
        }
    }

    /// pointer ///
    int pointer_num = 0;

    while(1) {
        if(*info->p == '%') {
            info->p++;
            skip_spaces_and_lf(info);

            heap = TRUE;
        }
        else if(*info->p == '&') {
            info->p++;
            skip_spaces_and_lf(info);

            no_heap = TRUE;
        }
        else if(*info->p == '$') {
            info->p++;
            skip_spaces_and_lf(info);

            managed = TRUE;
        }
        else if(*info->p == '?') {
            info->p++;
            skip_spaces_and_lf(info);

            nullable = TRUE;
        }
        else if(*info->p == '*') {
            info->p++;
            skip_spaces_and_lf(info);

            pointer_num++;
        }
        else {
            break;
        }
    }

    (*result_type)->mPointerNum += pointer_num;
    (*result_type)->mHeap = heap;
    (*result_type)->mNullable = nullable;
    (*result_type)->mConstant = constant;
    (*result_type)->mUnsigned = unsigned_;
    (*result_type)->mRegister = FALSE;
    (*result_type)->mVolatile = FALSE;
    (*result_type)->mStatic = static_;
    (*result_type)->mNoHeap = no_heap;
    (*result_type)->mManaged = managed;

    if(info->mNumMethodGenericsTypes > 0) {
        if(!solve_method_generics(result_type, info->mNumMethodGenericsTypes, info->mMethodGenericsTypes))
        {
            parser_err_msg(info, "Can't solve method generics type");
            show_node_type(*result_type);
            info->err_num++;
        }
    }

    if(info->mGenericsType && info->mGenericsType->mNumGenericsTypes > 0)
    {
        BOOL success_solve;
        if(!solve_generics(result_type, info->mGenericsType, &success_solve))
        {
            parser_err_msg(info, "Can't solve generics type");
            show_node_type(*result_type);
            show_node_type(info->mGenericsType);
            info->err_num++;
        }
    }

    return TRUE;
}

static BOOL parse_var(unsigned int* node, sParserInfo* info, BOOL readonly)
{
    char buf[VAR_NAME_MAX];

    if(!parse_word(buf, VAR_NAME_MAX, info, TRUE, FALSE)) {
        return FALSE;
    }

    if(*info->p == ':') {
        info->p++;
        skip_spaces_and_lf(info);
    }

    sNodeType* node_type;
    if(*info->p != '=') {
        if(!parse_type(&node_type, info)) {
            return FALSE;
        }

        if(node_type->mClass == NULL) {
            *node = 0;
            return TRUE;
        }
        if(node_type) {
            check_already_added_variable(info->lv_table, buf, info);
            if(!add_variable_to_table(info->lv_table, buf, node_type, readonly, NULL, -1, info->mBlockLevel == 0, node_type->mConstant))
            {
                fprintf(stderr, "overflow variable table\n");
                exit(2);
            }
        }
    }
    else {
        node_type = NULL;
        check_already_added_variable(info->lv_table, buf, info);
        if(!add_variable_to_table(info->lv_table, buf, node_type, readonly, NULL, -1, info->mBlockLevel == 0, FALSE))
        {
            fprintf(stderr, "overflow variable table\n");
            exit(2);
        }
    }

    /// assign the value to a variable ///
    if(*info->p == '=' && *(info->p+1) != '=') {
        info->p++;
        skip_spaces_and_lf(info);

        unsigned int right_node = 0;

        if(!expression(&right_node, info)) {
            return FALSE;
        }

        if(right_node == 0) {
            parser_err_msg(info, "Require right value for =");
            info->err_num++;

            *node = 0;
        }
        else {
            *node = sNodeTree_create_store_variable(buf, right_node, TRUE, info);
        }
    }
    else {
        parser_err_msg(info, "%s should be initialized", buf);
        info->err_num++;

        *node = 0;
    }

    return TRUE;
}

static BOOL parse_return(unsigned int* node, sParserInfo* info)
{
    *node = 0;

    if(*info->p == '(') {
        info->p++;
        skip_spaces_and_lf(info);

        if(!expression(node, info)) {
            return FALSE;
        }

        expect_next_character_with_one_forward(")", info);
    }
    else if(*info->p != ';') {
        if(!expression(node, info)) {
            return FALSE;
        }
    }

    *node = sNodeTree_create_return(*node, info);

    return TRUE;
}

static BOOL parse_simple_lambda_params(unsigned int* node, int sline, sParserInfo* info)
{
    char sname[PATH_MAX];
    xstrncpy(sname, info->sname, PATH_MAX);

    sBuf buf;
    sBuf_init(&buf);

    if(!get_block_text(&buf, info, TRUE)) {
        free(buf.mBuf);
        return FALSE;
    }

    sBuf_append_str(&buf, "}");

    *node = sNodeTree_create_simple_lambda_param(MANAGED buf.mBuf, sname, sline, info);

    return TRUE;
}

static BOOL parse_param(sParserParam* param, sParserInfo* info)
{
    if(!parse_word(param->mName, VAR_NAME_MAX, info, TRUE, FALSE)) {
        return FALSE;
    }

    expect_next_character_with_one_forward(":", info);

    if(!parse_type(&param->mType, info))
    {
        return FALSE;
    }

    return TRUE;
}

/// character_type --> 0: () 1: ||
static BOOL parse_params(sParserParam* params, int* num_params, sParserInfo* info, int character_type, BOOL* var_arg)
{
    if((character_type == 0 && *info->p == ')') || (character_type == 1 && *info->p == '|')) {
        info->p++;
        skip_spaces_and_lf(info);

        return TRUE;
    }
     
    *var_arg = FALSE;

    while(1) {
        if(*info->p == '.' && *(info->p + 1) == '.' && *(info->p + 2) == '.') {
            info->p += 3;
            skip_spaces_and_lf(info);

            expect_next_character_with_one_forward(")", info);

            *var_arg = TRUE;
            break;
        }

        if(!parse_param(params + *num_params, info)) {
            return FALSE;
        }

        sParserParam* param = params + *num_params;

        (*num_params)++;

        if(*num_params >= PARAMS_MAX) {
            parser_err_msg(info, "overflow params number");
            return FALSE;
        }

        if(*info->p == ',') {
            info->p++;
            skip_spaces_and_lf(info);
        }
        else if((character_type == 0 && *info->p == ')') || (character_type == 1 && *info->p == '|')) {
            info->p++;
            skip_spaces_and_lf(info);
            break;
        }
        else if(*info->p == '\0') {
            parser_err_msg(info, "It is required to ',' or ')' before the source end");
            info->err_num++;
            break;
        }
        else {
            parser_err_msg(info, "Unexpected character(%c). It is required to ',' or ')' or '|' character", *info->p);
            if(*info->p == '\n') {
                info->sline++;
            }
            info->p++;

            info->err_num++;
        }
    }

    return TRUE;
}

static void parse_version(int* version, sParserInfo* info)
{
    if(memcmp(info->p, "version", 7) == 0) {
        info->p += 7;
        skip_spaces_and_lf(info);

        *version = 0;
        while(isdigit(*info->p)) {
            *version = *version * 10 + (*info->p - '0');
            info->p++;
            skip_spaces_and_lf(info);
        }

        skip_spaces_and_lf(info);
    }
}


static BOOL parse_generics_function(unsigned int* node, char* struct_name, sParserInfo* info)
{
    char* function_head = info->p;

    char fun_name[VAR_NAME_MAX];

    if(!parse_word(fun_name, VAR_NAME_MAX, info, TRUE, FALSE))
    {
        return FALSE;
    }

    xstrncpy(info->fun_name, fun_name, VAR_NAME_MAX);

    BOOL operator_fun = FALSE;

    expect_next_character_with_one_forward("(", info);

    /// params ///
    sParserParam params[PARAMS_MAX];
    memset(params, 0, sizeof(sParserParam)*PARAMS_MAX);
    int num_params = 0;

    /// parse_params ///
    BOOL var_arg = FALSE;
    if(!parse_params(params, &num_params, info, 0, &var_arg))
    {
        return FALSE;
    }

    sNodeType* result_type = NULL;
    if(*info->p == ':') {
        info->p++;
        skip_spaces_and_lf(info);

        if(!parse_type(&result_type, info))
        {
            return FALSE;
        }
    }
    else {
        result_type = create_node_type_with_class_name("void");
    }

    int version = info->mImplVersion;
    parse_version(&version, info);
    info->mFunVersion = version;
    skip_spaces_and_lf(info);

    char sname[PATH_MAX];
    xstrncpy(sname, info->sname, PATH_MAX);

    skip_spaces_and_lf(info);

    int sline = info->sline;

    if(*info->p == '{') {
        info->p++;
    }

    sBuf buf;
    sBuf_init(&buf);

    if(!get_block_text(&buf, info, TRUE)) {
        free(buf.mBuf);
        return FALSE;
    }

    sBuf_append_str(&buf, "}");

    *node = sNodeTree_create_generics_function(fun_name, params, num_params, result_type, MANAGED buf.mBuf, struct_name, sname, sline, var_arg, version, info);

    if(info->automatically_header) 
    {
        if(info->parse_struct_phase) 
        {
            sBuf buf;
            sBuf_init(&buf);

            int source_size = info->p - function_head;

            sBuf_append_str(&buf, "def ");
            sBuf_append(&buf, function_head, source_size);

            if(!write_to_automatically_header(&buf))
            {
                return FALSE;
            }

            free(buf.mBuf);
        }
    }


    return TRUE;
}

static BOOL parse_method_generics_function(unsigned int* node, char* struct_name, sParserInfo* info)
{
    char* function_head = info->p;

    /// method generics ///
    info->mNumMethodGenerics = 0;

    if(*info->p == '<') {
        info->p++;
        skip_spaces_and_lf(info);

        int num_generics = 0;

        while(TRUE) {
            char buf[VAR_NAME_MAX];
            if(!parse_word(buf, VAR_NAME_MAX, info, TRUE, FALSE)) {
                return FALSE;
            }

            xstrncpy(info->mMethodGenericsTypeNames[num_generics], buf, VAR_NAME_MAX);

            num_generics++;

            if(num_generics >= GENERICS_TYPES_MAX)
            {
                parser_err_msg(info, "overflow generics types");
                return FALSE;
            }

            info->mNumMethodGenerics = num_generics;

            if(*info->p == ',') {
                info->p++;
                skip_spaces_and_lf(info);
            }
            else if(*info->p == '>') {
                info->p++;
                skip_spaces_and_lf(info);
                break;
            }
            else {
                parser_err_msg(info, "require , or > character");
                info->err_num++;
                break;
            }
        }
    }

    char fun_name[VAR_NAME_MAX+1];
    if(!parse_word(fun_name, VAR_NAME_MAX, info, TRUE, FALSE))
    {
        return FALSE;
    }

    xstrncpy(info->fun_name, fun_name, VAR_NAME_MAX);

    BOOL operator_fun = FALSE;

    expect_next_character_with_one_forward("(", info);

    /// params ///
    sParserParam params[PARAMS_MAX];
    memset(params, 0, sizeof(sParserParam)*PARAMS_MAX);
    int num_params = 0;

    /// parse_params ///
    BOOL var_arg = FALSE;
    if(!parse_params(params, &num_params, info, 0, &var_arg))
    {
        return FALSE;
    }

    sNodeType* result_type = NULL;
    if(*info->p == ':') {
        info->p++;
        skip_spaces_and_lf(info);

        if(!parse_type(&result_type, info))
        {
            return FALSE;
        }
    }
    else {
        result_type = create_node_type_with_class_name("void");
    }

    int version = info->mImplVersion;
    parse_version(&version, info);
    info->mFunVersion = version;
    skip_spaces_and_lf(info);

    char sname[PATH_MAX];
    xstrncpy(sname, info->sname, PATH_MAX);

    skip_spaces_and_lf(info);

    int sline = info->sline;

    if(*info->p == '{') {
        info->p++;
    }

    sBuf buf;
    sBuf_init(&buf);

    if(!get_block_text(&buf, info, TRUE)) {
        free(buf.mBuf);
        return FALSE;
    }

    sBuf_append_str(&buf, "}");

    *node = sNodeTree_create_generics_function(fun_name, params, num_params, result_type, MANAGED buf.mBuf, struct_name, sname, sline, var_arg, version, info);

    if(info->automatically_header) 
    {
        if(info->parse_struct_phase) 
        {
            sBuf buf;
            sBuf_init(&buf);

            int source_size = info->p - function_head;

            sBuf_append_str(&buf, "def ");
            sBuf_append(&buf, function_head, source_size);

            if(!write_to_automatically_header(&buf))
            {
                return FALSE;
            }

            free(buf.mBuf);
        }
    }

    return TRUE;
}

static BOOL parse_function(unsigned int* node, char* struct_name, sParserInfo* info)
{
    char* function_head = info->p;

    char fun_name[VAR_NAME_MAX];

    if(!parse_word(fun_name, VAR_NAME_MAX, info, TRUE, FALSE))
    {
        return FALSE;
    }

    xstrncpy(info->fun_name, fun_name, VAR_NAME_MAX);

    BOOL operator_fun = FALSE;

    /// method generics ///
    info->mNumMethodGenerics = 0;

    if(strcmp(fun_name, "operator") == 0) {
        operator_fun = TRUE;

        switch(*info->p) {
            case '+': 
                info->p++;
                skip_spaces_and_lf(info);
                xstrncpy(fun_name, "op_add", VAR_NAME_MAX);
                break;

            case '-': 
                info->p++;
                skip_spaces_and_lf(info);
                xstrncpy(fun_name, "op_sub", VAR_NAME_MAX);
                break;

            case '*': 
                info->p++;
                skip_spaces_and_lf(info);
                xstrncpy(fun_name, "op_mult", VAR_NAME_MAX);
                break;

            case '/': 
                info->p++;
                skip_spaces_and_lf(info);
                xstrncpy(fun_name, "op_div", VAR_NAME_MAX);
                break;

            case '%': 
                info->p++;
                skip_spaces_and_lf(info);
                xstrncpy(fun_name, "op_mod", VAR_NAME_MAX);
                break;
        }
    }

    expect_next_character_with_one_forward("(", info);

    /// params ///
    sParserParam params[PARAMS_MAX];
    memset(params, 0, sizeof(sParserParam)*PARAMS_MAX);

    /// parse_params ///
    int num_params = 0;
    BOOL var_arg = FALSE;
    if(!parse_params(params, &num_params, info, 0, &var_arg))
    {
        return FALSE;
    }

    sNodeType* result_type = NULL;
    if(*info->p == ':') {
        info->p++;
        skip_spaces_and_lf(info);

        if(!parse_type(&result_type, info))
        {
            return FALSE;
        }
    }
    else {
        result_type = create_node_type_with_class_name("void");
    }

    int version = info->mImplVersion;
    parse_version(&version, info);
    info->mFunVersion = version;
    skip_spaces_and_lf(info);

    if(*info->p == ';') {
        info->p++;
        skip_spaces_and_lf(info);

        if(info->parse_struct_phase) {
        }
        else {
            *node = sNodeTree_create_external_function(fun_name, params, num_params, var_arg, result_type, struct_name, operator_fun, version, info);
        }
    }
    else {
        if(info->automatically_header) 
        {
            if(info->parse_struct_phase) 
            {
                sBuf buf;
                sBuf_init(&buf);

                int source_size = info->p - function_head;

                sBuf_append_str(&buf, "def ");
                sBuf_append(&buf, function_head, source_size);
                sBuf_append_str(&buf, ";\n");

                if(!write_to_automatically_header(&buf))
                {
                    return FALSE;
                }

                free(buf.mBuf);
            }
        }

        if(info->parse_struct_phase) {
            if(!skip_block(info)) {
                return FALSE;
            }

            *node = sNodeTree_create_null(info);
        }
        else {
            sNodeBlock* node_block = ALLOC sNodeBlock_alloc();
            expect_next_character_with_one_forward("{", info);
            sVarTable* old_table = info->lv_table;

            info->lv_table = init_block_vtable(old_table, FALSE);

            sVarTable* block_var_table = info->lv_table;

            int i;
            for(i=0; i<num_params; i++) {
                sParserParam* param = params + i;

                BOOL readonly = FALSE;
                if(!add_variable_to_table(info->lv_table, param->mName, param->mType, readonly, NULL, -1, FALSE, param->mType->mConstant))
                {
                    return FALSE;
                }
            }

            if(!parse_block(node_block, FALSE, info)) {
                sNodeBlock_free(node_block);
                return FALSE;
            }

            expect_next_character_with_one_forward("}", info);
            info->lv_table = old_table;

            BOOL lambda = FALSE;

            BOOL simple_lambda_param = FALSE;
            BOOL construct_fun = FALSE;

            *node = sNodeTree_create_function(fun_name, params, num_params, result_type, MANAGED node_block, lambda, block_var_table, struct_name, operator_fun, construct_fun, simple_lambda_param, info, FALSE, var_arg, version);
        }
    }

    info->mNumMethodGenerics = 0;

    return TRUE;
}

static BOOL parse_constructor(unsigned int* node, char* struct_name, sParserInfo* info) 
{
    char* function_head = info->p;

    /// method generics ///
    info->mNumMethodGenerics = 0;

    BOOL operator_fun = FALSE;

    char* fun_name = "initialize";
    xstrncpy(info->fun_name, fun_name, VAR_NAME_MAX);

    expect_next_character_with_one_forward("(", info);

    /// result_type ///
    sNodeType* result_type = create_node_type_with_class_name(struct_name);

    if(result_type == NULL) {
        parser_err_msg(info, "Undeclared struct name (%s)", struct_name);
        info->err_num++;
        return TRUE;
    }
    result_type->mPointerNum++;
    result_type->mHeap = TRUE;

    int i;
    for(i=0; i<info->mNumGenerics; i++) {
        char class_name[VAR_NAME_MAX+1];

        snprintf(class_name, VAR_NAME_MAX, "generics%d", i);
        result_type->mGenericsTypes[i] = create_node_type_with_class_name(class_name);
    }
    result_type->mNumGenericsTypes = info->mNumGenerics;

    /// params ///
    sParserParam params[PARAMS_MAX];
    memset(params, 0, sizeof(sParserParam)*PARAMS_MAX);

    /// parse_params ///
    int num_params = 0;
    BOOL var_arg = FALSE;

    params[0].mType = clone_node_type(result_type);
    xstrncpy(params[0].mName, "self", VAR_NAME_MAX);

    num_params++;

    if(!parse_params(params, &num_params, info, 0, &var_arg))
    {
        return FALSE;
    }

    for(i=0; i<num_params; i++) {
        char* name = params[i].mName;

        if(name[0] == '\0') {
            parser_err_msg(info, "Require parametor variable names");
            info->err_num++;
        }
    }

    int version = info->mImplVersion;
    parse_version(&version, info);
    info->mFunVersion = version;
    skip_spaces_and_lf(info);

    if(info->mNumGenerics > 0) {
        char sname[PATH_MAX];
        xstrncpy(sname, info->sname, PATH_MAX);

        skip_spaces_and_lf(info);

        int sline = info->sline;

        if(*info->p == '{') {
            info->p++;
        }

        sBuf buf;
        sBuf_init(&buf);

        if(!get_block_text(&buf, info, TRUE)) {
            free(buf.mBuf);
            return FALSE;
        }

        sBuf_append_str(&buf, "\nself\n");

        sBuf_append_str(&buf, "}");

        *node = sNodeTree_create_generics_function(fun_name, params, num_params, result_type, MANAGED buf.mBuf, struct_name, sname, sline, var_arg, version, info);

        if(info->automatically_header) 
        {
            if(info->parse_struct_phase) 
            {
                sBuf buf;
                sBuf_init(&buf);

                int source_size = info->p - function_head;

                sBuf_append_str(&buf, "initialize");
                sBuf_append(&buf, function_head, source_size);

                if(!write_to_automatically_header(&buf))
                {
                    return FALSE;
                }

                free(buf.mBuf);
            }
        }
    }
    else {
        if(info->automatically_header) 
        {
            if(info->parse_struct_phase) 
            {
                sBuf buf;
                sBuf_init(&buf);

                int source_size = info->p - function_head;

                sBuf_append_str(&buf, "initialize");
                sBuf_append(&buf, function_head, source_size);
                sBuf_append_str(&buf, ";\n");

                if(!write_to_automatically_header(&buf))
                {
                    return FALSE;
                }

                free(buf.mBuf);
            }
        }

        if(*info->p == ';') {
            info->p++;
            skip_spaces_and_lf(info);

            *node = sNodeTree_create_external_function(fun_name, params, num_params, var_arg, result_type, struct_name, operator_fun, version, info);
        }
        else {
            sNodeBlock* node_block = ALLOC sNodeBlock_alloc();
            expect_next_character_with_one_forward("{", info);
            sVarTable* old_table = info->lv_table;


            info->lv_table = init_block_vtable(old_table, FALSE);

            sVarTable* block_var_table = info->lv_table;

            int i;
            for(i=0; i<num_params; i++) {
                sParserParam* param = params + i;

                BOOL readonly = FALSE;
                if(!add_variable_to_table(info->lv_table, param->mName, param->mType, readonly, NULL, -1, FALSE, param->mType->mConstant))
                {
                    return FALSE;
                }
            }

            if(!parse_block(node_block, FALSE, info)) {
                sNodeBlock_free(node_block);
                return FALSE;
            }

            int sline = info->sline;
            char sname[PATH_MAX];
            xstrncpy(sname, info->sname, PATH_MAX);

            unsigned int result_node = sNodeTree_create_load_variable("self", info);

            if(result_node == 0) {
                parser_err_msg(info, "require an expression");
                info->err_num++;
            }

            gNodes[result_node].mLine = sline;
            xstrncpy(gNodes[result_node].mSName, sname, PATH_MAX);

            append_node_to_node_block(node_block, result_node);

            node_block->mHasResult = TRUE;

            expect_next_character_with_one_forward("}", info);
            info->lv_table = old_table;

            BOOL lambda = FALSE;

            BOOL simple_lambda_param = FALSE;
            BOOL construct_fun = TRUE;

            BOOL generics_function = info->mNumGenerics > 0;

            *node = sNodeTree_create_function(fun_name, params, num_params, result_type, MANAGED node_block, lambda, block_var_table, struct_name, operator_fun, construct_fun, simple_lambda_param, info, generics_function, FALSE, version);
        }
    }

    info->mNumMethodGenerics = 0;

    return TRUE;
}

static BOOL parse_destructor(unsigned int* node, char* struct_name, sParserInfo* info) 
{
    char* function_head = info->p;

    /// method generics ///
    info->mNumMethodGenerics = 0;

    BOOL operator_fun = FALSE;

    char* fun_name = "finalize";
    xstrncpy(info->fun_name, fun_name, VAR_NAME_MAX);

    expect_next_character_with_one_forward("(", info);

    /// result_type ///
    sNodeType* result_type = create_node_type_with_class_name("void");

    /// params ///
    sParserParam params[PARAMS_MAX];
    memset(params, 0, sizeof(sParserParam)*PARAMS_MAX);

    /// parse_params ///
    int num_params = 0;
    BOOL var_arg = FALSE;

    sNodeType* self_type = create_node_type_with_class_name(struct_name);
    self_type->mPointerNum++;
    self_type->mNullable = TRUE;

    int i;
    for(i=0; i<info->mNumGenerics; i++) {
        char class_name[VAR_NAME_MAX+1];

        snprintf(class_name, VAR_NAME_MAX, "generics%d", i);
        self_type->mGenericsTypes[i] = create_node_type_with_class_name(class_name);
    }
    self_type->mNumGenericsTypes = info->mNumGenerics;

    params[0].mType = clone_node_type(self_type);
    xstrncpy(params[0].mName, "self", VAR_NAME_MAX);

    num_params++;

    if(!parse_params(params, &num_params, info, 0, &var_arg))
    {
        return FALSE;
    }

    int version = info->mImplVersion;
    parse_version(&version, info);
    info->mFunVersion = version;
    skip_spaces_and_lf(info);

    if(info->mNumGenerics > 0) {
        char sname[PATH_MAX];
        xstrncpy(sname, info->sname, PATH_MAX);

        skip_spaces_and_lf(info);

        int sline = info->sline;

        if(*info->p == '{') {
            info->p++;
        }

        sBuf buf;
        sBuf_init(&buf);

        sBuf_append_str(&buf, "{");

        sBuf_append_str(&buf, "\nif(self == null) { return; }\n");

        if(!get_block_text(&buf, info, FALSE)) {
            free(buf.mBuf);
            return FALSE;
        }

        sBuf_append_str(&buf, "}");

        *node = sNodeTree_create_generics_function(fun_name, params, num_params, result_type, MANAGED buf.mBuf, struct_name, sname, sline, var_arg, version, info);

        //info->mNumMethodGenerics = 0;

        if(info->automatically_header) 
        {
            if(info->parse_struct_phase) 
            {
                sBuf buf;
                sBuf_init(&buf);

                int source_size = info->p - function_head;

                sBuf_append_str(&buf, "finalize");
                sBuf_append(&buf, function_head, source_size);

                if(!write_to_automatically_header(&buf))
                {
                    return FALSE;
                }

                free(buf.mBuf);
            }
        }
    }
    else {
        if(info->automatically_header) 
        {
            if(info->parse_struct_phase) 
            {
                sBuf buf;
                sBuf_init(&buf);

                int source_size = info->p - function_head;

                sBuf_append_str(&buf, "finalize");
                sBuf_append(&buf, function_head, source_size);
                sBuf_append_str(&buf, ";\n");

                if(!write_to_automatically_header(&buf))
                {
                    return FALSE;
                }

                free(buf.mBuf);
            }
        }

        if(*info->p == ';') {
            info->p++;
            skip_spaces_and_lf(info);

            *node = sNodeTree_create_external_function(fun_name, params, num_params, var_arg, result_type, struct_name, operator_fun, version, info);
        }
        else {
            sNodeBlock* node_block = ALLOC sNodeBlock_alloc();
            expect_next_character_with_one_forward("{", info);
            sVarTable* old_table = info->lv_table;

            info->lv_table = init_block_vtable(old_table, FALSE);

            sVarTable* block_var_table = info->lv_table;

            int i;
            for(i=0; i<num_params; i++) {
                sParserParam* param = params + i;

                BOOL readonly = FALSE;
                if(!add_variable_to_table(info->lv_table, param->mName, param->mType, readonly, NULL, -1, FALSE, param->mType->mConstant))
                {
                    return FALSE;
                }
            }

            unsigned int node2 = 0;

            skip_spaces_and_lf(info);

            int sline = info->sline;
            char* sname = info->sname;

            char* p_before = info->p;

            info->p = "if(self == null) { return; }";

            if(!expression(&node2, info)) {
                return FALSE;
            }

            gNodes[node2].mLine = sline;
            xstrncpy(gNodes[node2].mSName, sname, PATH_MAX);

            if(info->err_num == 0) {
                append_node_to_node_block(node_block, node2);
            }

            info->p = p_before;

            if(!parse_block(node_block, FALSE, info)) {
                sNodeBlock_free(node_block);
                return FALSE;
            }

            expect_next_character_with_one_forward("}", info);
            info->lv_table = old_table;

            BOOL lambda = FALSE;

            BOOL simple_lambda_param = FALSE;
            BOOL construct_fun = TRUE;

            BOOL generics_function = info->mNumGenerics > 0;

            *node = sNodeTree_create_function(fun_name, params, num_params, result_type, MANAGED node_block, lambda, block_var_table, struct_name, operator_fun, construct_fun, simple_lambda_param, info, generics_function, FALSE, version);
        }
    }

    info->mNumMethodGenerics = 0;

    return TRUE;
}

static BOOL parse_funcation_call_params(int* num_params, unsigned int* params, sParserInfo* info)
{
    if(*info->p == '(') {
        info->p++;
        skip_spaces_and_lf(info);

        if(*info->p == ')') {
            info->p++;
            skip_spaces_and_lf(info);
        }
        else {
            while(1) {
                unsigned int node = 0;
                if(!expression(&node, info)) {
                    return FALSE;
                }

                if(node == 0) {
                    parser_err_msg(info, "require expression");
                    info->err_num++;
                    break;
                }

                params[*num_params] = node;
                (*num_params)++;

                if(*num_params >= PARAMS_MAX) {
                    parser_err_msg(info, "overflow parametor number for method call");
                    return FALSE;
                }

                if(*info->p == '@') {
                    info->p++;
                    while(isalnum(*info->p) || *info->p == '_') {
                        info->p++;
                    }
                    skip_spaces_and_lf(info);
                }

                if(*info->p == ',') {
                    info->p++;
                    skip_spaces_and_lf(info);
                }
                else if(*info->p == ')') {
                    info->p++;
                    skip_spaces_and_lf(info);
                    break;
                }
                else if(*info->p == '\0') {
                    parser_err_msg(info, "unexpected the source end");
                    info->err_num++;
                    break;
                }
                else {
                    parser_err_msg(info, "neo-c requires , or ) for method call");
                    info->err_num++;
                    break;
                }
            }
        }
    }

    skip_spaces_and_lf(info);

    /// simple lambda params ///
    if(*info->p == '{') {
        info->p++;
        int sline = info->sline;

        unsigned int node = 0;
        if(!parse_simple_lambda_params(&node, sline, info))
        {
            return FALSE;
        }

        if(node == 0) {
            parser_err_msg(info, "require expression");
            info->err_num++;
            return TRUE;
        }

        params[*num_params] = node;
        (*num_params)++;

        if(*num_params >= PARAMS_MAX) {
            parser_err_msg(info, "overflow parametor number for function call");
            return FALSE;
        }
    }

    return TRUE;
}


static BOOL parse_if(unsigned int* node, sParserInfo* info)
{
    char sname[PATH_MAX];
    xstrncpy(sname, info->sname, PATH_MAX);
    int sline = info->sline;

    expect_next_character_with_one_forward("(", info);

    /// expression ///
    unsigned int expression_node = 0;
    if(!expression(&expression_node, info)) {
        return FALSE;
    }

    if(expression_node == 0) {
        parser_err_msg(info, "require expression for if");
        info->err_num++;
        return TRUE;
    }

    expect_next_character_with_one_forward(")", info);
    sNodeBlock* if_node_block = NULL;
    if(!parse_block_easy(ALLOC &if_node_block, FALSE, info))
    {
        return FALSE;
    }

    unsigned int elif_expression_nodes[ELIF_NUM_MAX];
    memset(elif_expression_nodes, 0, sizeof(unsigned int)*ELIF_NUM_MAX);

    sNodeBlock* elif_node_blocks[ELIF_NUM_MAX];
    memset(elif_node_blocks, 0, sizeof(sNodeBlock*)*ELIF_NUM_MAX);

    int elif_num = 0;

    sNodeBlock* else_node_block = NULL;

    while(1) {
        char* saved_p = info->p;
        int saved_sline = info->sline;

        char buf[VAR_NAME_MAX];

        /// else ///
        if(!isalpha(*info->p)) {
            break;
        }
        if(!parse_word(buf, VAR_NAME_MAX, info, TRUE, FALSE)) {
            return FALSE;
        }

        if(strcmp(buf, "else") == 0) {
            if(memcmp(info->p, "if", 2) == 0) {
                info->p+=2;
                skip_spaces_and_lf(info);

                expect_next_character_with_one_forward("(", info);

                /// expression ///
                if(!expression(&elif_expression_nodes[elif_num], info)) {
                    return FALSE;
                }

                if(elif_expression_nodes[elif_num] == 0) {
                    parser_err_msg(info, "require elif expression");
                    info->err_num++;
                    return TRUE;
                }

                expect_next_character_with_one_forward(")", info);

                if(!parse_block_easy(ALLOC &elif_node_blocks[elif_num], FALSE, info))
                {
                    return FALSE;
                }

                elif_num++;
                if(elif_num >= ELIF_NUM_MAX) {
                    parser_err_msg(info, "overflow elif num");
                    info->err_num++;
                    return FALSE;
                }
            }
            else {
                if(!parse_block_easy(ALLOC &else_node_block, FALSE, info))
                {
                    return FALSE;
                }
                break;
            }
        }
        else {
            info->p = saved_p;
            info->sline = saved_sline;
            break;
        }
    }

    *node = sNodeTree_if_expression(expression_node, MANAGED if_node_block, elif_expression_nodes, elif_node_blocks, elif_num, MANAGED else_node_block, info, sname, sline);

    return TRUE;
}


static BOOL parse_while(unsigned int* node, sParserInfo* info)
{
    expect_next_character_with_one_forward("(", info);

    /// expression ///
    unsigned int expression_node = 0;
    if(!expression(&expression_node, info)) {
        return FALSE;
    }

    if(expression_node == 0) {
        parser_err_msg(info, "require expression for while");
        info->err_num++;
        return TRUE;
    }

    expect_next_character_with_one_forward(")", info);

    sNodeBlock* while_node_block = NULL;
    if(!parse_block_easy(ALLOC &while_node_block, FALSE, info))
    {
        return FALSE;
    }


    *node = sNodeTree_while_expression(expression_node, MANAGED while_node_block, info);

    return TRUE;
}

static BOOL parse_do(unsigned int* node, sParserInfo* info)
{
    sNodeBlock* while_node_block = NULL;
    if(!parse_block_easy(ALLOC &while_node_block, FALSE, info))
    {
        return FALSE;
    }
    
    char buf[VAR_NAME_MAX];
    if(!parse_word(buf, VAR_NAME_MAX, info, TRUE, FALSE)) {
        return FALSE;
    }

    if(strcmp(buf, "while") != 0) {
        parser_err_msg(info, "require while word");
        info->err_num++;
        return TRUE;
    }

    expect_next_character_with_one_forward("(", info);

    /// expression ///
    unsigned int expression_node = 0;
    if(!expression(&expression_node, info)) {
        return FALSE;
    }

    if(expression_node == 0) {
        parser_err_msg(info, "require expression for do while");
        info->err_num++;
        return TRUE;
    }

    expect_next_character_with_one_forward(")", info);

    *node = sNodeTree_do_while_expression(expression_node, MANAGED while_node_block, info);

    return TRUE;
}

static BOOL parse_for(unsigned int* node, sParserInfo* info)
{
    sVarTable* old_vtable = info->lv_table;
    info->lv_table = init_block_vtable(old_vtable, FALSE);
    
    expect_next_character_with_one_forward("(", info);

    /// expression1 ///
    unsigned int expression_node = 0;
    if(!expression(&expression_node, info)) {
        return FALSE;
    }

    if(expression_node == 0) {
        parser_err_msg(info, "require expression for \"for\"");
        info->err_num++;
        return TRUE;
    }

    if(*info->p == ';') {
        expect_next_character_with_one_forward(";", info);
    }
    else {
        *node = expression_node;
        return TRUE;
    }

    /// expression2 ///
    unsigned int expression_node2 = 0;
    if(!expression(&expression_node2, info)) {
        return FALSE;
    }

    if(expression_node2 == 0) {
        parser_err_msg(info, "require expression2 for \"for\"");
        info->err_num++;
        return TRUE;
    }

    if(*info->p == ';') {
        expect_next_character_with_one_forward(";", info);
    }
    else {
        *node = expression_node2;
        return TRUE;
    }

    /// expression3 ///
    unsigned int expression_node3 = 0;
    if(!expression(&expression_node3, info)) {
        return FALSE;
    }

    if(expression_node3 == 0) {
        parser_err_msg(info, "require expression3 for \"for\"");
        info->err_num++;
        return TRUE;
    }

    if(*info->p == ')') {
        expect_next_character_with_one_forward(")", info);
    }
    else {
        *node = expression_node3;
        return TRUE;
    }

    expect_next_character_with_one_forward("{", info);

    sNodeBlock* for_node_block = ALLOC sNodeBlock_alloc();
    if(!parse_block(for_node_block, FALSE, info)) 
    {
        return FALSE;
    }

    expect_next_character_with_one_forward("}", info);

    *node = sNodeTree_for_expression(expression_node, expression_node2, expression_node3, MANAGED for_node_block, info);

    info->lv_table = old_vtable;

    return TRUE;
}

static BOOL parse_lambda(unsigned int* node, sParserInfo* info)
{
    expect_next_character_with_one_forward("(", info);

    /// params ///
    sParserParam params[PARAMS_MAX];
    memset(params, 0, sizeof(sParserParam)*PARAMS_MAX);
    int num_params = 0;

    /// parse_params ///
    BOOL var_arg = FALSE;
    if(!parse_params(params, &num_params, info, 0, &var_arg))
    {
        return FALSE;
    }

    sNodeType* result_type = NULL;
    if(*info->p == ':') {
        info->p++;
        skip_spaces_and_lf(info);

        if(!parse_type(&result_type, info)) {
            return FALSE;
        }
    }
    else {
        result_type = create_node_type_with_class_name("void");
    }

    sNodeBlock* node_block = ALLOC sNodeBlock_alloc();
    expect_next_character_with_one_forward("{", info);
    sVarTable* old_table = info->lv_table;

    info->lv_table = init_block_vtable(old_table, FALSE);
    sVarTable* block_var_table = info->lv_table;

    int i;
    for(i=0; i<num_params; i++) {
        sParserParam* param = params + i;

        BOOL readonly = TRUE;
        if(!add_variable_to_table(info->lv_table, param->mName, param->mType, readonly, NULL, -1, FALSE, param->mType->mConstant))
        {
            return FALSE;
        }
    }

    if(!parse_block(node_block, FALSE, info)) {
        sNodeBlock_free(node_block);
        return FALSE;
    }

    expect_next_character_with_one_forward("}", info);
    info->lv_table = old_table;

    char fun_name[VAR_NAME_MAX];
    create_lambda_name(fun_name, VAR_NAME_MAX, info->module_name);

    BOOL lambda = TRUE;
    BOOL simple_lambda_param = FALSE;
    BOOL construct_fun = FALSE;
    BOOL operator_fun = FALSE;

    *node = sNodeTree_create_function(fun_name, params, num_params, result_type, MANAGED node_block, lambda, block_var_table, NULL, operator_fun, construct_fun, simple_lambda_param, info, FALSE, FALSE, 0);

    return TRUE;
}

static BOOL parse_new(unsigned int* node, sParserInfo* info)
{
    sNodeType* node_type = NULL;

    if(!parse_type(&node_type, info)) {
        return FALSE;
    }

    sCLClass* klass = node_type->mClass;

    if(klass) {
        unsigned int object_num = 0;

        if(*info->p == '{') {
            info->p++;
            skip_spaces_and_lf(info);

            unsigned int initialize_array_values[INIT_ARRAY_MAX];
            int num_initialize_array_value = 0;
            memset(initialize_array_values, 0, sizeof(unsigned int)*INIT_ARRAY_MAX);

            while(TRUE) {
                unsigned int right_node = 0;

                if(!expression(&right_node, info)) {
                    return FALSE;
                }

                if(right_node == 0) {
                    parser_err_msg(info, "Require right value for {}");
                    info->err_num++;

                    *node = 0;
                }
                else {
                    initialize_array_values[num_initialize_array_value++] = right_node;
                }

                if(*info->p == ',') {
                    info->p++;
                    skip_spaces_and_lf(info);
                }
                else if(*info->p == '\0') {
                    parser_err_msg(info, "In the array initialization, the parser has arraived at the source end");
                    return FALSE;
                }
                else if(*info->p == '}') {
                    info->p++;
                    skip_spaces_and_lf(info);
                    break;
                }
            }

            if(object_num > 0) {
                *node = sNodeTree_create_object(node_type, object_num, info->sname, info->sline, info);

                *node = sNodeTree_create_array_with_initialization("", num_initialize_array_value, initialize_array_values, *node, info);
            }
            else {
                *node = sNodeTree_create_object(node_type, object_num, info->sname, info->sline, info);

                *node = sNodeTree_create_struct_with_initialization("", num_initialize_array_value, initialize_array_values, *node, info);
            }
        }
        else {
            *node = sNodeTree_create_object(node_type, object_num, info->sname, info->sline, info);
        }
    }
    else {
        parser_err_msg(info, "Invalid type name");
        info->err_num++;
    }

    return TRUE;
}

static BOOL parse_alloca(unsigned int* node, sParserInfo* info)
{
    sNodeType* node_type = NULL;

    if(!parse_type(&node_type, info)) {
        return FALSE;
    }

    sCLClass* klass = node_type->mClass;

    if(klass) {
        unsigned int object_num = 0;

        *node = sNodeTree_create_stack_object(node_type, object_num, info->sname, info->sline, info);
    }
    else {
        parser_err_msg(info, "Invalid type name");
        info->err_num++;
    }

    return TRUE;
}

static BOOL parse_sizeof(unsigned int* node, sParserInfo* info)
{
    expect_next_character_with_one_forward("(", info);

    sNodeType* node_type = NULL;

    if(!parse_type(&node_type, info)) 
    {
        return FALSE;
    }

    expect_next_character_with_one_forward(")", info);

    *node = sNodeTree_create_sizeof(node_type, info);

    return TRUE;
}

static BOOL parse_clone(unsigned int* node, sParserInfo* info)
{
    if(!expression(node, info)) {
        return FALSE;
    }

    if(*node == 0) {
        parser_err_msg(info, "Require expression for clone");
        info->err_num++;
        return TRUE;
    }

    *node = sNodeTree_create_clone(*node, info);

    return TRUE;
}

static BOOL parse_switch(unsigned int* node, sParserInfo* info)
{
    expect_next_character_with_one_forward("(", info);

    /// expression1 ///
    unsigned int expression_node = 0;
    if(!expression(&expression_node, info)) {
        return FALSE;
    }

    if(expression_node == 0) {
        parser_err_msg(info, "require expression for \"switch\"");
        info->err_num++;
        return TRUE;
    }

    expect_next_character_with_one_forward(")", info);
    expect_next_character_with_one_forward("{", info);

    int size_switch_expression = 16;
    int num_switch_expression = 0;
    unsigned int* switch_expression = (unsigned int*)xcalloc(1, sizeof(unsigned int)*size_switch_expression);
    info->switch_nest++;

    info->first_case = TRUE;

    while(1) {
        if(*info->p == '}') {
            info->p++;
            skip_spaces_and_lf(info);
            info->switch_nest--;
            break;
        }
        else {
            if(!expression(switch_expression + num_switch_expression, info)) 
            {
                return FALSE;
            }

            unsigned int node = switch_expression[num_switch_expression];

            if(gNodes[node].mNodeType == kNodeTypeCase) {
                gNodes[node].uValue.sCase.mFirstCase = info->first_case;
                info->first_case = FALSE;
            }
            else {
                info->first_case = TRUE;
            }

            num_switch_expression++;

            if(num_switch_expression >= size_switch_expression) 
            {
                size_switch_expression *= 2;
                switch_expression = xrealloc(switch_expression, sizeof(unsigned int)*size_switch_expression);
            }

            if(*info->p == ';') {
                info->p++;
                skip_spaces_and_lf(info);
            }
        }
    }

    *node = sNodeTree_switch_expression(expression_node, num_switch_expression, MANAGED switch_expression, info);

    return TRUE;
}

static BOOL parse_case(unsigned int* node, sParserInfo* info)
{
    /// expression1 ///
    unsigned int expression_node = 0;
    if(!expression(&expression_node, info)) {
        return FALSE;
    }

    if(expression_node == 0) {
        parser_err_msg(info, "require expression for \"case\"");
        info->err_num++;
        return TRUE;
    }

    expect_next_character_with_one_forward(":", info);

    char* p_before = info->p;
    int sline_before = info->sline;

    char buf[VAR_NAME_MAX+1];
    if(!parse_word(buf, VAR_NAME_MAX, info, TRUE, FALSE))
    {
        return FALSE;
    }

    BOOL last_case = strcmp(buf, "case") != 0;

    info->p = p_before;
    info->sline = sline_before;

    *node = sNodeTree_case_expression(expression_node, last_case, info);

    return TRUE;
}

static BOOL parse_default(unsigned int* node, sParserInfo* info)
{
    expect_next_character_with_one_forward(":", info);

    char* p_before = info->p;
    int sline_before = info->sline;

    char buf[VAR_NAME_MAX+1];
    if(!parse_word(buf, VAR_NAME_MAX, info, TRUE, FALSE))
    {
        return FALSE;
    }

    BOOL last_case = strcmp(buf, "case") != 0;

    info->p = p_before;
    info->sline = sline_before;

    *node = sNodeTree_case_expression(0, last_case, info);

    return TRUE;
}

static BOOL parse_label(unsigned int* node, char* name, sParserInfo* info)
{
    expect_next_character_with_one_forward(":", info);

    *node = sNodeTree_label_expression(name, info);

    return TRUE;
}

static BOOL parse_goto(unsigned int* node, sParserInfo* info)
{
    char buf[VAR_NAME_MAX+1];
    if(!parse_word(buf, VAR_NAME_MAX, info, TRUE, FALSE))
    {
        return FALSE;
    }

    *node = sNodeTree_goto_expression(buf, info);

    return TRUE;
}

static BOOL parse_impl(unsigned int* node, sParserInfo* info)
{
    char* impl_head = info->p;

    char sname[PATH_MAX];
    xstrncpy(sname, info->sname, PATH_MAX);
    int sline = info->sline;

    char struct_name[VAR_NAME_MAX];

    char buf[VAR_NAME_MAX];
    if(!parse_word(buf, VAR_NAME_MAX, info, TRUE, FALSE)) {
        return FALSE;
    }

    xstrncpy(struct_name, buf, VAR_NAME_MAX);

    info->mNumGenerics = 0;

    if(*info->p == '<') {
        info->p++;
        skip_spaces_and_lf(info);

        int num_generics = 0;

        while(TRUE) {
            char buf[VAR_NAME_MAX];
            if(!parse_word(buf, VAR_NAME_MAX, info, TRUE, FALSE)) {
                return FALSE;
            }

            xstrncpy(info->mGenericsTypeNames[num_generics], buf, VAR_NAME_MAX);

            num_generics++;

            if(num_generics >= GENERICS_TYPES_MAX)
            {
                parser_err_msg(info, "overflow generics types");
                return FALSE;
            }

            if(*info->p == ',') {
                info->p++;
                skip_spaces_and_lf(info);
            }
            else if(*info->p == '>') {
                info->p++;
                skip_spaces_and_lf(info);
                break;
            }
            else {
                parser_err_msg(info, "require , or > character");
                info->err_num++;
                break;
            }
        }

        info->mNumGenerics = num_generics;
    }

    int version = 0;
    parse_version(&version, info);
    skip_spaces_and_lf(info);

    info->mImplVersion = version;

    expect_next_character_with_one_forward("{", info);

    if(info->automatically_header) 
    {
        if(info->parse_struct_phase) 
        {
            sBuf buf;
            sBuf_init(&buf);

            int source_size = info->p - impl_head;

            sBuf_append_str(&buf, "impl ");
            sBuf_append(&buf, impl_head, source_size);

            if(!write_to_automatically_header(&buf))
            {
                return FALSE;
            }

            free(buf.mBuf);
        }
    }


    unsigned int nodes[IMPL_DEF_MAX];
    memset(nodes, 0, sizeof(unsigned int)*IMPL_DEF_MAX);
    int num_nodes = 0;

    while(TRUE) {
        if(*info->p == '}') {
            info->p++;
            skip_spaces_and_lf(info);
            break;
        }

        char buf[VAR_NAME_MAX+1];
        if(!parse_word(buf, VAR_NAME_MAX, info, TRUE, FALSE))
        {
            return FALSE;
        }

        info->sline_top = info->sline;

        if(strcmp(buf, "initialize") == 0) {
            if(!parse_constructor(node, struct_name, info)) {
                return FALSE;
            }

            nodes[num_nodes++] = *node;

            if(num_nodes >= IMPL_DEF_MAX) {
                fprintf(stderr, "overflow impl function max");
                return FALSE;
            }
        }
        else if(strcmp(buf, "finalize") == 0) {
            if(!parse_destructor(node, struct_name, info)) {
                return FALSE;
            }

            nodes[num_nodes++] = *node;

            if(num_nodes >= IMPL_DEF_MAX) {
                fprintf(stderr, "overflow impl function max");
                return FALSE;
            }
        }
        else if(strcmp(buf, "def") == 0) {
            if(*info->p == '<') {
                if(!parse_method_generics_function(node, struct_name, info)) {
                    return FALSE;
                }
            }
            else if(info->mNumGenerics > 0) {
                if(!parse_generics_function(node, struct_name, info)) {
                    return FALSE;
                }
            }
            else {
                if(!parse_function(node, struct_name, info)) {
                    return FALSE;
                }
            }

            nodes[num_nodes++] = *node;

            if(num_nodes >= IMPL_DEF_MAX) {
                fprintf(stderr, "overflow impl function max");
                return FALSE;
            }
        }
        else {
            parser_err_msg(info, "require type name. this is %s", buf);

            info->err_num++;
            break;
        }
    }

    if(*info->p == ';') {
        info->p++;
        skip_spaces_and_lf(info);
    }

    *node = sNodeTree_create_impl(nodes, num_nodes, info);

    if(info->automatically_header)
    {
        if(info->parse_struct_phase) {
            sBuf buf2;
            sBuf_init(&buf2);

            sBuf_append_str(&buf2, "\n}\n");

            if(!write_to_automatically_header(&buf2))
            {
                return FALSE;
            }

            free(buf2.mBuf);
        }
    }

    info->mNumGenerics = 0;

    return TRUE;
}

static BOOL postposition_operator(unsigned int* node, sParserInfo* info)
{
    if(*node == 0) {
        return TRUE;
    }

    while(*info->p) {
        /// call method or access field ///
        if(*info->p == '.' || (*info->p == '-' && *(info->p+1) == '>'))
        {
            if(*info->p == '-') {
                info->p+=2;
                skip_spaces_and_lf(info);
            }
            else {
                info->p++;
                skip_spaces_and_lf(info);
            }

            if(isalpha(*info->p) || *info->p == '_') 
            {
                char buf[VAR_NAME_MAX];

                if(!parse_word(buf, VAR_NAME_MAX, info, TRUE, FALSE)) {
                    return FALSE;
                }
                skip_spaces_and_lf(info);

                /// call methods ///
                if(*info->p == '(' || *info->p == '{') 
                {
                    char* fun_name = buf;

                    unsigned int params[PARAMS_MAX];
                    int num_params = 0;

                    params[0] = *node;
                    num_params++;

                    if(!parse_funcation_call_params(&num_params, params, info)) 
                    {
                        return FALSE;
                    }

                    *node = sNodeTree_create_function_call(fun_name, params, num_params, TRUE, FALSE, info->mFunVersion, info);
                }
                /// access fields ///
                else {
                    if(*info->p == '=' && *(info->p +1) != '=') {
                        info->p++;
                        skip_spaces_and_lf(info);

                        char var_name[VAR_NAME_MAX];
                        xstrncpy(var_name, buf, VAR_NAME_MAX);

                        unsigned int right_node = 0;

                        if(!expression(&right_node, info)) {
                            return FALSE;
                        }

                        if(right_node == 0) {
                            parser_err_msg(info, "Require right value");
                            info->err_num++;

                            *node = 0;
                        }
                        else {
                            *node = sNodeTree_create_store_field(var_name, *node, right_node, info);
                        }
                    }
                    else {
                        unsigned int obj_node = *node;

                        if(*info->p == '+' && *(info->p+1) == '+')
                        {
                            info->p+=2;
                            skip_spaces_and_lf(info);

                            char var_name[VAR_NAME_MAX];
                            xstrncpy(var_name, buf, VAR_NAME_MAX);

                            *node = sNodeTree_create_load_field(buf, obj_node, info);

                            unsigned int field_node = *node;
                            unsigned int right_node = sNodeTree_create_int_value(1, info);

                            *node = sNodeTree_create_add(field_node, right_node, 0, info);
                            *node = sNodeTree_create_store_field(var_name, obj_node, *node, info);
                            *node = sNodeTree_create_sub(*node, right_node, 0, info);
                        }
                        else if(*info->p == '-' && *(info->p+1) == '-')
                        {
                            info->p+=2;
                            skip_spaces_and_lf(info);

                            char var_name[VAR_NAME_MAX];
                            xstrncpy(var_name, buf, VAR_NAME_MAX);

                            *node = sNodeTree_create_load_field(buf, obj_node, info);

                            unsigned int field_node = *node;
                            unsigned int right_node = sNodeTree_create_int_value(1, info);

                            *node = sNodeTree_create_sub(field_node, right_node, 0, info);
                            *node = sNodeTree_create_store_field(var_name, obj_node, *node, info);
                            *node = sNodeTree_create_add(*node, right_node, 0, info);
                        }
                        else if(*info->p == '+' && *(info->p+1) == '=')
                        {
                            info->p+=2;
                            skip_spaces_and_lf(info);
                            unsigned int right_node = 0;
                            if(!expression(&right_node, info)) {
                                return FALSE;
                            }

                            char var_name[VAR_NAME_MAX];
                            xstrncpy(var_name, buf, VAR_NAME_MAX);

                            *node = sNodeTree_create_load_field(buf, obj_node, info);

                            unsigned int field_node = *node;

                            *node = sNodeTree_create_add(field_node, right_node, 0, info);
                            *node = sNodeTree_create_store_field(var_name, obj_node, *node, info);
                            *node = sNodeTree_create_sub(*node, right_node, 0, info);
                        }
                        else if(*info->p == '-' && *(info->p+1) == '=')
                        {
                            info->p+=2;
                            skip_spaces_and_lf(info);
                            unsigned int right_node = 0;
                            if(!expression(&right_node, info)) {
                                return FALSE;
                            }

                            char var_name[VAR_NAME_MAX];
                            xstrncpy(var_name, buf, VAR_NAME_MAX);

                            *node = sNodeTree_create_load_field(buf, obj_node, info);

                            unsigned int field_node = *node;

                            *node = sNodeTree_create_sub(field_node, right_node, 0, info);
                            *node = sNodeTree_create_store_field(var_name, obj_node, *node, info);
                            *node = sNodeTree_create_add(*node, right_node, 0, info);
                        }
                        else if(*info->p == '*' && *(info->p+1) == '=')
                        {
                            info->p+=2;
                            skip_spaces_and_lf(info);
                            unsigned int right_node = 0;
                            if(!expression(&right_node, info)) {
                                return FALSE;
                            }

                            char var_name[VAR_NAME_MAX];
                            xstrncpy(var_name, buf, VAR_NAME_MAX);

                            *node = sNodeTree_create_load_field(buf, obj_node, info);

                            unsigned int field_node = *node;

                            *node = sNodeTree_create_mult(field_node, right_node, 0, info);
                            *node = sNodeTree_create_store_field(var_name, obj_node, *node, info);
                        }
                        else if(*info->p == '/' && *(info->p+1) == '=')
                        {
                            info->p+=2;
                            skip_spaces_and_lf(info);
                            unsigned int right_node = 0;
                            if(!expression(&right_node, info)) {
                                return FALSE;
                            }

                            char var_name[VAR_NAME_MAX];
                            xstrncpy(var_name, buf, VAR_NAME_MAX);

                            *node = sNodeTree_create_load_field(buf, obj_node, info);

                            unsigned int field_node = *node;

                            *node = sNodeTree_create_div(field_node, right_node, 0, info);
                            *node = sNodeTree_create_store_field(var_name, obj_node, *node, info);
                        }
                        else if(*info->p == '%' && *(info->p+1) == '=')
                        {
                            info->p+=2;
                            skip_spaces_and_lf(info);
                            unsigned int right_node = 0;
                            if(!expression(&right_node, info)) {
                                return FALSE;
                            }

                            char var_name[VAR_NAME_MAX];
                            xstrncpy(var_name, buf, VAR_NAME_MAX);

                            *node = sNodeTree_create_load_field(buf, obj_node, info);

                            unsigned int field_node = *node;

                            *node = sNodeTree_create_mod(field_node, right_node, 0, info);
                            *node = sNodeTree_create_store_field(var_name, obj_node, *node, info);
                        }
                        else if(*info->p == '<' && *(info->p+1) == '<' && *(info->p+2) == '=')
                        {
                            info->p+=2;
                            skip_spaces_and_lf(info);
                            unsigned int right_node = 0;
                            if(!expression(&right_node, info)) {
                                return FALSE;
                            }

                            char var_name[VAR_NAME_MAX];
                            xstrncpy(var_name, buf, VAR_NAME_MAX);

                            *node = sNodeTree_create_load_field(buf, obj_node, info);

                            unsigned int field_node = *node;

                            *node = sNodeTree_create_left_shift(field_node, right_node, 0, info);
                            *node = sNodeTree_create_store_field(var_name, obj_node, *node, info);
                        }
                        else if(*info->p == '>' && *(info->p+1) == '>' && *(info->p+2) == '=')
                        {
                            info->p+=2;
                            skip_spaces_and_lf(info);
                            unsigned int right_node = 0;
                            if(!expression(&right_node, info)) {
                                return FALSE;
                            }

                            char var_name[VAR_NAME_MAX];
                            xstrncpy(var_name, buf, VAR_NAME_MAX);

                            *node = sNodeTree_create_load_field(buf, obj_node, info);

                            unsigned int field_node = *node;

                            *node = sNodeTree_create_right_shift(field_node, right_node, 0, info);
                            *node = sNodeTree_create_store_field(var_name, obj_node, *node, info);
                        }
                        else if(*info->p == '&' && *(info->p+1) == '=')
                        {
                            info->p+=2;
                            skip_spaces_and_lf(info);
                            unsigned int right_node = 0;
                            if(!expression(&right_node, info)) {
                                return FALSE;
                            }

                            char var_name[VAR_NAME_MAX];
                            xstrncpy(var_name, buf, VAR_NAME_MAX);

                            *node = sNodeTree_create_load_field(buf, obj_node, info);

                            unsigned int field_node = *node;

                            *node = sNodeTree_create_and(field_node, right_node, 0, info);
                            *node = sNodeTree_create_store_field(var_name, obj_node, *node, info);
                        }
                        else if(*info->p == '^' && *(info->p+1) == '=')
                        {
                            info->p+=2;
                            skip_spaces_and_lf(info);
                            unsigned int right_node = 0;
                            if(!expression(&right_node, info)) {
                                return FALSE;
                            }

                            char var_name[VAR_NAME_MAX];
                            xstrncpy(var_name, buf, VAR_NAME_MAX);

                            *node = sNodeTree_create_load_field(buf, obj_node, info);

                            unsigned int field_node = *node;

                            *node = sNodeTree_create_xor(field_node, right_node, 0, info);
                            *node = sNodeTree_create_store_field(var_name, obj_node, *node, info);
                        }
                        else if(*info->p == '|' && *(info->p+1) == '=')
                        {
                            info->p+=2;
                            skip_spaces_and_lf(info);
                            unsigned int right_node = 0;
                            if(!expression(&right_node, info)) {
                                return FALSE;
                            }

                            char var_name[VAR_NAME_MAX];
                            xstrncpy(var_name, buf, VAR_NAME_MAX);

                            *node = sNodeTree_create_load_field(buf, obj_node, info);

                            unsigned int field_node = *node;

                            *node = sNodeTree_create_or(field_node, right_node, 0, info);
                            *node = sNodeTree_create_store_field(var_name, obj_node, *node, info);
                        }
                        else if(*info->p == '-' && *(info->p+1) == '>' && *(info->p+2) == '(')
                        {
                            info->p+=2;

                            unsigned int params[PARAMS_MAX];
                            int num_params = 0;

                            if(!parse_funcation_call_params(&num_params, params, info)) 
                            {
                                return FALSE;
                            }

                            *node = sNodeTree_create_load_field(buf, obj_node, info);

                            *node = sNodeTree_create_lambda_call(*node, params, num_params, info);

                        }
                        else {
                            *node = sNodeTree_create_load_field(buf, obj_node, info);
                        }
                    }
                }
            }
            else {
                parser_err_msg(info, "require method name or field name after .");
                info->err_num++;
                *node = 0;
                break;
            }
        }
        /// access element ///
        else if(*info->p == '[') {
            info->p++;
            skip_spaces_and_lf(info);

            unsigned int index_node = 0;

            if(!expression(&index_node, info)) {
                return FALSE;
            }

            if(index_node == 0) {
                parser_err_msg(info, "Require index value");
                info->err_num++;

                *node = 0;
            }
            else {
                expect_next_character_with_one_forward("]", info);

                if(*info->p == '=' && *(info->p+1) != '=') {
                    info->p++;
                    skip_spaces_and_lf(info);

                    unsigned int right_node = 0;

                    if(!expression(&right_node, info)) {
                        return FALSE;
                    }

                    if(right_node == 0) {
                        parser_err_msg(info, "Require right value");
                        info->err_num++;

                        *node = 0;
                    }
                    else {
                        *node = sNodeTree_create_store_element(*node, index_node, right_node, info);
                    }
                }
                else {
                    *node = sNodeTree_create_load_array_element(*node, index_node, info);
                }
            }
        }
        else {
            break;
        }
    }

    return TRUE;
}

static BOOL parse_inherit(unsigned int* node, sParserInfo* info) 
{
    if(*info->p == '(') {
        char fun_name[VAR_NAME_MAX];

        xstrncpy(fun_name, info->fun_name, VAR_NAME_MAX);

        unsigned int params[PARAMS_MAX];
        int num_params = 0;

        if(!parse_funcation_call_params(&num_params, params, info)) 
        {
            return FALSE;
        }

        if(strcmp(fun_name, "va_start") == 0) {
            num_params = 1;
        }

        *node = sNodeTree_create_function_call(fun_name, params, num_params, TRUE, TRUE, info->mFunVersion, info);
    }

    return TRUE;
}

static BOOL skip_paren(char head_char, char tail_char, sParserInfo* info)
{
    if(*info->p == head_char) {
        info->p++;

        BOOL dquort = FALSE;
        BOOL squort = FALSE;
        int sline = 0;
        int nest = 0;
        while(1) {
            if(dquort) {
                if(*info->p == '\\') {
                    info->p++;
                    if(*info->p == '\0') {
                        fprintf(stderr, "%s %d: unexpected the source end. close single quote or double quote.", info->sname, sline);
                        return FALSE;
                    }
                    info->p++;
                }
                else if(*info->p == '"') {
                    info->p++;
                    dquort = !dquort;
                }
                else {
                    info->p++;

                    if(*info->p == '\0') {
                        fprintf(stderr, "%s %d: unexpected the source end. close single quote or double quote.", info->sname, sline);
                        return FALSE;
                    }
                }
            }
            else if(squort) {
                if(*info->p == '\\') {
                    info->p++;
                    if(*info->p == '\0') {
                        fprintf(stderr, "%s %d: unexpected the source end. close single quote or double quote.", info->sname, sline);
                        return FALSE;
                    }
                    info->p++;
                }
                else if(*info->p == '\'') {
                    info->p++;
                    squort = !squort;
                }
                else {
                    info->p++;

                    if(*info->p == '\0') {
                        fprintf(stderr, "%s %d: unexpected the source end. close single quote or double quote.", info->sname, sline);
                        return FALSE;
                    }
                }
            }
            else if(*info->p == '\'') {
                sline = info->sline;
                info->p++;
                squort = !squort;
            }
            else if(*info->p == '"') {
                sline = info->sline;
                info->p++;
                dquort = !dquort;
            }
            else if(*info->p == head_char) {
                info->p++;

                nest++;
            }
            else if(*info->p == tail_char) {
                info->p++;

                if(nest == 0) {
                    skip_spaces_and_lf(info);
                    break;
                }

                nest--;
            }
            else if(*info->p == '\0') {
                parser_err_msg(info, "The block requires %c character for closing block", tail_char);
                info->err_num++;
                return TRUE;
            }
            else if(*info->p == '\n') {
                info->p++;
                info->sline++;
            }
            else {
                info->p++;
            }
        }
    }

    return TRUE;
}

BOOL parse_macro(unsigned int* node, sParserInfo* info)
{
    char buf[VAR_NAME_MAX+1];
    if(!parse_word(buf, VAR_NAME_MAX, info, TRUE, FALSE))
    {
        return FALSE;
    }

    char* p = info->p + 1;

    if(!skip_block(info)) {
        return FALSE;
    }

    sBuf body;
    sBuf_init(&body);

    sBuf_append(&body, p, info->p-p-3);

    if(info->parse_struct_phase) {
        append_macro(buf, body.mBuf);
    }

    free(body.mBuf);

    *node = sNodeTree_create_null(info);

    skip_spaces_and_lf(info);

    return TRUE;
}

BOOL parse_ruby_macro(unsigned int* node, sParserInfo* info, BOOL really_appended)
{
    char buf[VAR_NAME_MAX+1];
    if(!parse_word(buf, VAR_NAME_MAX, info, TRUE, FALSE))
    {
        return FALSE;
    }

    char* p = info->p + 1;

    if(!skip_block(info)) {
        return FALSE;
    }

    sBuf body;
    sBuf_init(&body);

    sBuf_append_str(&body, "ruby <<'NEOCRUBYMACO'\n");
    sBuf_append(&body, p, info->p-p-4);

    sBuf_append_str(&body, "\nNEOCRUBYMACO\n");

    if(really_appended) {
        append_macro(buf, body.mBuf);
    }

    free(body.mBuf);

    *node = sNodeTree_create_null(info);

    skip_spaces_and_lf(info);

    return TRUE;
}

BOOL parse_call_macro(unsigned int* node, char* name, sParserInfo* info)
{
    char name2[VAR_NAME_MAX];
    xstrncpy(name2, name, VAR_NAME_MAX);

    char* p = info->p + 1;

    if(*info->p == '(') {
        if(!skip_paren('(', ')', info)) {
            return FALSE;
        }
    }
    else if(*info->p == '{') {
        if(!skip_paren('{', '}', info)) {
            return FALSE;
        }
    }
    else if(*info->p == '[') {
        if(!skip_paren('[', ']', info)) {
            return FALSE;
        }
    }
    else if(*info->p == '<') {
        if(!skip_paren('<', '>', info)) {
            return FALSE;
        }
    }
    else {
        parser_err_msg(info, "Require (,{,[ or <");
        info->err_num++;
        return TRUE;
    }

    sBuf params;
    sBuf_init(&params);

    sBuf_append(&params, p, info->p-p-1);

    skip_spaces_and_lf(info);

    if(!call_macro(node, name2, params.mBuf, info)) {
        return FALSE;
    }

    free(params.mBuf);

    return TRUE;
}

static BOOL parse_is_heap(unsigned int* node, sParserInfo* info)
{
    expect_next_character_with_one_forward("(", info);

    char* p_before = info->p;
    int sline_before = info->sline;

    char buf[VAR_NAME_MAX+1];
    (void)parse_word(buf, VAR_NAME_MAX, info, FALSE, FALSE);

    info->p = p_before;
    info->sline = sline_before;

    if(is_type_name(buf, info)) {
        sNodeType* node_type = NULL;

        if(!parse_type(&node_type, info)) {
            return FALSE;
        }

        expect_next_character_with_one_forward(")", info);

        *node = sNodeTree_create_is_heap(node_type, info);
    }
    else {
        if(!expression(node, info)) {
            return FALSE;
        }

        expect_next_character_with_one_forward(")", info);

        *node = sNodeTree_create_is_heap_expression(*node, info);
    }

    return TRUE;
}

static BOOL parse_is_managed(unsigned int* node, sParserInfo* info)
{
    expect_next_character_with_one_forward("(", info);

    char* p_before = info->p;
    int sline_before = info->sline;

    char buf[VAR_NAME_MAX+1];
    (void)parse_word(buf, VAR_NAME_MAX, info, FALSE, FALSE);

    info->p = p_before;
    info->sline = sline_before;

    if(is_type_name(buf, info)) {
        sNodeType* node_type = NULL;

        if(!parse_type(&node_type, info)) {
            return FALSE;
        }

        expect_next_character_with_one_forward(")", info);

        *node = sNodeTree_create_is_managed(node_type, info);
    }
    else {
        if(!expression(node, info)) {
            return FALSE;
        }

        expect_next_character_with_one_forward(")", info);

        *node = sNodeTree_create_is_managed_expression(*node, info);
    }

    return TRUE;
}

static BOOL expression_node(unsigned int* node, sParserInfo* info)
{
    if(*info->p == '#') {
        if(!parse_sharp(info)) {
            return FALSE;
        }

        if(!expression(node, info)) {
            return FALSE;
        }
    }
    else if(*info->p == '(') {
        info->p++;
        skip_spaces_and_lf(info);

        char* p_before = info->p;
        int sline_before = info->sline;

        char buf[VAR_NAME_MAX+1];
        if(!parse_word(buf, VAR_NAME_MAX, info, FALSE, FALSE))
        {
            return FALSE;
        }

        if(is_type_name(buf, info)) {
            sNodeType* node_type = NULL;
            if(!parse_type(&node_type, info))
            {
                return FALSE;
            }

            expect_next_character_with_one_forward(")", info);

            if(!expression_node(node, info)) {
                return FALSE;
            }

            if(*node == 0) {
                parser_err_msg(info, "require value for cast");
                info->err_num++;
            }

            *node = sNodeTree_create_cast(node_type, *node, info);
        }
        else {
            if(!expression(node, info)) {
                return FALSE;
            }
            skip_spaces_and_lf(info);

            if(*node == 0) {
                parser_err_msg(info, "require expression as ( operand");
                info->err_num++;
            }

            expect_next_character_with_one_forward(")", info);
        }
    }
    else if(*info->p == '{') {
        sNodeBlock* node_block = NULL;
        if(!parse_block_easy(ALLOC &node_block, FALSE, info))
        {
            return FALSE;
        }

        *node = sNodeTree_create_normal_block(node_block, info);
    }
    else if(*info->p == '*') {
        info->p++;
        skip_spaces_and_lf(info);

        if(!expression_node(node, info)) {
            return FALSE;
        }

        if(*node == 0) {
            parser_err_msg(info, "require value for *");
            info->err_num++;
        }

        *node = sNodeTree_create_dereffernce(*node, info);
    }
    else if(*info->p == '&') {
        info->p++;
        skip_spaces_and_lf(info);

        if(!expression_node(node, info)) {
            return FALSE;
        }

        if(*node == 0) {
            parser_err_msg(info, "require value for &");
            info->err_num++;
        }

        *node = sNodeTree_create_reffernce(*node, info);
    }
    else if(*info->p == '!') {
        info->p++;
        skip_spaces_and_lf(info);

        if(!expression_node(node, info)) {
            return FALSE;
        }

        if(*node == 0) {
            parser_err_msg(info, "require value for !");
            info->err_num++;
        }

        *node = sNodeTree_create_logical_denial(*node, 0, 0, info);
    }
    else if(*info->p == '+' && *(info->p+1) == '+')
    {
        info->p+=2;
        skip_spaces_and_lf(info);

        unsigned int exp = 0;
        if(!expression_node(&exp, info)) {
            return FALSE;
        }

        if(gNodes[exp].mNodeType == kNodeTypeLoadVariable)
        {
            char var_name[VAR_NAME_MAX];

            xstrncpy(var_name, gNodes[exp].uValue.sLoadVariable.mVarName, VAR_NAME_MAX);;

            unsigned int left_node = sNodeTree_create_load_variable(var_name, info);

            unsigned int right_node = sNodeTree_create_int_value(1, info);

            *node = sNodeTree_create_add(left_node, right_node, 0, info);

            *node = sNodeTree_create_store_variable(var_name, *node, FALSE, info);
        }
        else if(gNodes[exp].mNodeType == kNodeTypeLoadField)
        {
            char var_name[VAR_NAME_MAX];
            xstrncpy(var_name, gNodes[exp].uValue.sLoadField.mVarName, VAR_NAME_MAX);

            unsigned int obj_node = gNodes[exp].mLeft;

            unsigned int right_node = sNodeTree_create_int_value(1, info);

            *node = sNodeTree_create_add(exp, right_node, 0, info);

            *node = sNodeTree_create_store_field(var_name, obj_node, *node, info);
        }
        else {
            parser_err_msg(info, "Invalid node for ++");
            info->err_num++;

            *node = 0;
            return TRUE;
        }
    }
    else if(*info->p == '-' && *(info->p+1) == '-')
    {
        info->p+=2;
        skip_spaces_and_lf(info);

        unsigned int exp = 0;
        if(!expression_node(&exp, info)) {
            return FALSE;
        }

        if(gNodes[exp].mNodeType == kNodeTypeLoadVariable)
        {
            char var_name[VAR_NAME_MAX];

            xstrncpy(var_name, gNodes[exp].uValue.sLoadVariable.mVarName, VAR_NAME_MAX);

            unsigned int left_node = sNodeTree_create_load_variable(var_name, info);
            unsigned int right_node = sNodeTree_create_int_value(1, info);

            *node = sNodeTree_create_sub(left_node, right_node, 0, info);

            *node = sNodeTree_create_store_variable(var_name, *node, FALSE, info);
        }
        else if(gNodes[exp].mNodeType == kNodeTypeLoadField)
        {
            char var_name[VAR_NAME_MAX];

            xstrncpy(var_name, gNodes[exp].uValue.sLoadField.mVarName, VAR_NAME_MAX);

            unsigned int obj_node = gNodes[exp].mLeft;

            unsigned int right_node = sNodeTree_create_int_value(1, info);

            *node = sNodeTree_create_sub(exp, right_node, 0, info);

            *node = sNodeTree_create_store_field(var_name, obj_node, *node, info);
        }
        else {
            parser_err_msg(info, "Invalid node for ++");
            info->err_num++;

            *node = 0;
            return TRUE;
        }
    }
    /// number ///
    else if((*info->p == '-' && *(info->p+1) != '=' && *(info->p+1) != '-' && *(info->p+1) != '>') || (*info->p == '+' && *(info->p+1) != '=' && *(info->p+1) != '+')) 
    {
        if(*info->p =='+') {
            info->p++;
            skip_spaces_and_lf(info);

            if(isdigit(*info->p)) {
                if(!get_number(FALSE, node, info)) {
                    return FALSE;
                }
            }
            else {
                if(!expression_node(node, info)) {
                    return FALSE;
                }

                if(*node == 0) {
                    parser_err_msg(info, "require right value for -");
                    info->err_num++;
                }
            }
        }
        else if(*info->p =='-') {
            info->p++;
            skip_spaces_and_lf(info);

            if(isdigit(*info->p)) {
                if(!get_number(TRUE, node, info)) {
                    return FALSE;
                }
            }
            else {
                if(!expression_node(node, info)) {
                    return FALSE;
                }

                if(*node == 0) {
                    parser_err_msg(info, "require right value for -");
                    info->err_num++;
                }
            }
        }
    }
    /// hex number ///
    else if(*info->p == '0' && *(info->p+1) == 'x') {
        info->p += 2;

        if(!get_hex_number(node, info)) {
            return FALSE;
        }
    }
    /// oct number ///
    else if(*info->p == '0' && isdigit(*(info->p+1))) {
        info->p++;

        if(!get_oct_number(node, info)) {
            return FALSE;
        }
    }
    else if(isdigit(*info->p)) {
        if(!get_number(FALSE, node, info)) {
            return FALSE;
        }
    }
    /// c string ///
    else if(*info->p == '"') 
    {
        info->p++;

        int sline = info->sline;

        sBuf value;
        sBuf_init(&value);

        while(1) {
            if(*info->p == '"') {
                info->p++;
                break;
            }
            else if(*info->p == '\\') {
                info->p++;
                switch(*info->p) {
                    case '0':
                        sBuf_append_char(&value, '\0');
                        info->p++;
                        break;

                    case 'n':
                        sBuf_append_char(&value, '\n');
                        info->p++;
                        break;

                    case 't':
                        sBuf_append_char(&value, '\t');
                        info->p++;
                        break;

                    case 'r':
                        sBuf_append_char(&value, '\r');
                        info->p++;
                        break;

                    case 'a':
                        sBuf_append_char(&value, '\a');
                        info->p++;
                        break;

                    case '\\':
                        sBuf_append_char(&value, '\\');
                        info->p++;
                        break;

                    default:
                        sBuf_append_char(&value, *info->p);
                        info->p++;
                        break;
                }
            }
            else if(*info->p == '\0') {
                parser_err_msg(info, "close \" to make c string value");
                return FALSE;
            }
            else {
                if(*info->p == '\n') info->sline++;

                sBuf_append_char(&value, *info->p);
                info->p++;
            }
        }

        skip_spaces_and_lf(info);

        *node = sNodeTree_create_c_string_value(MANAGED value.mBuf, value.mLen, sline, info);
    }
    /// chararacter ///
    else if(*info->p == '\'') {
        info->p++;

        char c;

        if(*info->p == '\\') {
            info->p++;

            switch(*info->p) {
                case 'n':
                    c = '\n';
                    info->p++;
                    break;

                case 't':
                    c = '\t';
                    info->p++;
                    break;

                case 'r':
                    c = '\r';
                    info->p++;
                    break;

                case 'a':
                    c = '\a';
                    info->p++;
                    break;

                case '\\':
                    c = '\\';
                    info->p++;
                    break;

                case '0':
                    c = '\0';
                    info->p++;
                    break;

                default:
                    c = *info->p;
                    info->p++;
                    break;
            }
        }
        else {
            c = *info->p;
            info->p++;
        }

        if(*info->p != '\'') {
            parser_err_msg(info, "close \' to make character value");
            info->err_num++;
        }
        else {
            info->p++;

            skip_spaces_and_lf(info);

            *node = sNodeTree_create_character_value(c, info);
        }
    }
    else if(isalpha(*info->p) || *info->p == '_') {
        char buf[VAR_NAME_MAX+1];
        if(!parse_word(buf, VAR_NAME_MAX, info, TRUE, FALSE))
        {
            return FALSE;
        }

        if(strcmp(buf, "lambda") == 0) {
            if(!parse_lambda(node, info)) {
                return FALSE;
            }
        }
        else if(strcmp(buf, "return") == 0) {
            if(!parse_return(node, info)) {
                return FALSE;
            }
        }
        else if(strcmp(buf, "var") == 0) {
            if(!parse_var(node, info, FALSE)) {
                return FALSE;
            }
        }
        else if(strcmp(buf, "struct") == 0) 
        {
            if(!parse_struct(node, info))
            {
                return FALSE;
            }
        }
        else if(strcmp(buf, "enum") == 0)
        {
            if(!parse_enum(node, info)) {
                return FALSE;
            }
        }
        else if(strcmp(buf, "val") == 0) {
            if(!parse_var(node, info, TRUE)) {
                return FALSE;
            }
        }
        else if(strcmp(buf, "switch") == 0) {
            if(!parse_switch(node, info)) {
                return FALSE;
            }
        }
        else if(strcmp(buf, "case") == 0) {
            if(!parse_case(node, info)) {
                return FALSE;
            }
        }
        else if(strcmp(buf, "default") == 0) {
            if(!parse_default(node, info)) {
                return FALSE;
            }
        }
        else if(strcmp(buf, "if") == 0) {
            if(!parse_if(node, info)) {
                return FALSE;
            }
        }
        else if(strcmp(buf, "while") == 0) {
            if(!parse_while(node, info)) {
                return FALSE;
            }
        }
        else if(strcmp(buf, "do") == 0) {
            if(!parse_do(node, info)) {
                return FALSE;
            }
        }
        else if(strcmp(buf, "for") == 0) {
            if(!parse_for(node, info)) {
                return FALSE;
            }
        }
        else if(strcmp(buf, "true") == 0) {
            *node = sNodeTree_create_true(info);
        }
        else if(strcmp(buf, "false") == 0) {
            *node = sNodeTree_create_false(info);
        }
        else if(strcmp(buf, "null") == 0) {
            *node = sNodeTree_create_null(info);
        }
        else if(strcmp(buf, "new") == 0) {
            if(!parse_new(node, info)) {
                return FALSE;
            }
        }
        else if(strcmp(buf, "delete") == 0) {
            if(!parse_delete(node, info)) {
                return FALSE;
            }
        }
        else if(strcmp(buf, "alloca") == 0) {
            if(!parse_alloca(node, info)) {
                return FALSE;
            }
        }
        else if(strcmp(buf, "sizeof") == 0 && *info->p == '(') 
        {
            if(!parse_sizeof(node, info)) {
                return FALSE;
            }
        }
        else if(strcmp(buf, "clone") == 0) {
            if(!parse_clone(node, info)) {
                return FALSE;
            }
        }
        else if(strcmp(buf, "isheap") == 0) {
            if(!parse_is_heap(node, info)) {
                return FALSE;
            }
        }
        else if(strcmp(buf, "ismanaged") == 0) {
            if(!parse_is_managed(node, info)) {
                return FALSE;
            }
        }
        else if(strcmp(buf, "class_name") == 0) {
            if(!parse_class_name_expression(node, info)) {
                return FALSE;
            }
        }
        else if(strcmp(buf, "impl") == 0) {
            if(!parse_impl(node, info)) {
                return FALSE;
            }
        }
        else if(strcmp(buf, "inherit") == 0 && *info->p == '(') {
            if(!parse_inherit(node, info)) {
                return FALSE;
            }
        }
        else if(strcmp(buf, "typedef") == 0) {
            if(!parse_typedef(node, info)) {
                return FALSE;
            }
        }
        else if(strcmp(buf, "break") == 0) {
            *node = sNodeTree_create_break_expression(info);
        }
        else if(strcmp(buf, "continue") == 0) {
            *node = sNodeTree_create_continue_expression(info);
        }
        else if(strcmp(buf, "macro") == 0) {
            if(!parse_macro(node, info))
            {
                return FALSE;
            }
        }
        else if(strcmp(buf, "ruby_macro") == 0) {
            if(!parse_ruby_macro(node, info, info->parse_struct_phase))
            {
                return FALSE;
            }
        }
        else if(strcmp(buf, "goto") == 0) {
            if(!parse_goto(node, info)) {
                return FALSE;
            }
        }
        else if(*info->p == ':') {
            if(!parse_label(node, buf, info)) {
                return FALSE;
            }
        }
        else if(strcmp(buf, "extern") == 0) {
            expect_next_character_with_one_forward("\"", info);
            expect_next_character_with_one_forward("cC", info);
            expect_next_character_with_one_forward("\"", info);

            BOOL in_clang = info->in_clang;

            info->in_clang = TRUE;
            sNodeBlock* node_block = NULL;
            if(!parse_block_easy(ALLOC &node_block, TRUE, info))
            {
                info->in_clang = in_clang;
                return FALSE;
            }

            info->in_clang = in_clang;

            *node = sNodeTree_create_normal_block(node_block, info);
        }
        else if(strcmp(buf, "def") == 0) {
            char* struct_name = NULL;

            if(*info->p == '<') {
                if(!parse_method_generics_function(node, struct_name, info)) {
                    return FALSE;
                }
            }
            else if(info->mNumGenerics > 0) {
                if(!parse_generics_function(node, struct_name, info)) {
                    return FALSE;
                }
            }
            else {
                if(!parse_function(node, struct_name, info)) {
                    return FALSE;
                }
            }
        }
        else if(*info->p == '!') {
            info->p++;
            skip_spaces_and_lf(info);

            if(!parse_call_macro(node, buf, info)) {
                return FALSE;
            }
        }
        else {
            /// local variable ///
            if(get_variable_from_table(info->lv_table, buf))
            {
                if(*info->p == '=' && *(info->p+1) != '=') {
                    info->p++;
                    skip_spaces_and_lf(info);

                    unsigned int right_node = 0;

                    if(!expression(&right_node, info)) {
                        return FALSE;
                    }

                    if(right_node == 0) {
                        parser_err_msg(info, "Require right value for =");
                        info->err_num++;

                        *node = 0;
                    }
                    else {
                        *node = sNodeTree_create_store_variable(buf, right_node, FALSE, info);
                    }
                }
                else if(*info->p == '+' && *(info->p+1) == '+')
                {
                    info->p+=2;
                    skip_spaces_and_lf(info);

                    char var_name[VAR_NAME_MAX];

                    xstrncpy(var_name, buf, VAR_NAME_MAX);

                    unsigned int left_node = sNodeTree_create_load_variable(var_name, info);

                    unsigned int right_node = sNodeTree_create_int_value(1, info);

                    *node = sNodeTree_create_add(left_node, right_node, 0, info);

                    unsigned int left_node2 = sNodeTree_create_store_variable(var_name, *node, FALSE, info);

                    unsigned int right_node2 = sNodeTree_create_int_value(1, info);

                    *node = sNodeTree_create_sub(left_node2, right_node2, 0, info);
                }
                else if(*info->p == '-' && *(info->p+1) == '-')
                {
                    info->p+=2;
                    skip_spaces_and_lf(info);

                    char var_name[VAR_NAME_MAX];

                    xstrncpy(var_name, buf, VAR_NAME_MAX);

                    unsigned int left_node = sNodeTree_create_load_variable(var_name, info);
                    sVar* var = get_variable_from_table(info->lv_table, var_name);

                    if(var && var->mReadOnly) {
                        parser_err_msg(info, "This is readonly variable.");
                        info->err_num++;

                        *node = 0;
                        return TRUE;
                    }

                    unsigned int right_node = sNodeTree_create_int_value(1, info);

                    *node = sNodeTree_create_sub(left_node, right_node, 0, info);

                    unsigned int left_node2 = sNodeTree_create_store_variable(var_name, *node, FALSE, info);

                    unsigned int right_node2 = sNodeTree_create_int_value(1, info);

                    *node = sNodeTree_create_add(left_node2, right_node2, 0, info);
                }
                else if(*info->p == '+' && *(info->p+1) == '=')
                {
                    info->p+=2;
                    skip_spaces_and_lf(info);

                    unsigned int right_node = 0;
                    if(!expression(&right_node, info)) {
                        return FALSE;
                    }

                    char var_name[VAR_NAME_MAX];

                    xstrncpy(var_name, buf, VAR_NAME_MAX);;

                    unsigned int left_node = sNodeTree_create_load_variable(var_name, info);

                    *node = sNodeTree_create_add(left_node, right_node, 0, info);

                    unsigned int left_node2 = sNodeTree_create_store_variable(var_name, *node, FALSE, info);

                    *node = sNodeTree_create_sub(left_node2, right_node, 0, info);
                }
                else if(*info->p == '-' && *(info->p+1) == '=')
                {
                    info->p+=2;
                    skip_spaces_and_lf(info);

                    unsigned int right_node = 0;
                    if(!expression(&right_node, info)) {
                        return FALSE;
                    }

                    char var_name[VAR_NAME_MAX];

                    xstrncpy(var_name, buf, VAR_NAME_MAX);

                    unsigned int left_node = sNodeTree_create_load_variable(var_name, info);

                    *node = sNodeTree_create_sub(left_node, right_node, 0, info);

                    unsigned int left_node2 = sNodeTree_create_store_variable(var_name, *node, FALSE, info);

                    *node = sNodeTree_create_add(left_node2, right_node, 0, info);
                }
                else if(*info->p == '*' && *(info->p+1) == '=')
                {
                    info->p+=2;
                    skip_spaces_and_lf(info);

                    unsigned int right_node = 0;
                    if(!expression(&right_node, info)) {
                        return FALSE;
                    }

                    char var_name[VAR_NAME_MAX];

                    xstrncpy(var_name, buf, VAR_NAME_MAX);

                    unsigned int left_node = sNodeTree_create_load_variable(var_name, info);

                    *node = sNodeTree_create_mult(left_node, right_node, 0, info);

                    *node = sNodeTree_create_store_variable(var_name, *node, FALSE, info);
                }
                else if(*info->p == '/' && *(info->p+1) == '=')
                {
                    info->p+=2;
                    skip_spaces_and_lf(info);

                    unsigned int right_node = 0;
                    if(!expression(&right_node, info)) {
                        return FALSE;
                    }

                    char var_name[VAR_NAME_MAX];

                    xstrncpy(var_name, buf, VAR_NAME_MAX);

                    unsigned int left_node = sNodeTree_create_load_variable(var_name, info);

                    *node = sNodeTree_create_div(left_node, right_node, 0, info);

                    *node = sNodeTree_create_store_variable(var_name, *node, FALSE, info);
                }
                else if(*info->p == '%' && *(info->p+1) == '=')
                {
                    info->p+=2;
                    skip_spaces_and_lf(info);

                    unsigned int right_node = 0;
                    if(!expression(&right_node, info)) {
                        return FALSE;
                    }

                    char var_name[VAR_NAME_MAX];

                    xstrncpy(var_name, buf, VAR_NAME_MAX);

                    unsigned int left_node = sNodeTree_create_load_variable(var_name, info);

                    *node = sNodeTree_create_mod(left_node, right_node, 0, info);

                    *node = sNodeTree_create_store_variable(var_name, *node, FALSE, info);
                }
                else if(*info->p == '<' && *(info->p+1) == '<' && *(info->p+2) == '=')
                {
                    info->p+=2;
                    skip_spaces_and_lf(info);

                    unsigned int right_node = 0;
                    if(!expression(&right_node, info)) {
                        return FALSE;
                    }

                    char var_name[VAR_NAME_MAX];

                    xstrncpy(var_name, buf, VAR_NAME_MAX);

                    unsigned int left_node = sNodeTree_create_load_variable(var_name, info);

                    *node = sNodeTree_create_left_shift(left_node, right_node, 0, info);

                    *node = sNodeTree_create_store_variable(var_name, *node, FALSE, info);
                }
                else if(*info->p == '>' && *(info->p+1) == '>' && *(info->p+2) == '=')
                {
                    info->p+=2;
                    skip_spaces_and_lf(info);

                    unsigned int right_node = 0;
                    if(!expression(&right_node, info)) {
                        return FALSE;
                    }

                    char var_name[VAR_NAME_MAX];

                    xstrncpy(var_name, buf, VAR_NAME_MAX);

                    unsigned int left_node = sNodeTree_create_load_variable(var_name, info);

                    *node = sNodeTree_create_right_shift(left_node, right_node, 0, info);

                    *node = sNodeTree_create_store_variable(var_name, *node, FALSE, info);
                }
                else if(*info->p == '&' && *(info->p+1) == '=')
                {
                    info->p+=2;
                    skip_spaces_and_lf(info);

                    unsigned int right_node = 0;
                    if(!expression(&right_node, info)) {
                        return FALSE;
                    }

                    char var_name[VAR_NAME_MAX];

                    xstrncpy(var_name, buf, VAR_NAME_MAX);

                    unsigned int left_node = sNodeTree_create_load_variable(var_name, info);

                    *node = sNodeTree_create_and(left_node, right_node, 0, info);

                    *node = sNodeTree_create_store_variable(var_name, *node, FALSE, info);
                }
                else if(*info->p == '^' && *(info->p+1) == '=')
                {
                    info->p+=2;
                    skip_spaces_and_lf(info);

                    unsigned int right_node = 0;
                    if(!expression(&right_node, info)) {
                        return FALSE;
                    }

                    char var_name[VAR_NAME_MAX];

                    xstrncpy(var_name, buf, VAR_NAME_MAX);

                    unsigned int left_node = sNodeTree_create_load_variable(var_name, info);

                    *node = sNodeTree_create_xor(left_node, right_node, 0, info);

                    *node = sNodeTree_create_store_variable(var_name, *node, FALSE, info);
                }
                else if(*info->p == '|' && *(info->p+1) == '=')
                {
                    info->p+=2;
                    skip_spaces_and_lf(info);

                    unsigned int right_node = 0;
                    if(!expression(&right_node, info)) {
                        return FALSE;
                    }

                    char var_name[VAR_NAME_MAX];

                    xstrncpy(var_name, buf, VAR_NAME_MAX);

                    unsigned int left_node = sNodeTree_create_load_variable(var_name, info);

                    *node = sNodeTree_create_or(left_node, right_node, 0, info);

                    *node = sNodeTree_create_store_variable(var_name, *node, FALSE, info);
                }
                else if(*info->p == '(')
                {
                    unsigned int params[PARAMS_MAX];
                    int num_params = 0;

                    if(!parse_funcation_call_params(&num_params, params, info)) 
                    {
                        return FALSE;
                    }

                    *node = sNodeTree_create_load_variable(buf, info);

                    *node = sNodeTree_create_lambda_call(*node, params, num_params, info);
                }
                else {
                    *node = sNodeTree_create_load_variable(buf, info);
                }
            }
            else if(*info->p == '(') {
                char* fun_name = buf;

                unsigned int params[PARAMS_MAX];
                int num_params = 0;

                if(!parse_funcation_call_params(&num_params, params, info)) 
                {
                    return FALSE;
                }

                if(strcmp(fun_name, "va_start") == 0) {
                    num_params = 1;
                }

                *node = sNodeTree_create_function_call(fun_name, params, num_params, FALSE, FALSE, info->mFunVersion, info);
            }
            else {
                *node = sNodeTree_create_load_function(buf, info);
            }
        }
    }
    else if(*info->p == '(') {
        info->p++;
        skip_spaces_and_lf(info);

        if(!expression(node, info)) {
            return FALSE;
        }
        skip_spaces_and_lf(info);

        if(*node == 0) {
            parser_err_msg(info, "require expression as ( operand");
            info->err_num++;
        }

        expect_next_character_with_one_forward(")", info);
    }
    else {
        parser_err_msg(info, "invalid character (character code %d) (%c)", *info->p, *info->p);

        if(*info->p == '\n') info->sline++;
        info->p++;
        skip_spaces_and_lf(info);

        info->err_num++;

        *node = 0;
    }

    /// post position expression ///
    if(!postposition_operator(node, info))
    {
        return FALSE;
    }

    return TRUE;
}

// from left to right order
static BOOL expression_mult_div(unsigned int* node, sParserInfo* info)
{
    if(!expression_node(node, info)) {
        return FALSE;
    }
    if(*node == 0) {
        return TRUE;
    }

    while(*info->p) {
        if(*info->p == '*' && *(info->p+1) != '=') {
            info->p++;
            skip_spaces_and_lf(info);

            unsigned int right = 0;
            if(!expression_node(&right, info)) {
                return FALSE;
            }

            if(right == 0) {
                parser_err_msg(info, "require right value for operator *");
                info->err_num++;
            }

            *node = sNodeTree_create_mult(*node, right, 0, info);
        }
        else if(*info->p == '/' && *(info->p+1) != '=' && *(info->p+1) != '*') 
        {
            info->p++;
            skip_spaces_and_lf(info);

            unsigned int right = 0;
            if(!expression_node(&right, info)) {
                return FALSE;
            }

            if(right == 0) {
                parser_err_msg(info, "require right value for operator /");
                info->err_num++;
            }

            *node = sNodeTree_create_div(*node, right, 0, info);
        }
        else if(*info->p == '%' && *(info->p+1) != '=') {
            info->p++;
            skip_spaces_and_lf(info);

            unsigned int right = 0;
            if(!expression(&right, info)) {
                return FALSE;
            }

            if(right == 0) {
                parser_err_msg(info, "require right value for operator ^");
                info->err_num++;
            }

            *node = sNodeTree_create_mod(*node, right, 0, info);
        }
        else {
            break;
        }
    }

    return TRUE;
}

// from left to right order
static BOOL expression_add_sub(unsigned int* node, sParserInfo* info)
{
    if(!expression_mult_div(node, info)) {
        return FALSE;
    }
    if(*node == 0) {
        return TRUE;
    }

    while(*info->p) {
        if(*info->p == '+' && *(info->p+1) != '=' && *(info->p+1) != '+') 
        {
            info->p++;
            skip_spaces_and_lf(info);

            unsigned int right = 0;
            if(!expression_mult_div(&right, info)) {
                return FALSE;
            }

            if(right == 0) {
                parser_err_msg(info, "require right value for operator +");
                info->err_num++;
            }

            *node = sNodeTree_create_add(*node, right, 0, info);
        }
        else if(*info->p == '-' && *(info->p+1) != '=' && *(info->p+1) != '-' && *(info->p+1) != '>') 
        {
            info->p++;
            skip_spaces_and_lf(info);

            unsigned int right = 0;
            if(!expression_mult_div(&right, info)) {
                return FALSE;
            }

            if(right == 0) {
                parser_err_msg(info, "require right value for operator -");
                info->err_num++;
            }

            *node = sNodeTree_create_sub(*node, right, 0, info);
        }
        else {
            break;
        }
    }

    return TRUE;
}

// from left to right order
static BOOL expression_shift(unsigned int* node, sParserInfo* info)
{
    if(!expression_add_sub(node, info)) {
        return FALSE;
    }
    if(*node == 0) {
        return TRUE;
    }

    while(*info->p) {
        if(*info->p == '<' && *(info->p+1) == '<' && *(info->p+2) != '=') {
            info->p+=2;
            skip_spaces_and_lf(info);

            unsigned int right = 0;
            if(!expression_add_sub(&right, info)) {
                return FALSE;
            }

            if(right == 0) {
                parser_err_msg(info, "require right value for operator <<");
                info->err_num++;
            }

            *node = sNodeTree_create_left_shift(*node, right, 0, info);
        }
        else if(*info->p == '>' && *(info->p+1) == '>' && *(info->p+2) != '=') {
            info->p+=2;
            skip_spaces_and_lf(info);
            
            unsigned int right = 0;
            if(!expression_add_sub(&right, info)) {
                return FALSE;
            }

            if(right == 0) {
                parser_err_msg(info, "require right value for operator >>");
                info->err_num++;
            }

            *node = sNodeTree_create_right_shift(*node, right, 0, info);
        }
        else {
            break;
        }
    }

    return TRUE;
}

// from left to right order
static BOOL expression_comparison(unsigned int* node, sParserInfo* info)
{
    if(!expression_shift(node, info)) {
        return FALSE;
    }
    if(*node == 0) {
        return TRUE;
    }

    while(*info->p) {
        if(*info->p == '>' && *(info->p+1) == '=') {
            info->p += 2;
            skip_spaces_and_lf(info);

            unsigned int right = 0;
            if(!expression_shift(&right, info)) {
                return FALSE;
            }

            if(right == 0) {
                parser_err_msg(info, "require right value for >= operator");
                info->err_num++;
            }

            *node = sNodeTree_create_gteq(*node, right, 0, info);
        }
        else if(*info->p == '<' && *(info->p+1) == '=') {
            info->p += 2;
            skip_spaces_and_lf(info);

            unsigned int right = 0;
            if(!expression_shift(&right, info)) {
                return FALSE;
            }

            if(right == 0) {
                parser_err_msg(info, "require right value for <= operator");
                info->err_num++;
            }

            *node = sNodeTree_create_leeq(*node, right, 0, info);
        }
        else if(*info->p == '>' && *(info->p+1) != '>') {
            info->p++;
            skip_spaces_and_lf(info);

            unsigned int right = 0;
            if(!expression_shift(&right, info)) {
                return FALSE;
            }

            if(right == 0) {
                parser_err_msg(info, "require right value for > operator");
                info->err_num++;
            }

            *node = sNodeTree_create_gt(*node, right, 0, info);
        }
        else if(*info->p == '<' && *(info->p+1) != '<') {
            info->p++;
            skip_spaces_and_lf(info);

            unsigned int right = 0;
            if(!expression_shift(&right, info)) {
                return FALSE;
            }

            if(right == 0) {
                parser_err_msg(info, "require right value for < operator");
                info->err_num++;
            }

            *node = sNodeTree_create_le(*node, right, 0, info);
        }
        else {
            break;
        }
    }

    return TRUE;
}

// from left to right order
static BOOL expression_equal(unsigned int* node, sParserInfo* info)
{
    if(!expression_comparison(node, info)) {
        return FALSE;
    }
    if(*node == 0) {
        return TRUE;
    }

    while(*info->p) {
        if(*info->p == '=' && *(info->p+1) == '=') {
            info->p += 2;
            skip_spaces_and_lf(info);

            unsigned int right = 0;
            if(!expression_equal(&right, info)) {
                return FALSE;
            }

            if(right == 0) {
                parser_err_msg(info, "require right value for == operator");
                info->err_num++;
            }

            *node = sNodeTree_create_equals(*node, right, 0, info);
        }
        else if(*info->p == '!' && *(info->p+1) == '=') {
            info->p+=2;
            skip_spaces_and_lf(info);

            unsigned int right = 0;
            if(!expression_equal(&right, info)) {
                return FALSE;
            }

            if(right == 0) {
                parser_err_msg(info, "require right value for != operator");
                info->err_num++;
            }

            *node = sNodeTree_create_not_equals(*node, right, 0, info);
        }
        else {
            break;
        }
    }

    return TRUE;
}

// from left to right order
static BOOL expression_and(unsigned int* node, sParserInfo* info)
{
    if(!expression_equal(node, info)) {
        return FALSE;
    }
    if(*node == 0) {
        return TRUE;
    }

    while(*info->p) {
        if(*info->p == '&' && *(info->p+1) != '&' && *(info->p+1) != '=') {
            info->p++;
            skip_spaces_and_lf(info);

            unsigned int right = 0;
            if(!expression_equal(&right, info)) {
                return FALSE;
            }

            if(right == 0) {
                parser_err_msg(info, "require right value for & operator");
                info->err_num++;
            }

            *node = sNodeTree_create_and(*node, right, 0, info);
        }
        else {
            break;
        }
    }

    return TRUE;
}

// from left to right order
static BOOL expression_xor(unsigned int* node, sParserInfo* info)
{
    if(!expression_and(node, info)) {
        return FALSE;
    }
    if(*node == 0) {
        return TRUE;
    }

    while(*info->p) {
        if(*info->p == '^' && *(info->p+1) != '=') {
            info->p++;
            skip_spaces_and_lf(info);

            unsigned int right = 0;
            if(!expression_and(&right, info)) {
                return FALSE;
            }

            if(right == 0) {
                parser_err_msg(info, "require right value for ^ operator");
                info->err_num++;
            }

            *node = sNodeTree_create_xor(*node, right, 0, info);
        }
        else {
            break;
        }
    }

    return TRUE;
}

// from left to right order
static BOOL expression_or(unsigned int* node, sParserInfo* info)
{
    if(!expression_xor(node, info)) {
        return FALSE;
    }
    if(*node == 0) {
        return TRUE;
    }

    while(*info->p) {
        if(*info->p == '|' && *(info->p+1) != '=' && *(info->p+1) != '|') {
            (info->p)++;
            skip_spaces_and_lf(info);

            unsigned int right = 0;
            if(!expression_xor(&right, info)) {
                return FALSE;
            }

            if(right == 0) {
                parser_err_msg(info, "require right value for | operator");
                info->err_num++;
            }

            *node = sNodeTree_create_or(*node, right, 0, info);
        }
        else {
            break;
        }
    }

    return TRUE;
}

static BOOL expression_and_and_or_or(unsigned int* node, sParserInfo* info)
{
    if(!expression_or(node, info)) {
        return FALSE;
    }
    if(*node == 0) {
        return TRUE;
    }

    while(*info->p) {
        if(*info->p == '&' && *(info->p+1) == '&') {
            info->p+=2;
            skip_spaces_and_lf(info);

            unsigned int right = 0;
            if(!expression_or(&right, info)) {
                return FALSE;
            }

            if(right == 0) {
                parser_err_msg(info, "require right value for && operator");
                info->err_num++;
            }

            *node = sNodeTree_create_and_and(*node, right, info);
        }
        else if(*info->p == '|' && *(info->p+1) == '|') {
            info->p+=2;
            skip_spaces_and_lf(info);

            unsigned int right = 0;
            if(!expression_or(&right, info)) {
                return FALSE;
            }

            if(right == 0) {
                parser_err_msg(info, "require right value for operator ||");
                info->err_num++;
            }

            *node = sNodeTree_create_or_or(*node, right, info);
        }
        else {
            break;
        }
    }

    return TRUE;
}

BOOL expression(unsigned int* node, sParserInfo* info) 
{
    if(info->in_clang) {
        if(!clang_expression(node, info))
        {
            return FALSE;
        }
    }
    else {
        if(!expression_and_and_or_or(node, info)) {
            return FALSE;
        }
    }

    return TRUE;
}
