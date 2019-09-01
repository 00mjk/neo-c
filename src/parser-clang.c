#include "common.h"
#include <ctype.h>

void parser_init()
{
}

void parser_final()
{
}

void parser_err_msg(sParserInfo* info, const char* msg, ...)
{
    char msg2[1024];

    va_list args;
    va_start(args, msg);
    vsnprintf(msg2, 1024, msg, args);
    va_end(args);

    static int output_num = 0;

    if(output_num < PARSER_ERR_MSG_MAX) {
        fprintf(stderr, "%s:%d(%d): %s\n", info->sname, info->sline_top, info->sline, msg2);
    }

    output_num++;
}

void skip_spaces_and_lf(sParserInfo* info)
{
    while(*info->p == ' ' || *info->p == '\t' || (*info->p == '\n' && (info->sline)++)) {
        info->p++;
    }
}

void skip_spaces(sParserInfo* info)
{
    while(*info->p == ' ' || *info->p == '\t') {
        info->p++;
    }
}

BOOL parse_word(char* buf, int buf_size, sParserInfo* info, BOOL print_out_err_msg, BOOL no_skip_lf)
{
    buf[0] = 0;

    char* p2 = buf;

    if(isalpha(*info->p) || *info->p == '_') {
        while(isalnum(*info->p) || *info->p == '_' || *info->p == '$') {
            if(p2 - buf < buf_size-1) {
                *p2++ = *info->p;
                info->p++;
            }
            else {
                parser_err_msg(info, "length of word is too long");
                return FALSE;
            }
        }
    }

    *p2 = 0;
    if(no_skip_lf) {
        skip_spaces(info);
    }
    else {
        skip_spaces_and_lf(info);
    }

    if(*info->p == 0 && buf[0] == 0) {
        if(print_out_err_msg) {
            parser_err_msg(info, "require word(alphabet or number). this is the end of source");
        }
        return FALSE;
    }

    if(buf[0] == 0) {
        if(print_out_err_msg) {
            parser_err_msg(info, "require word(alphabet or _ or number). this is (%c)", *info->p);
            info->err_num++;
        }

        if(*info->p == '\n') info->sline++;

        info->p++;
    }

    return TRUE;
}

void expect_next_character_with_one_forward(char* characters, sParserInfo* info)
{
    skip_spaces_and_lf(info);

    BOOL found = FALSE;
    char* p2 = characters;
    while(*p2) {
        if(*info->p == *p2) {
            found = TRUE;
        }
        p2++;
    }

    if(found) {
        info->p++;
        skip_spaces_and_lf(info);
    }
    else {
        parser_err_msg(info, "expected that next character is %s, but it is %c(%d)", characters, *info->p, *info->p);
        info->err_num++;
        info->p++;
        skip_spaces_and_lf(info);
    }
}

static BOOL get_number(BOOL minus, unsigned int* node, sParserInfo* info)
{
    const int buf_size = 128;
    char buf[128+1];
    char* p2 = buf;

    if(minus) {
        *p2 = '-';
        p2++;
    }

    if(isdigit(*info->p)) {
        while(isdigit(*info->p) || *info->p == '_') {
            if(*info->p ==  '_') {
                info->p++;
            }
            else {
                *p2++ = *info->p;
                info->p++;
            }

            if(p2 - buf >= buf_size) {
                parser_err_msg(info, "overflow node of number");
                return FALSE;
            }
        }
        *p2 = 0;
        skip_spaces_and_lf(info);
        
        *node = sNodeTree_create_int_value(atoi(buf), info);
    }
    else {
        parser_err_msg(info, "require digits after + or -");
        info->err_num++;

        *node = 0;
    }

    return TRUE;
}

static void create_anoymous_struct_name(char* struct_name, int size_struct_name)
{
    static int anonymous_struct_num = 0;
    snprintf(struct_name, size_struct_name, "anon%d", anonymous_struct_num++);
}

static BOOL parse_type(sNodeType** result_type, sParserInfo* info, char* func_pointer_name, BOOL definition_llvm_type, BOOL definition_typedef, BOOL parse_only);

static BOOL parse_attribute(sParserInfo* info)
{
    while(TRUE) {
        if(memcmp(info->p, "__attribute_pure__", 19) == 0) {
            info->p += 19;
            skip_spaces_and_lf(info);
        }
        else if(memcmp(info->p, "__wur", 5) == 0) {
            info->p += 5;
            skip_spaces_and_lf(info);
        }
        else if(memcmp(info->p, "__noreturn", 10) == 0) {
            info->p += 10;
            skip_spaces_and_lf(info);
        }
        else if(memcmp(info->p, "__attribute__", 13) == 0) {
            info->p += 13;
            skip_spaces_and_lf(info);

            int brace_num = 0;
            while(*info->p == '(') {
                info->p ++;
                skip_spaces_and_lf(info);
                brace_num++;
            }

            while(*info->p != ')') {
                info->p++;
            }

            while(*info->p == ')') {
                info->p ++;
                skip_spaces_and_lf(info);
            }
        }
        else if(memcmp(info->p, "__asm__", 7) == 0) {
            info->p += 7;
            skip_spaces_and_lf(info);

            int brace_num = 0;
            while(*info->p == '(') {
                info->p ++;
                skip_spaces_and_lf(info);
                brace_num++;
            }

            while(*info->p != ')') {
                info->p++;
            }

            while(*info->p == ')') {
                info->p ++;
                skip_spaces_and_lf(info);
            }
        }
        else {
            break;
        }
    }

    return TRUE;
}

static BOOL parse_typedef_attribute(sParserInfo* info)
{
    while(TRUE) {
        if(memcmp(info->p, "__attribute__", 13) == 0) {
            info->p += 13;
            skip_spaces_and_lf(info);

            int brace_num = 0;
            while(*info->p == '(') {
                info->p ++;
                skip_spaces_and_lf(info);
                brace_num++;
            }

            while(*info->p != ')') {
                info->p++;
            }

            while(*info->p == ')') {
                info->p ++;
                skip_spaces_and_lf(info);
            }
        }
        else {
            break;
        }
    }

    return TRUE;
}

static BOOL parse_variable_name(char* buf, int buf_size, sParserInfo* info, sNodeType* node_type, BOOL array_size_is_dynamic)
{
    if(*info->p == '*') {
        int num_pointers = 0;
        while(*info->p == '*') {
            info->p++;
            skip_spaces_and_lf(info);
            num_pointers++;
        }

        node_type->mPointerNum = num_pointers;
    }

    if(!parse_word(buf, buf_size, info, TRUE, FALSE)) {
        return FALSE;
    }

    if(strcmp(buf, "const") == 0) {
        if(!parse_word(buf, buf_size, info, TRUE, FALSE)) {
            return FALSE;
        }
    }

    if(*info->p == '[') {
        info->p++;
        skip_spaces_and_lf(info);

        if(array_size_is_dynamic && info->mBlockLevel > 0) {
            if(*info->p != ']') {
                if(!expression(&node_type->mDynamicArrayNum, info)) 
                {
                    return FALSE;
                }
            }
            else {
                node_type->mDynamicArrayNum= -1;
            }

            node_type->mPointerNum++;
        }
        else {
            if(*info->p != ']') {
                unsigned int array_size_node = 0;

                if(!expression(&array_size_node, info)) {
                    return FALSE;
                }

                int array_size = 0;
                if(!get_const_value_from_node(&array_size, array_size_node, info))
                {
                    parser_err_msg(info, "Require Consta Value for array size");
                    info->err_num++;
                    return TRUE;
                }

                node_type->mArrayNum = array_size;
            }
            else {
                node_type->mArrayNum = -1;
            }
        }

        expect_next_character_with_one_forward("]", info);
    }

    if(!parse_attribute(info)) {
        return FALSE;
    }

    return TRUE;
}

BOOL parse_sharp(sParserInfo* info)
{
    if(*info->p == '#') {
        info->p++;
        skip_spaces_and_lf(info);

        if(isdigit(*info->p)) {
            int line = 0;
            char fname[PATH_MAX];

            while(isdigit(*info->p)) {
                line = line * 10 + (*info->p - '0');
                info->p++;
            }
            skip_spaces_and_lf(info);

            if(*info->p == '"') {
                info->p++;

                char* p = fname;

                while(*info->p != '"') {
                    *p++ = *info->p++;
                }
                *p = '\0';

                while(*info->p != '\n') {
                    info->p++;
                }
                info->p++;
            }

            info->sline = line;
            info->sline_top = line;
            xstrncpy(info->sname, fname, PATH_MAX);
            info->change_sline = TRUE;
        }
        else {
            while(TRUE) {
                if(*info->p == '\n') {
                    info->p++;
                    break;
                }
                else if(*info->p == '\0') {
                    break;
                }
                else {
                    info->p++;
                }
            }
        }

        skip_spaces_and_lf(info);
 
        info->sline_top = info->sline;
    }

    return TRUE;
}

static BOOL parse_struct(unsigned int* node, char* struct_name, int size_struct_name, sParserInfo* info) 
{
    char sname[PATH_MAX];
    xstrncpy(sname, info->sname, PATH_MAX);

    int sline = info->sline;

    int num_fields = 0;
    char field_names[STRUCT_FIELD_MAX][VAR_NAME_MAX];
    sNodeType* fields[STRUCT_FIELD_MAX];

    BOOL anonymous = FALSE;
    BOOL undefined_struct = FALSE;

    /// anonymous struct ///
    if(*info->p == '{') {
        anonymous = TRUE;
        create_anoymous_struct_name(struct_name, size_struct_name);
    }
    /// normal struct ///
    else {
        char buf[VAR_NAME_MAX];
        if(!parse_word(buf, VAR_NAME_MAX, info, TRUE, FALSE)) {
            return FALSE;
        }

        xstrncpy(struct_name, buf, size_struct_name);

        info->mNumGenerics = 0;

        /// undefined struct ///
        if(*info->p == ';') {
            undefined_struct = TRUE;
        }
        else if(*info->p == '<') {
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
    }

    if(undefined_struct) {
        sCLClass* struct_class = get_class(struct_name);

        if(struct_class == NULL) {
            struct_class = alloc_struct(struct_name, anonymous);
        }

        xstrncpy(info->parse_struct_name, struct_name, VAR_NAME_MAX);

        sNodeType* struct_type = create_node_type_with_class_pointer(struct_class);

        create_undefined_llvm_struct_type(struct_type);

        *node = sNodeTree_struct(struct_type, info, sname, sline, anonymous);
    }
    else {
        expect_next_character_with_one_forward("{", info);

        sCLClass* struct_class = get_class(struct_name);

        if(struct_class == NULL) {
            struct_class = alloc_struct(struct_name, anonymous);
        }

        xstrncpy(info->parse_struct_name, struct_name, VAR_NAME_MAX);

        int n = 0;
        while(TRUE) {
            if(*info->p == '#') {
                if(!parse_sharp(info)) {
                    return FALSE;
                }
            }

            sNodeType* field = NULL;
            char buf[VAR_NAME_MAX];
            if(!parse_type(&field, info, buf, FALSE, FALSE, FALSE)) {
                return FALSE;
            }

            fields[num_fields] = field;

            if(field->mClass->mFlags & CLASS_FLAGS_ANONYMOUS_VAR_NAME)
            {
                create_anonymous_union_var_name(buf, VAR_NAME_MAX);
            }
            else if(buf[0] == '\0') {
                if(!parse_variable_name(buf, VAR_NAME_MAX, info, field, FALSE))
                {
                    return FALSE;
                }
            }

            xstrncpy(field_names[num_fields], buf, VAR_NAME_MAX);

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

        if(*info->p == ';') {
            info->p++;
            skip_spaces_and_lf(info);

            if(anonymous) {
                struct_class->mFlags |= CLASS_FLAGS_ANONYMOUS_VAR_NAME;
            }
        }

        undefined_struct = struct_class->mUndefinedStructType != NULL;

        add_fields_to_struct(struct_class, num_fields, field_names, fields);

        sNodeType* struct_type = create_node_type_with_class_pointer(struct_class);

        *node = sNodeTree_struct(struct_type, info, sname, sline, anonymous);

        if(undefined_struct && !included_generics_type(struct_type)) 
        {
            sCompileInfo cinfo;
            memset(&cinfo, 0, sizeof(sCompileInfo));
            cinfo.no_output = TRUE;

            if(!create_llvm_struct_type(struct_type, TRUE, &cinfo))
            {
                parser_err_msg(info, "Can't create llvm struct from this node type");
                show_node_type(struct_type);
                return FALSE;
            }
        }
    }

    return TRUE;
}

static BOOL parse_union(unsigned int* node, char* union_name, int size_union_name, sParserInfo* info) 
{
    char sname[PATH_MAX];
    xstrncpy(sname, info->sname, PATH_MAX);

    int sline = info->sline;

    int num_fields = 0;
    char field_names[STRUCT_FIELD_MAX][VAR_NAME_MAX];
    sNodeType* fields[STRUCT_FIELD_MAX];

    BOOL anonymous = FALSE;
    BOOL undefined_struct = FALSE;

    /// anonymous union ///
    if(*info->p == '{') {
        anonymous = TRUE;
        create_anoymous_struct_name(union_name, size_union_name);
    }
    /// normal union ///
    else {
        char buf[VAR_NAME_MAX];
        if(!parse_word(buf, VAR_NAME_MAX, info, TRUE, FALSE)) {
            return FALSE;
        }

        xstrncpy(union_name, buf, size_union_name);

        info->mNumGenerics = 0;

        /// undefined struct ///
        if(*info->p == ';') {
            undefined_struct = TRUE;
        }
    }

    if(undefined_struct) {
        sCLClass* union_class = get_class(union_name);

        if(union_class == NULL) {
            union_class = alloc_union(union_name, anonymous, FALSE);
        }

        sNodeType* union_type = create_node_type_with_class_pointer(union_class);

        create_undefined_llvm_struct_type(union_type);

        *node = sNodeTree_union(union_type, info, sname, sline, anonymous);
    }
    else {
        expect_next_character_with_one_forward("{", info);

        sCLClass* union_class = get_class(union_name);

        if(union_class == NULL) {
            union_class = alloc_union(union_name, anonymous, FALSE);
        }

        int n = 0;
        while(TRUE) {
            if(*info->p == '#') {
                if(!parse_sharp(info)) {
                    return FALSE;
                }
            }

            sNodeType* field = NULL;
            char buf[VAR_NAME_MAX];
            if(!parse_type(&field, info, buf, FALSE, FALSE, FALSE)) {
                return FALSE;
            }

            fields[num_fields] = field;

            if(buf[0] == '\0') {
                if(!parse_variable_name(buf, VAR_NAME_MAX, info, field, FALSE))
                {
                    return FALSE;
                }
            }

            xstrncpy(field_names[num_fields], buf, VAR_NAME_MAX);

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
        }

        if(*info->p == ';') {
            info->p++;
            skip_spaces_and_lf(info);

            if(anonymous) {
                union_class->mFlags |= CLASS_FLAGS_ANONYMOUS_VAR_NAME;
            }
        }

        undefined_struct = union_class->mUndefinedStructType != NULL;

        add_fields_to_union(union_class, num_fields, field_names, fields);

        sNodeType* union_type = create_node_type_with_class_pointer(union_class);

        *node = sNodeTree_union(union_type, info, sname, sline, anonymous);

        if(undefined_struct && !included_generics_type(union_type)) 
        {
            sCompileInfo cinfo;
            memset(&cinfo, 0, sizeof(sCompileInfo));
            cinfo.no_output = TRUE;

            if(!create_llvm_union_type(union_type, &cinfo))
            {
                parser_err_msg(info, "Can't create llvm union from this node type");
                show_node_type(union_type);
                return FALSE;
            }
        }
    }

    return TRUE;
}

static BOOL parse_anoymous_enum(unsigned int* node, sParserInfo* info) 
{
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

        BOOL alloc_ = TRUE;
        *node = sNodeTree_create_store_variable(var_name, right_node, alloc_, info);

        sNodeType* result_type = create_node_type_with_class_name("int");
        result_type->mConstant = TRUE;

        check_already_added_variable(info->lv_table, var_name, info);
        BOOL readonly = TRUE;
        add_variable_to_table(info->lv_table, var_name, result_type, readonly, NULL, -1, info->mBlockLevel == 0, result_type->mConstant);

        nodes[num_nodes++] = *node;
        value++;

        if(num_nodes >= IMPL_DEF_MAX) {
            fprintf(stderr, "overflow enum element max");
            return FALSE;
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

    BOOL extern_ = FALSE;
    *node = sNodeTree_create_define_variables(nodes, num_nodes, extern_, info);

    return TRUE;
}

static BOOL parse_enum(unsigned int* node, char* name, sParserInfo* info) 
{
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

        sNodeType* result_type = create_node_type_with_class_name("int");
        result_type->mConstant = TRUE;

        check_already_added_variable(info->lv_table, var_name, info);
        BOOL readonly = TRUE;
        add_variable_to_table(info->lv_table, var_name, result_type, readonly, NULL, -1, info->mBlockLevel == 0, result_type->mConstant);

        BOOL alloc_ = TRUE;
        *node = sNodeTree_create_store_variable(var_name, right_node, alloc_, info);

        nodes[num_nodes++] = *node;
        value++;

        if(num_nodes >= IMPL_DEF_MAX) {
            fprintf(stderr, "overflow enum element max");
            return FALSE;
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

    if(strcmp(name, "") != 0) {
        BOOL extern_ = FALSE;
        *node = sNodeTree_create_define_variables(nodes, num_nodes, extern_, info);

        (void)alloc_enum(name);
    }

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

    return klass || node_type || generics_type_name || method_type_name || strcmp(buf, "const") == 0 || strcmp(buf, "static") == 0|| (strcmp(buf, "struct") == 0 && *info->p == '{') || (strcmp(buf, "struct") == 0) || (strcmp(buf, "union") == 0) || (strcmp(buf, "union") == 0 && *info->p == '{') || (strcmp(buf, "unsigned") == 0) || (strcmp(buf, "shrot") == 0) || (strcmp(buf, "long") == 0) || (strcmp(buf, "signed") == 0) || (strcmp(buf, "register") == 0) || (strcmp(buf, "volatile") == 0) || (klass && *info->p == '(') || strcmp(buf, "enum") == 0 || strcmp(buf, "__signed__") == 0 || strcmp(buf, "__extension__") == 0 || strcmp(buf, "typeof") == 0;
}

static BOOL parse_type(sNodeType** result_type, sParserInfo* info, char* func_pointer_name, BOOL definition_llvm_type, BOOL definition_typedef, BOOL parse_only)
{
    if(func_pointer_name) {
        func_pointer_name[0] = '\0';
    }

    if(memcmp(info->p, "__extension__", 13) == 0)
    {
        info->p += 13;
        skip_spaces_and_lf(info);
    }

    char type_name[VAR_NAME_MAX];

    *result_type = NULL;

    BOOL heap = FALSE;
    BOOL nullable = FALSE;
    BOOL constant = FALSE;
    BOOL unsigned_ = FALSE;
    BOOL long_ = FALSE;
    BOOL short_ = FALSE;
    BOOL long_long = FALSE;
    BOOL register_ = FALSE;
    BOOL volatile_ = FALSE;
    BOOL static_ = FALSE;
    BOOL signed_ = FALSE;
    BOOL no_heap = FALSE;
    int pointer_num = 0;

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
        else if(strcmp(type_name, "signed") == 0 || strcmp(type_name, "__signed__") == 0) {
            unsigned_ = FALSE;
            signed_ = TRUE;
        }
        else if(strcmp(type_name, "register") == 0) {
            register_ = TRUE;
        }
        else if(strcmp(type_name, "volatile") == 0) {
            volatile_ = TRUE;
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


    BOOL only_signed_unsigned = FALSE;
    if(unsigned_ || signed_) {
        char* p_before = info->p;
        int sline_before = info->sline;

        char buf[VAR_NAME_MAX+1];
        if(!parse_word(buf, VAR_NAME_MAX, info, FALSE, FALSE))
        {
            return FALSE;
        }

        if(is_type_name(buf, info)) {
            info->p = p_before;
            info->sline = sline_before;

            if(!parse_word(type_name, VAR_NAME_MAX, info, TRUE, FALSE)) 
            {
                return FALSE;
            }
        }
        else {
            info->p = p_before;
            info->sline = sline_before;

            only_signed_unsigned = TRUE;
        }
    }
    else {
        if(!parse_word(type_name, VAR_NAME_MAX, info, TRUE, FALSE)) 
        {
            return FALSE;
        }
    }

    if(only_signed_unsigned) {
        *result_type = create_node_type_with_class_name("int");
    }
    else {
        BOOL define_struct = FALSE;
        BOOL define_union = FALSE;
        BOOL undefined_struct = FALSE;

        if(strcmp(type_name, "long") == 0) {
            if(memcmp(info->p, "unsigned", 8) == 0)
            {
                long_ = TRUE;
                unsigned_ = TRUE;

                if(!parse_word(type_name, VAR_NAME_MAX, info, TRUE, FALSE)) 
                {
                    return FALSE;
                }

                if(!parse_word(type_name, VAR_NAME_MAX, info, TRUE, FALSE)) 
                {
                    return FALSE;
                }
            }
            else if(memcmp(info->p, "int", 3) == 0 || memcmp(info->p, "double", 6) == 0) 
            {
                long_ = TRUE;

                if(!parse_word(type_name, VAR_NAME_MAX, info, TRUE, FALSE)) 
                {
                    return FALSE;
                }
            }
            else if(memcmp(info->p, "long", 4) == 0) {
                long_ = TRUE;

                if(!parse_word(type_name, VAR_NAME_MAX, info, TRUE, FALSE)) 
                {
                    return FALSE;
                }

                if(strcmp(type_name, "long") == 0) {
                    if(memcmp(info->p, "int", 3) == 0) {
                        long_long = TRUE;

                        if(!parse_word(type_name, VAR_NAME_MAX, info, TRUE, FALSE)) 
                        {
                            return FALSE;
                        }
                    }
                }
            }
        }
        else if(strcmp(type_name, "short") == 0) {
            if(memcmp(info->p, "int", 3) == 0) {
                short_ = TRUE;

                if(!parse_word(type_name, VAR_NAME_MAX, info, TRUE, FALSE)) 
                {
                    return FALSE;
                }
            }
        }
        else if(strcmp(type_name, "struct") == 0 && (isalpha(*info->p) || *info->p == '_')) 
        {
            char buf[VAR_NAME_MAX];

            if(!parse_word(buf, VAR_NAME_MAX, info, TRUE, FALSE)) 
            {
                return FALSE;
            }

            if(*info->p == '{') {
                define_struct = TRUE;

                xstrncpy(type_name, buf, VAR_NAME_MAX);
            }
            else {
                xstrncpy(type_name, buf, VAR_NAME_MAX);

                sCLClass* klass = get_class(type_name);

                if(klass == NULL && *info->p == '*' && strcmp(info->parse_struct_name, type_name) != 0 && !parse_only)
                {
                    undefined_struct = TRUE;
                }
            }
        }
        else if(strcmp(type_name, "union") == 0 && (isalpha(*info->p) || *info->p == '_'))
        {
            if(!parse_word(type_name, VAR_NAME_MAX, info, TRUE, FALSE)) 
            {
                return FALSE;
            }

            if(*info->p == '{') {
                define_union = TRUE;
            }
        }
        else if(strcmp(type_name, "enum") == 0 && (isalpha(*info->p) || *info->p == '_')) {
            if(!parse_word(type_name, VAR_NAME_MAX, info, TRUE, FALSE)) 
            {
                return FALSE;
            }
        }

        int i;
        for(i=0; i<info->mNumGenerics; i++) {
            if(strcmp(type_name, info->mGenericsTypeNames[i]) == 0)
            {
                char buf[VAR_NAME_MAX+1];
                snprintf(buf, VAR_NAME_MAX, "generics%d", i);

                *result_type = create_node_type_with_class_name(buf);
            }
        }

        if(define_struct) {
            char struct_name[VAR_NAME_MAX];

            xstrncpy(struct_name, type_name, VAR_NAME_MAX);

            sCLClass* struct_class = get_class(struct_name);

            if(struct_class == NULL) 
            {
                struct_class = alloc_struct(struct_name, FALSE);
            }

            xstrncpy(info->parse_struct_name, struct_name, VAR_NAME_MAX);

            sNodeType* struct_type = create_node_type_with_class_pointer(struct_class);

            create_undefined_llvm_struct_type(struct_type);
            unsigned int node = 0;

            if(!parse_struct(&node, type_name, VAR_NAME_MAX, info)) {
                return FALSE;
            }
        }
        else if(define_union) {
            char struct_name[VAR_NAME_MAX];

            xstrncpy(struct_name, type_name, VAR_NAME_MAX);

            sCLClass* struct_class = get_class(struct_name);

            if(struct_class == NULL) 
            {
                struct_class = alloc_union(struct_name, FALSE, FALSE);
            }

            sNodeType* struct_type = create_node_type_with_class_pointer(struct_class);

            create_undefined_llvm_struct_type(struct_type);
            unsigned int node = 0;

            if(!parse_union(&node, type_name, VAR_NAME_MAX, info)) {
                return FALSE;
            }
        }
        else if(undefined_struct) {
            sCLClass* struct_class = get_class(type_name);

            if(struct_class == NULL) {
                struct_class = alloc_struct(type_name, FALSE);
            }

            xstrncpy(info->parse_struct_name, type_name, VAR_NAME_MAX);

            sNodeType* struct_type = create_node_type_with_class_pointer(struct_class);

            create_undefined_llvm_struct_type(struct_type);
        }
        else if(strcmp(type_name, "struct") == 0 && *info->p == '{') {
            unsigned int node = 0;

            if(!parse_struct(&node, type_name, VAR_NAME_MAX, info)) {
                return FALSE;
            }
        }
        else if(strcmp(type_name, "union") == 0 && *info->p == '{') {
            unsigned int node = 0;
            if(!parse_union(&node, type_name, VAR_NAME_MAX, info)) {
                return FALSE;
            }
        }
        else if(strcmp(type_name, "enum") == 0 && *info->p == '{') 
        {
            expect_next_character_with_one_forward("{", info);

            while(TRUE) {
                char var_name[VAR_NAME_MAX];
                if(!parse_word(var_name, VAR_NAME_MAX, info, FALSE, FALSE)) 
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

            *result_type = create_node_type_with_class_name("int");
        }

        if(*result_type == NULL) {
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
                register_ = (*result_type)->mRegister;
                volatile_ = (*result_type)->mVolatile;
                static_ = (*result_type)->mStatic;
                no_heap = (*result_type)->mNoHeap;
                pointer_num = (*result_type)->mPointerNum;
            }
        }

        if(*result_type == NULL) {
            sCLClass* klass = get_class(type_name);

            if(klass) {
                *result_type = create_node_type_with_class_name(type_name);
            }
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
        if(!parse_only) {
            parser_err_msg(info, "%s is not defined class(2)", type_name);
            info->err_num++;
            return FALSE;
        }
        else {
            *result_type = create_node_type_with_class_name("int");
        }
    }

    if((long_ || long_long ) && type_identify_with_class_name((*result_type), "int"))
    {
        *result_type = create_node_type_with_class_name("long");
    }

    if((long_ || long_long ) && type_identify_with_class_name((*result_type), "double"))
    {
        *result_type = create_node_type_with_class_name("long_double");
    }

    if(short_ && type_identify_with_class_name((*result_type), "int"))
    {
        *result_type = create_node_type_with_class_name("short");
    }

    if(definition_typedef && func_pointer_name) {
        if(isalpha(*info->p) || *info->p == '_') {
            char* p_before = info->p;
            int sline_before = info->sline;

            if(!parse_word(func_pointer_name, VAR_NAME_MAX, info, FALSE, FALSE))
            {
                return FALSE;
            }

            if(*info->p == '(') {
                sNodeType* node_type = clone_node_type(*result_type);

                *result_type = create_node_type_with_class_name("lambda");
                (*result_type)->mResultType = node_type;

                if(*info->p == '(') {
                    info->p++;
                    skip_spaces_and_lf(info);

                    if(memcmp(info->p, "void", 4) == 0) {
                        char* p_before = info->p;
                        int sline_before = info->sline;

                        char buf[VAR_NAME_MAX];
                        if(!parse_word(buf, VAR_NAME_MAX, info, FALSE, FALSE))
                        {
                            return FALSE;
                        }

                        if(*info->p == ')') {
                        }
                        else {
                            info->p = p_before;
                            info->sline = sline_before;
                        }
                    }

                    if(*info->p == ')') {
                        info->p++;
                        skip_spaces_and_lf(info);
                    }
                    else {
                        while(1) {
                            sNodeType* node_type = NULL;
                            if(!parse_type(&node_type, info, NULL, FALSE, FALSE, parse_only)) {
                                return FALSE;
                            }

                            (*result_type)->mParamTypes[(*result_type)->mNumParams] = node_type;

                            (*result_type)->mNumParams++;

                            if((*result_type)->mNumParams >= PARAMS_MAX) {
                                parser_err_msg(info, "oveflow type params");
                                return FALSE;
                            }

                            if(isalpha(*info->p) || *info->p == '_') {
                                char buf[VAR_NAME_MAX];

                                (void)parse_word(buf, VAR_NAME_MAX, info, FALSE, FALSE);
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
            else {
                info->p = p_before;
                info->sline = sline_before;
                func_pointer_name[0] = '\0';
            }
        }
    }

    if(*info->p == '(' && *(info->p+1) == '*' && func_pointer_name) {
        info->p += 2;
        skip_spaces_and_lf(info);

        if(!parse_word(func_pointer_name, VAR_NAME_MAX, info, TRUE, FALSE)) 
        {
            return FALSE;
        }

        expect_next_character_with_one_forward(")", info);

        sNodeType* node_type = clone_node_type(*result_type);

        *result_type = create_node_type_with_class_name("lambda");
        (*result_type)->mResultType = node_type;

        if(*info->p == '(') {
            info->p++;
            skip_spaces_and_lf(info);

            if(memcmp(info->p, "void", 4) == 0) {
                char* p_before = info->p;
                int sline_before = info->sline;

                char buf[VAR_NAME_MAX];
                if(!parse_word(buf, VAR_NAME_MAX, info, TRUE, FALSE))
                {
                    return FALSE;
                }

                if(*info->p == ')') {
                }
                else {
                    info->p = p_before;
                    info->sline = sline_before;
                }
            }

            if(*info->p == ')') {
                info->p++;
                skip_spaces_and_lf(info);
            }
            else {
                while(1) {
                    sNodeType* node_type = NULL;
                    if(!parse_type(&node_type, info, NULL, FALSE, FALSE, parse_only)) {
                        return FALSE;
                    }

                    (*result_type)->mParamTypes[(*result_type)->mNumParams] = node_type;

                    (*result_type)->mNumParams++;

                    if((*result_type)->mNumParams >= PARAMS_MAX) {
                        parser_err_msg(info, "oveflow type params");
                        return FALSE;
                    }

                    if(isalpha(*info->p) || *info->p == '_') {
                        char buf[VAR_NAME_MAX];

                        (void)parse_word(buf, VAR_NAME_MAX, info, FALSE, FALSE);
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

    if(*info->p == '<' && *(info->p+1) != '<' && *(info->p+1) != '=') 
    {
        info->p++;
        skip_spaces_and_lf(info);

        int generics_num = 0;

        while(1) {
            if(!parse_type(&(*result_type)->mGenericsTypes[generics_num], info, NULL, FALSE, FALSE, parse_only)) {
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
                    if(!parse_type(&node_type, info, NULL, FALSE, FALSE, parse_only)) {
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
    while(1) {
        char* p_before = info->p;
        int sline_before = info->sline;

        char buf[VAR_NAME_MAX];
        (void)parse_word(buf, VAR_NAME_MAX, info, FALSE, FALSE);
        if(strcmp(buf, "__restrict") == 0)
        {
        }
        else if(strcmp(buf, "const") == 0)
        {
        }
        else {
            info->p = p_before;
            info->sline = info->sline;
        }

        if(*info->p == '*') {
            pointer_num++;
            info->p++;
            skip_spaces_and_lf(info);
        }
        else if(*info->p == '%') {
            info->p++;
            skip_spaces_and_lf(info);

            heap = TRUE;
        }
        else if(*info->p == '&') {
            info->p++;
            skip_spaces_and_lf(info);

            no_heap = TRUE;
        }
        else if(*info->p == '?') {
            info->p++;
            skip_spaces_and_lf(info);

            nullable = TRUE;
        }
        else {
            break;
        }
    }

    (*result_type)->mPointerNum = pointer_num;
    (*result_type)->mHeap = heap;
    (*result_type)->mNullable = nullable;
    (*result_type)->mConstant = constant;
    (*result_type)->mUnsigned = unsigned_;
    (*result_type)->mRegister = register_;
    (*result_type)->mVolatile = volatile_;
    (*result_type)->mStatic = static_;
    (*result_type)->mNoHeap = no_heap;

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
        if(!solve_generics(result_type, info->mGenericsType))
        {
            parser_err_msg(info, "Can't solve generics type");
            show_node_type(*result_type);
            show_node_type(info->mGenericsType);
            info->err_num++;
        }
    }

    if(((*result_type)->mClass->mFlags & CLASS_FLAGS_STRUCT) && !included_generics_type(*result_type) && definition_llvm_type && (*result_type)->mClass->mUndefinedStructType == NULL)
    {
        sCompileInfo cinfo;
        memset(&cinfo, 0, sizeof(sCompileInfo));
        cinfo.no_output = TRUE;

        if(!create_llvm_struct_type(*result_type, FALSE, &cinfo))
        {
            parser_err_msg(info, "Can't create llvm struct from this node type");
            show_node_type(*result_type);
            info->err_num++;
        }
    }
    else if(((*result_type)->mClass->mFlags & CLASS_FLAGS_UNION) && !included_generics_type(*result_type) && definition_llvm_type && (*result_type)->mClass->mUndefinedStructType == NULL)
    {
        sCompileInfo cinfo;
        memset(&cinfo, 0, sizeof(sCompileInfo));
        cinfo.no_output = TRUE;

        if(!create_llvm_union_type(*result_type, &cinfo))
        {
            parser_err_msg(info, "Can't create llvm union from this node type");
            show_node_type(*result_type);
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
        if(!parse_type(&node_type, info, NULL, TRUE, FALSE, FALSE)) {
            return FALSE;
        }

        if(node_type->mClass == NULL) {
            *node = 0;
            return TRUE;
        }
        if(node_type) {
            check_already_added_variable(info->lv_table, buf, info);
            add_variable_to_table(info->lv_table, buf, node_type, readonly, NULL, -1, info->mBlockLevel == 0, node_type->mConstant);
        }
    }
    else {
        node_type = NULL;
        check_already_added_variable(info->lv_table, buf, info);
        add_variable_to_table(info->lv_table, buf, node_type, readonly, NULL, -1, info->mBlockLevel == 0, FALSE);
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

static BOOL parse_variable(unsigned int* node, sNodeType* result_type, char* name, BOOL extern_, sParserInfo* info, BOOL readonly)
{
    /// assign the value to a variable ///
    if(*info->p == '=' && *(info->p+1) != '=') {
        info->p++;
        skip_spaces_and_lf(info);

        if(result_type->mDynamicArrayNum == -1) {
            if(type_identify_with_class_name(result_type, "char*"))
            {
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
                    if(gNodes[right_node].mNodeType != kNodeTypeCString)
                    {
                        parser_err_msg(info, "Invalid right value");
                        info->err_num++;

                        *node = 0;

                        return TRUE;
                    }

                    int string_len = strlen(gNodes[right_node].uValue.sString.mString) + 1;

                    result_type->mDynamicArrayNum = sNodeTree_create_int_value(string_len, info);

                    unsigned int initialize_array_values[INIT_ARRAY_MAX];
                    int num_initialize_array_value = 0;
                    memset(initialize_array_values, 0, sizeof(unsigned int)*INIT_ARRAY_MAX);

                    initialize_array_values[0] = right_node;
                    num_initialize_array_value++;

                    *node = sNodeTree_create_define_variable(name, extern_, info);

                    *node = sNodeTree_create_array_with_initialization(name, num_initialize_array_value, initialize_array_values, *node, info);
                }
            }
            else {
                expect_next_character_with_one_forward("{", info);

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

                int array_len = num_initialize_array_value;

                result_type->mDynamicArrayNum = sNodeTree_create_int_value(array_len, info);
                result_type->mArrayInitializeNum = num_initialize_array_value;

                *node = sNodeTree_create_define_variable(name, extern_, info);

                *node = sNodeTree_create_array_with_initialization(name, num_initialize_array_value, initialize_array_values, *node, info);
            }
        }
        else if(info->mBlockLevel == 0 && result_type->mArrayNum > 0)
        {
            if(type_identify_with_class_name(result_type, "char*"))
            {
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
                    unsigned int initialize_array_values[INIT_ARRAY_MAX];
                    int num_initialize_array_value = 0;
                    memset(initialize_array_values, 0, sizeof(unsigned int)*INIT_ARRAY_MAX);

                    initialize_array_values[0] = right_node;
                    num_initialize_array_value++;

                    *node = sNodeTree_create_define_variable(name, extern_, info);

                    *node = sNodeTree_create_array_with_initialization(name, num_initialize_array_value, initialize_array_values, *node, info);
                }
            }
            else {
                expect_next_character_with_one_forward("{", info);

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

                *node = sNodeTree_create_define_variable(name, extern_, info);

                *node = sNodeTree_create_array_with_initialization(name, num_initialize_array_value, initialize_array_values, *node, info);
            }
        }
        else if(info->mBlockLevel == 0 && result_type->mArrayNum == -1)
        {
            if(type_identify_with_class_name(result_type, "char*"))
            {
                unsigned int right_node = 0;

                if(!expression(&right_node, info)) {
                    return FALSE;
                }

                if(right_node == 0 || gNodes[right_node].mNodeType != kNodeTypeCString) {
                    parser_err_msg(info, "Require string for =");
                    info->err_num++;

                    *node = 0;
                }
                else {
                    char* str = gNodes[right_node].uValue.sString.mString;

                    int len = strlen(str);

                    result_type->mArrayNum = len + 1;

                    unsigned int initialize_array_values[INIT_ARRAY_MAX];
                    int num_initialize_array_value = 0;
                    memset(initialize_array_values, 0, sizeof(unsigned int)*INIT_ARRAY_MAX);

                    initialize_array_values[0] = right_node;
                    num_initialize_array_value++;

                    *node = sNodeTree_create_define_variable(name, extern_, info);

                    *node = sNodeTree_create_array_with_initialization(name, num_initialize_array_value, initialize_array_values, *node, info);
                }
            }
            else {
                expect_next_character_with_one_forward("{", info);

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

                result_type->mArrayNum = num_initialize_array_value;
                result_type->mArrayInitializeNum = num_initialize_array_value;

                *node = sNodeTree_create_define_variable(name, extern_, info);

                *node = sNodeTree_create_array_with_initialization(name, num_initialize_array_value, initialize_array_values, *node, info);
            }
        }
        else if(result_type->mDynamicArrayNum != 0) {
            if(type_identify_with_class_name(result_type, "char*"))
            {
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
                    unsigned int initialize_array_values[INIT_ARRAY_MAX];
                    int num_initialize_array_value = 0;
                    memset(initialize_array_values, 0, sizeof(unsigned int)*INIT_ARRAY_MAX);

                    initialize_array_values[0] = right_node;
                    num_initialize_array_value++;

                    *node = sNodeTree_create_define_variable(name, extern_, info);

                    *node = sNodeTree_create_array_with_initialization(name, num_initialize_array_value, initialize_array_values, *node, info);
                }
            }
            else {
                expect_next_character_with_one_forward("{", info);

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

                result_type->mArrayInitializeNum = num_initialize_array_value;

                *node = sNodeTree_create_define_variable(name, extern_, info);

                *node = sNodeTree_create_array_with_initialization(name, num_initialize_array_value, initialize_array_values, *node, info);
            }
        }
        else if((result_type->mClass->mFlags & CLASS_FLAGS_STRUCT) && *info->p == '{') {
            expect_next_character_with_one_forward("{", info);

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

            *node = sNodeTree_create_define_variable(name, extern_, info);

            *node = sNodeTree_create_struct_with_initialization(name, num_initialize_array_value, initialize_array_values, *node, info);
        }
        else {
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
                *node = sNodeTree_create_store_variable(name, right_node, TRUE, info);
            }
        }
    }
    else {
        *node = sNodeTree_create_define_variable(name, extern_, info);
    }

    check_already_added_variable(info->lv_table, name, info);
    add_variable_to_table(info->lv_table, name, result_type, readonly, NULL, -1, info->mBlockLevel == 0, result_type->mConstant);

    return TRUE;
}

static BOOL parse_param(sParserParam* param, sParserInfo* info)
{
    if(!parse_type(&param->mType, info, param->mName, TRUE, FALSE, FALSE)) {
        return FALSE;
    }

    if(*info->p == ',' || *info->p == ')') {
        param->mName[0] = '\0';
    }
    else {
        if(param->mName[0] == '\0') {
            if(!parse_variable_name(param->mName, VAR_NAME_MAX, info, param->mType, FALSE))
            {
                return FALSE;
            }
        }
    }

    return TRUE;
}

BOOL get_block_text(sBuf* buf, sParserInfo* info, BOOL append_head_currly_brace)
{
    if(append_head_currly_brace) {
        sBuf_append_str(buf, "{ ");
    }

    BOOL dquort = FALSE;
    BOOL squort = FALSE;

    int nest = 0;
    while(TRUE) {
        if(*info->p == '"') {
            sBuf_append_char(buf, *info->p);
            info->p++;
            dquort = !dquort;
        }
        else if(*info->p == '\'') {
            sBuf_append_char(buf, *info->p);
            info->p++;
            sBuf_append_char(buf, *info->p);
            squort = !squort;
        }
        else if(dquort || squort) {
            if(*info->p == '\n') {
                info->sline++;
            }

            sBuf_append_char(buf, *info->p);
            info->p++;
        }
        else if(*info->p == '{') {
            sBuf_append_char(buf, *info->p);
            info->p++;

            nest++;
        }
        else if(*info->p == '}') {
            info->p++;
            skip_spaces_and_lf(info);

            if(nest == 0) {
                break;
            }
            else {
                sBuf_append_str(buf, "}");
            }

            nest--;
        }
        else if(*info->p == '\n') {
            info->sline++;
            sBuf_append_char(buf, *info->p);
            info->p++;
        }
        else if(*info->p == '\0') {
            parser_err_msg(info, "require } before the source end");
            return FALSE;
        }
        else {
            sBuf_append_char(buf, *info->p);
            info->p++;
        }
    }

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


/// character_type --> 0: () 1: ||
static BOOL parse_params(sParserParam* params, int* num_params, sParserInfo* info, int character_type, BOOL* var_arg)
{
    char* p_before = info->p;
    int sline_before = info->sline;

    char buf[VAR_NAME_MAX];
    if(!parse_word(buf, VAR_NAME_MAX, info, FALSE, FALSE)) {
        return FALSE;
    }

    if(strcmp(buf, "void") == 0 && *info->p == ')') {
        info->p++;
        skip_spaces_and_lf(info);
        return TRUE;
    }
    else {
        info->p = p_before;
        info->sline = sline_before;
    }

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


static BOOL parse_generics_function(unsigned int* node, sNodeType* result_type, char* fun_name, char* struct_name, sParserInfo* info)
{
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

    int i;
    for(i=0; i<num_params; i++) {
        char* name = params[i].mName;

        if(name[0] == '\0') {
            parser_err_msg(info, "Require parametor variable names");
            info->err_num++;
        }
    }

    if(!parse_attribute(info)) {
        return FALSE;
    }

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

    *node = sNodeTree_create_generics_function(fun_name, params, num_params, result_type, MANAGED buf.mBuf, struct_name, sname, sline, var_arg, info);

    //info->mNumMethodGenerics = 0;

    return TRUE;
}

static BOOL parse_method_generics_function(unsigned int* node, char* struct_name, sParserInfo* info)
{
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

    sNodeType* result_type = NULL;
    if(!parse_type(&result_type, info, NULL, TRUE, FALSE, FALSE))
    {
        return FALSE;
    }

    char fun_name[VAR_NAME_MAX+1];
    if(!parse_word(fun_name, VAR_NAME_MAX, info, TRUE, FALSE))
    {
        return FALSE;
    }

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

    int i;
    for(i=0; i<num_params; i++) {
        char* name = params[i].mName;

        if(name[0] == '\0') {
            parser_err_msg(info, "Require parametor variable names");
            info->err_num++;
        }
    }

    if(!parse_attribute(info)) {
        return FALSE;
    }

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

    *node = sNodeTree_create_generics_function(fun_name, params, num_params, result_type, MANAGED buf.mBuf, struct_name, sname, sline, var_arg, info);

    //info->mNumMethodGenerics = 0;

    return TRUE;
}

static BOOL parse_function(unsigned int* node, sNodeType* result_type, char* fun_name, char* struct_name, sParserInfo* info)
{
    /// method generics ///
    info->mNumMethodGenerics = 0;

    BOOL operator_fun = FALSE;

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

    if(!parse_attribute(info)) {
        return FALSE;
    }

    if(*info->p == ';') {
        info->p++;
        skip_spaces_and_lf(info);

        *node = sNodeTree_create_external_function(fun_name, params, num_params, var_arg, result_type, struct_name, operator_fun, info);
    }
    else {
        int i;
        for(i=0; i<num_params; i++) {
            char* name = params[i].mName;

            if(name[0] == '\0') {
                parser_err_msg(info, "Require parametor variable names");
                info->err_num++;
            }
        }

        sNodeBlock* node_block = ALLOC sNodeBlock_alloc();
        expect_next_character_with_one_forward("{", info);
        sVarTable* old_table = info->lv_table;

        info->lv_table = init_block_vtable(old_table);

        sVarTable* block_var_table = info->lv_table;

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

        *node = sNodeTree_create_function(fun_name, params, num_params, result_type, MANAGED node_block, lambda, block_var_table, struct_name, operator_fun, construct_fun, simple_lambda_param, info, FALSE, var_arg);
    }

    info->mNumMethodGenerics = 0;

    return TRUE;
}

static BOOL parse_inline_function(unsigned int* node, char* struct_name, sParserInfo* info)
{
    BOOL operator_fun = FALSE;

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

    sNodeType* result_type = NULL;
    if(!parse_type(&result_type, info, NULL, TRUE, FALSE, FALSE))
    {
        return FALSE;
    }

    if(result_type == NULL) {
        return TRUE;
    }

    char fun_name[VAR_NAME_MAX+1];
    if(!parse_word(fun_name, VAR_NAME_MAX, info, TRUE, FALSE))
    {
        return FALSE;
    }

    if(*info->p != '(') {
        parser_err_msg(info, "require function definition\n");
        info->err_num++;
        return TRUE;
    }

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

    int i;
    for(i=0; i<num_params; i++) {
        char* name = params[i].mName;

        if(name[0] == '\0') {
            parser_err_msg(info, "Require parametor variable names");
            info->err_num++;
        }
    }

    if(!parse_attribute(info)) {
        return FALSE;
    }

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

    *node = sNodeTree_create_inline_function(fun_name, params, num_params, result_type, MANAGED buf.mBuf, struct_name, sname, sline, var_arg, info);

    return TRUE;
}

static BOOL parse_constructor(unsigned int* node, char* struct_name, sParserInfo* info) 
{
    /// method generics ///
    info->mNumMethodGenerics = 0;

    BOOL operator_fun = FALSE;

    char* fun_name = "initialize";

    expect_next_character_with_one_forward("(", info);

    /// result_type ///
    sNodeType* result_type = create_node_type_with_class_name(struct_name);
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

    if(!parse_attribute(info)) {
        return FALSE;
    }

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

        *node = sNodeTree_create_generics_function(fun_name, params, num_params, result_type, MANAGED buf.mBuf, struct_name, sname, sline, var_arg, info);

        //info->mNumMethodGenerics = 0;
    }
    else {
        sNodeBlock* node_block = ALLOC sNodeBlock_alloc();
        expect_next_character_with_one_forward("{", info);
        sVarTable* old_table = info->lv_table;

        info->lv_table = init_block_vtable(old_table);

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

        *node = sNodeTree_create_function(fun_name, params, num_params, result_type, MANAGED node_block, lambda, block_var_table, struct_name, operator_fun, construct_fun, simple_lambda_param, info, generics_function, FALSE);
    }

    info->mNumMethodGenerics = 0;

    return TRUE;
}

static BOOL parse_destructor(unsigned int* node, char* struct_name, sParserInfo* info) 
{
    /// method generics ///
    info->mNumMethodGenerics = 0;

    BOOL operator_fun = FALSE;

    char* fun_name = "finalize";

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

    for(i=0; i<num_params; i++) {
        char* name = params[i].mName;

        if(name[0] == '\0') {
            parser_err_msg(info, "Require parametor variable names");
            info->err_num++;
        }
    }

    if(!parse_attribute(info)) {
        return FALSE;
    }

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

        *node = sNodeTree_create_generics_function(fun_name, params, num_params, result_type, MANAGED buf.mBuf, struct_name, sname, sline, var_arg, info);

        //info->mNumMethodGenerics = 0;
    }
    else {
        sNodeBlock* node_block = ALLOC sNodeBlock_alloc();
        expect_next_character_with_one_forward("{", info);
        sVarTable* old_table = info->lv_table;

        info->lv_table = init_block_vtable(old_table);

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

        *node = sNodeTree_create_function(fun_name, params, num_params, result_type, MANAGED node_block, lambda, block_var_table, struct_name, operator_fun, construct_fun, simple_lambda_param, info, generics_function, FALSE);
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

                    *node = sNodeTree_create_function_call(fun_name, params, num_params, TRUE, FALSE, info);
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
    info->lv_table = init_block_vtable(old_vtable);
    
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

int gNumLambdaName = 0;

void create_lambda_name(char* lambda_name, size_t size_lambda_name, char* module_name)
{
    xstrncpy(lambda_name, module_name, size_lambda_name);
    xstrncat(lambda_name, "_", size_lambda_name);
    xstrncat(lambda_name, "lambda", size_lambda_name);

    char buf[128];
    snprintf(buf, 128, "%d", gNumLambdaName);

    xstrncat(lambda_name, buf, size_lambda_name);

    gNumLambdaName++;
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

        if(!parse_type(&result_type, info, NULL, TRUE, FALSE, FALSE)) {
            return FALSE;
        }
    }
    else {
        result_type = create_node_type_with_class_name("void");
    }

    sNodeBlock* node_block = ALLOC sNodeBlock_alloc();
    expect_next_character_with_one_forward("{", info);
    sVarTable* old_table = info->lv_table;

    info->lv_table = init_block_vtable(old_table);
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

    *node = sNodeTree_create_function(fun_name, params, num_params, result_type, MANAGED node_block, lambda, block_var_table, NULL, operator_fun, construct_fun, simple_lambda_param, info, FALSE, FALSE);

    return TRUE;
}

static BOOL parse_new(unsigned int* node, sParserInfo* info)
{
    sNodeType* node_type = NULL;

    if(!parse_type(&node_type, info, NULL, TRUE, FALSE, FALSE)) {
        return FALSE;
    }

    sCLClass* klass = node_type->mClass;

    if(klass) {
        unsigned int object_num = 0;
        if(*info->p == '[') {
            info->p++;
            skip_spaces_and_lf(info);

            if(!expression(&object_num, info)) {
                return FALSE;
            }

            expect_next_character_with_one_forward("]", info);
        }

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

static BOOL parse_delete(unsigned int* node, sParserInfo* info)
{
    unsigned int object_node;
    if(!expression(&object_node, info)) {
        return FALSE;
    }

    *node = sNodeTree_create_delete(object_node, info);

    return TRUE;
}


static BOOL parse_alloca(unsigned int* node, sParserInfo* info)
{
    sNodeType* node_type = NULL;

    if(!parse_type(&node_type, info, NULL, TRUE, FALSE, FALSE)) {
        return FALSE;
    }

    sCLClass* klass = node_type->mClass;

    if(klass) {
        unsigned int object_num = 0;
        if(*info->p == '[') {
            info->p++;
            skip_spaces_and_lf(info);

            if(!expression(&object_num, info)) {
                return FALSE;
            }

            expect_next_character_with_one_forward("]", info);
        }

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

    char* p_before = info->p;
    int sline_before = info->sline;

    char buf[VAR_NAME_MAX+1];
    (void)parse_word(buf, VAR_NAME_MAX, info, FALSE, FALSE);

    info->p = p_before;
    info->sline = sline_before;

    if(is_type_name(buf, info)) {
        sNodeType* node_type = NULL;

        if(!parse_type(&node_type, info, NULL, TRUE, FALSE, FALSE)) {
            return FALSE;
        }

        expect_next_character_with_one_forward(")", info);

        *node = sNodeTree_create_sizeof(node_type, info);
    }
    else {
        if(!expression(node, info)) {
            return FALSE;
        }

        expect_next_character_with_one_forward(")", info);

        *node = sNodeTree_create_sizeof_expression(*node, info);
    }

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

        if(!parse_type(&node_type, info, NULL, TRUE, FALSE, FALSE)) {
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

static BOOL parse_typedef(unsigned int* node, sParserInfo* info)
{
    unsigned int nodes[IMPL_DEF_MAX];
    memset(nodes, 0, sizeof(unsigned int)*IMPL_DEF_MAX);
    int num_nodes = 0;

    char* p_before = info->p;
    int sline_before = info->sline;

    char buf[VAR_NAME_MAX];

    if(!parse_word(buf, VAR_NAME_MAX, info, FALSE, FALSE))
    {
        return FALSE;
    }

    unsigned int anonymous_enum_node = 0;

    if(strcmp(buf, "enum") == 0) {
        if(*info->p == '{') {
            if(!parse_anoymous_enum(&anonymous_enum_node, info)) {
                return FALSE;
            }
        }
    }

    info->p = p_before;
    info->sline = sline_before;

    if(anonymous_enum_node != 0)
    {
        nodes[0] = anonymous_enum_node;
        num_nodes++;
    }

    sNodeType* node_type = NULL;
    if(!parse_type(&node_type, info, buf, TRUE, TRUE, FALSE)) {
        return FALSE;
    }

    if(buf[0] == '\0') {
        if(!parse_word(buf, VAR_NAME_MAX, info, TRUE, FALSE)) {
            return FALSE;
        }
    }

    if(!parse_typedef_attribute(info))
    {
        return FALSE;
    }

    *node = sNodeTree_create_typedef(buf, node_type, info);

    nodes[1] = *node;
    num_nodes++;

    BOOL extern_ = FALSE;
    *node = sNodeTree_create_define_variables(nodes, num_nodes, extern_, info);

    return TRUE;
}


static BOOL parse_impl(unsigned int* node, sParserInfo* info)
{
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

    expect_next_character_with_one_forward("{", info);

    unsigned int nodes[IMPL_DEF_MAX];
    memset(nodes, 0, sizeof(unsigned int)*IMPL_DEF_MAX);
    int num_nodes = 0;

    while(TRUE) {
        if(*info->p == '}') {
            info->p++;
            skip_spaces_and_lf(info);
            break;
        }

        char* p_before = info->p;
        int sline_before = info->sline;

        char buf[VAR_NAME_MAX+1];
        if(!parse_word(buf, VAR_NAME_MAX, info, TRUE, FALSE))
        {
            return FALSE;
        }

        info->sline_top = info->sline;

        if(strcmp(buf, "template") == 0) {
            if(!parse_method_generics_function(node, struct_name, info)) {
                return FALSE;
            }

            nodes[num_nodes++] = *node;

            if(num_nodes >= IMPL_DEF_MAX) {
                fprintf(stderr, "overflow impl function max");
                return FALSE;
            }
        }
        else if(strcmp(buf, "inline") == 0 || strcmp(buf, "__inline") == 0 || strcmp(buf, "__inline__") == 0) 
        {
            if(!parse_inline_function(node, struct_name, info)) 
            {
                return FALSE;
            }

            nodes[num_nodes++] = *node;

            if(num_nodes >= IMPL_DEF_MAX) {
                fprintf(stderr, "overflow impl function max");
                return FALSE;
            }
        }
        else if(strcmp(buf, "initialize") == 0) {
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
        else if(is_type_name(buf, info)) { 
            info->p = p_before;
            info->sline = sline_before;

            sNodeType* result_type = NULL;
            char name[VAR_NAME_MAX];
            if(!parse_type(&result_type, info, name, TRUE, FALSE, FALSE))
            {
                return FALSE;
            }

            if(!parse_variable_name(name, VAR_NAME_MAX, info, result_type, TRUE))
            {
                return FALSE;
            }

            if(name[0] == '\0') {
                if(!parse_variable_name(name, VAR_NAME_MAX, info, result_type, TRUE))
                {
                    return FALSE;
                }
            }

            if(*info->p == '(') {
                if(info->mNumGenerics > 0) {
                    if(!parse_generics_function(node, result_type, name, struct_name, info)) {
                        return FALSE;
                    }
                }
                else {
                    if(!parse_function(node, result_type, name, struct_name, info)) {
                        return FALSE;
                    }
                }
            }
            else {
                BOOL extern_ = FALSE;
                if(!parse_variable(node, result_type, name, extern_, info, FALSE)) {
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
static BOOL parse_va_arg(unsigned int* node, sParserInfo* info)
{
    expect_next_character_with_one_forward("(", info);

    /// expression1 ///
    if(!expression(node, info)) {
        return FALSE;
    }

    if(*node == 0) {
        parser_err_msg(info, "require expression for va_arg");
        info->err_num++;
        return TRUE;
    }

    expect_next_character_with_one_forward(",", info);

    sNodeType* node_type = NULL;
    if(!parse_type(&node_type, info, NULL, FALSE, FALSE, FALSE))
    {
        return FALSE;
    }

    expect_next_character_with_one_forward(")", info);

    *node = sNodeTree_create_va_arg(*node, node_type, info);

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
            info->p = p_before;
            info->sline = sline_before;

            sNodeType* node_type = NULL;
            if(!parse_type(&node_type, info, NULL, TRUE, FALSE, FALSE))
            {
                return FALSE;
            }

            expect_next_character_with_one_forward(")", info);
            if(!expression_node(node, info)) 
            {
                return FALSE;
            }

            if(*node == 0) {
                parser_err_msg(info, "require value for cast");
                info->err_num++;
            }

            *node = sNodeTree_create_cast(node_type, *node, info);
        }
        else {
            info->p = p_before;
            info->sline = sline_before;

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
        char* p_before = info->p;
        int sline_before = info->sline;

        char buf[VAR_NAME_MAX+1];
        if(!parse_word(buf, VAR_NAME_MAX, info, TRUE, FALSE))
        {
            return FALSE;
        }

        BOOL define_struct = FALSE;
        BOOL define_union  = FALSE;
        BOOL define_enum = FALSE;
        BOOL static_inline = FALSE;
        unsigned int anonymous_enum_node = 0;
        BOOL define_anonymous_enum = FALSE;

        if(strcmp(buf, "__extension__") == 0) {
            if(!parse_word(buf, VAR_NAME_MAX, info, TRUE, FALSE))
            {
                return FALSE;
            }
        }

        if(strcmp(buf, "__attribute__") == 0) {
            int brace_num = 0;
            while(*info->p == '(') {
                info->p ++;
                skip_spaces_and_lf(info);
                brace_num++;
            }

            while(*info->p != ')') {
                info->p++;
            }

            while(*info->p == ')') {
                info->p ++;
                skip_spaces_and_lf(info);
            }

            p_before = info->p;
            sline_before = info->sline;

            if(!parse_word(buf, VAR_NAME_MAX, info, TRUE, FALSE))
            {
                return FALSE;
            }
        }

        if(strcmp(buf, "struct") == 0) {
            char* p_before2 = info->p;
            int sline_before2 = info->sline;

            if(*info->p != '{') {
                char buf2[VAR_NAME_MAX];

                if(!parse_word(buf2, VAR_NAME_MAX, info, TRUE, FALSE))
                {
                    return FALSE;
                }

                if(*info->p == '{')
                {
                    info->p++;
                    skip_spaces_and_lf(info);

                    while(TRUE) {
                        if(*info->p == '#') {
                            if(!parse_sharp(info)) {
                                return FALSE;
                            }
                        }

                        sNodeType* field = NULL;
                        char buf[VAR_NAME_MAX];
                        if(!parse_type(&field, info, buf, FALSE, FALSE, TRUE)) {
                            return FALSE;
                        }

                        if(field->mClass->mFlags & CLASS_FLAGS_ANONYMOUS_VAR_NAME)
                        {
                            create_anonymous_union_var_name(buf, VAR_NAME_MAX);
                        }
                        else if(buf[0] == '\0') {
                            if(!parse_variable_name(buf, VAR_NAME_MAX, info, field, FALSE))
                            {
                                return FALSE;
                            }
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

                    if(*info->p == ';') {
                        info->p++;
                        skip_spaces_and_lf(info);
                        define_struct = TRUE;
                    }
                }
                else if(*info->p == '<' || *info->p == ';') 
                {
                    define_struct = TRUE;
                }
            }

            info->p = p_before2;
            info->sline = sline_before2;
        }
        else if(strcmp(buf, "union") == 0)
        {
            char* p_before2 = info->p;
            int sline_before2 = info->sline;

            if(*info->p != '{') {
                char buf2[VAR_NAME_MAX];

                if(!parse_word(buf2, VAR_NAME_MAX, info, TRUE, FALSE))
                {
                    return FALSE;
                }

                if(*info->p == '{')
                {
                    info->p++;
                    skip_spaces_and_lf(info);

                    while(TRUE) {
                        if(*info->p == '#') {
                            if(!parse_sharp(info)) {
                                return FALSE;
                            }
                        }

                        sNodeType* field = NULL;
                        char buf[VAR_NAME_MAX];
                        if(!parse_type(&field, info, buf, FALSE, FALSE, TRUE)) {
                            return FALSE;
                        }

                        if(buf[0] == '\0') {
                            if(!parse_variable_name(buf, VAR_NAME_MAX, info, field, FALSE))
                            {
                                return FALSE;
                            }
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

                    if(*info->p == ';') {
                        info->p++;
                        skip_spaces_and_lf(info);
                        define_union = TRUE;
                    }
                }
                else if(*info->p == ';') 
                {
                    define_union = TRUE;
                }
            }

            info->p = p_before2;
            info->sline = sline_before2;
        }
        else if(strcmp(buf, "enum") == 0) {
            char* p_before2 = info->p;
            int sline_before2 = info->sline;

            if(*info->p != '{') {
                char buf2[VAR_NAME_MAX];

                if(!parse_word(buf2, VAR_NAME_MAX, info, TRUE, FALSE))
                {
                    return FALSE;
                }

                if(*info->p == '{' || *info->p == '<' || *info->p == ';') {
                    define_enum = TRUE;
                }
            }
            else {
                if(!parse_anoymous_enum(&anonymous_enum_node, info)) {
                    return FALSE;
                }


                if(*info->p == ';') 
                {
                    define_anonymous_enum = TRUE;
                }
            }

            info->p = p_before2;
            info->sline = sline_before2;
        }
        else if(strcmp(buf, "static") == 0) {
            char* p_before2 = info->p;
            int sline_before2 = info->sline;

            if(!parse_word(buf, VAR_NAME_MAX, info, TRUE, FALSE))
            {
                return FALSE;
            }

            if(strcmp(buf, "inline") == 0 || strcmp(buf, "__inline") == 0 || strcmp(buf, "__inline__") == 0)
            {
                static_inline = TRUE;
            }
            else {
                info->p = p_before2;
                info->sline = sline_before2;
            }
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
        else if(strcmp(buf, "__builtin_va_arg") == 0) {
            if(!parse_va_arg(node, info))
            {
                return FALSE;
            }
        }
        else if(strcmp(buf, "var") == 0) {
            if(!parse_var(node, info, FALSE)) {
                return FALSE;
            }
        }
        else if(strcmp(buf, "struct") == 0 && *info->p != '{' && define_struct) {
            char struct_name[VAR_NAME_MAX];

            xstrncpy(struct_name, "", VAR_NAME_MAX);

            if(!parse_struct(node, struct_name, VAR_NAME_MAX, info)) {
                return FALSE;
            }
        }
        else if(strcmp(buf, "union") == 0 && *info->p != '{' && define_union ) {
            char union_name[VAR_NAME_MAX];
            xstrncpy(union_name, "", VAR_NAME_MAX);

            if(!parse_union(node, union_name, VAR_NAME_MAX, info)) {
                return FALSE;
            }
        }
        else if(anonymous_enum_node && define_anonymous_enum) 
        {
            expect_next_character_with_one_forward("{", info);

            while(TRUE) {
                char var_name[VAR_NAME_MAX];
                if(!parse_word(var_name, VAR_NAME_MAX, info, FALSE, FALSE)) 
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

            *node = anonymous_enum_node;
        }
        else if(strcmp(buf, "enum") == 0 && *info->p != '{' && define_enum) {
            char name[VAR_NAME_MAX];
            if(!parse_word(name, VAR_NAME_MAX, info, TRUE, FALSE)) 
            {
                return FALSE;
            }

            if(!parse_enum(node, name, info)) {
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
        else if(strcmp(buf, "impl") == 0) {
            if(!parse_impl(node, info)) {
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
            if(!parse_ruby_macro(node, info, TRUE)) {
                return FALSE;
            }
        }
        else if(strcmp(buf, "template") == 0) {
            if(!parse_method_generics_function(node, NULL, info)) {
                return FALSE;
            }
        }
        else if(strcmp(buf, "extern") == 0 && *info->p == '"') {
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
        else if(strcmp(buf, "extern") == 0) {
            info->mNumGenerics = 0;

            sNodeType* result_type = NULL;
            char name[VAR_NAME_MAX+1];
            if(!parse_type(&result_type, info, name, TRUE, FALSE, FALSE))
            {
                return FALSE;
            }

            if(name[0] != '\0') {
                BOOL extern_ = TRUE;
                if(!parse_variable(node, result_type, name, extern_, info, FALSE)) 
                {
                    return FALSE;
                }
            }
            else {
                unsigned int nodes[IMPL_DEF_MAX];
                memset(nodes, 0, sizeof(unsigned int)*IMPL_DEF_MAX);
                int num_nodes = 0;

                while(TRUE) {
                    sNodeType* result_type2 = clone_node_type(result_type);

                    if(!parse_variable_name(name, VAR_NAME_MAX, info, result_type2, TRUE))
                    {
                        return FALSE;
                    }

                    if(strcmp(name, "operator") == 0)
                    {
                        if(!parse_function(node, result_type2, name, NULL, info)) {
                            return FALSE;
                        }
                    }
                    else if(*info->p == '(') {
                        if(!parse_function(node, result_type2, name, NULL, info)) {
                            return FALSE;
                        }
                    }
                    else {
                        BOOL extern_ = TRUE;
                        if(!parse_variable(node, result_type2, name, extern_, info, FALSE)) {
                            return FALSE;
                        }
                    }

                    nodes[num_nodes++] = *node;

                    if(num_nodes >= IMPL_DEF_MAX) {
                        fprintf(stderr, "overflow define variable max");
                        return FALSE;
                    }

                    if(*info->p == ',') {
                        info->p++;
                        skip_spaces_and_lf(info);
                    }
                    else {
                        break;
                    }
                }

                if(num_nodes > 1) {
                    BOOL extern_ = TRUE;
                    *node = sNodeTree_create_define_variables(nodes, num_nodes, extern_, info);
                }
            }
        }
        else if(static_inline || strcmp(buf, "inline") == 0 || strcmp(buf, "__inline") == 0 || strcmp(buf, "__inline__") == 0) 
        {
            if(!parse_inline_function(node, NULL, info)) {
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
        else if(is_type_name(buf, info) && (*info->p != '(' || (*info->p == '(' && *(info->p+1) == '*')) || strcmp(buf, "typeof") == 0) {
            info->p = p_before;
            info->sline = sline_before;

            sNodeType* result_type = NULL;
            char name[VAR_NAME_MAX+1];
            if(!parse_type(&result_type, info, name, TRUE, FALSE, FALSE))
            {
                return FALSE;
            }

            if(name[0] != '\0') {
                BOOL extern_ = FALSE;
                if(!parse_variable(node, result_type, name, extern_, info, FALSE)) 
                {
                    return FALSE;
                }
            }
            else {
                unsigned int nodes[IMPL_DEF_MAX];
                memset(nodes, 0, sizeof(unsigned int)*IMPL_DEF_MAX);
                int num_nodes = 0;

                if(anonymous_enum_node != 0)
                {
                    nodes[0] = anonymous_enum_node;
                    num_nodes++;
                }

                while(TRUE) {
                    sNodeType* result_type2 = clone_node_type(result_type);
                    if(!parse_variable_name(name, VAR_NAME_MAX, info, result_type2, TRUE))
                    {
                        return FALSE;
                    }

                    if(strcmp(name, "operator") == 0)
                    {
                        if(!parse_function(node, result_type2, name, NULL, info)) {
                            return FALSE;
                        }
                    }
                    else if(*info->p == '(') {
                        if(!parse_function(node, result_type2, name, NULL, info)) {
                            return FALSE;
                        }
                    }
                    else {
                        BOOL extern_ = FALSE;
                        if(!parse_variable(node, result_type2, name, extern_, info, FALSE)) {
                            return FALSE;
                        }
                    }

                    nodes[num_nodes++] = *node;

                    if(num_nodes >= IMPL_DEF_MAX) {
                        fprintf(stderr, "overflow define variable max");
                        return FALSE;
                    }

                    if(*info->p == ',') {
                        info->p++;
                        skip_spaces_and_lf(info);
                    }
                    else {
                        break;
                    }
                }

                if(num_nodes > 1) {
                    BOOL extern_ = FALSE;
                    *node = sNodeTree_create_define_variables(nodes, num_nodes, extern_, info);
                }
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

                *node = sNodeTree_create_function_call(fun_name, params, num_params, FALSE, FALSE, info);
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

BOOL clang_expression(unsigned int* node, sParserInfo* info) 
{
    if(!expression_and_and_or_or(node, info)) {
        return FALSE;
    }

    return TRUE;
}
