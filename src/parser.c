#include "common.h"

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
        fprintf(stderr, "%s:%d: %s\n", info->sname, info->sline, msg2);
    }

    output_num++;
}

void skip_spaces_and_lf(sParserInfo* info)
{
    while(*info->p == ' ' || *info->p == '\t' || (*info->p == '\n' && (info->sline)++)) {
        info->p++;
    }
}

static void skip_spaces(sParserInfo* info)
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

BOOL parse_type(sNodeType** result_type, sParserInfo* info)
{
    char type_name[VAR_NAME_MAX];

    *result_type = NULL;

    if(!parse_word(type_name, VAR_NAME_MAX, info, TRUE, FALSE)) {
        return FALSE;
    }


    if(*result_type == NULL) {
        *result_type = create_node_type_with_class_name(type_name);
    }

    if(*result_type == NULL || (*result_type)->mClass == NULL) {
        parser_err_msg(info, "%s is not defined class(2)", type_name);
        info->err_num++;
    }


    /// nullable ///
    if(*info->p == '?') {
        info->p++;
        skip_spaces_and_lf(info);

        (*result_type)->mNullable = TRUE;
    }

    /// pointer ///
    if(*info->p == '*') {
        int pointer_num = 0;
        
        while(*info->p == '*') {
            pointer_num++;
            info->p++;
            skip_spaces_and_lf(info);
        }
        skip_spaces_and_lf(info);

        (*result_type)->mPointerNum = pointer_num;
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
            BOOL param_var = FALSE;
            add_variable_to_table(info->lv_table, buf, node_type, readonly, param_var);
        }
    }
    else {
        node_type = NULL;
        check_already_added_variable(info->lv_table, buf, info);
        BOOL param_var = FALSE;
        add_variable_to_table(info->lv_table, buf, node_type, readonly, param_var);
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
    }

    return TRUE;
}

static BOOL parse_param(sParserParam* param, sParserInfo* info)
{
    /// variable name ///
    if(!parse_word(param->mName, VAR_NAME_MAX, info, TRUE, FALSE)) {
        return FALSE;
    }

    expect_next_character_with_one_forward(":", info);

    if(!parse_type(&param->mType, info)) {
        return FALSE;
    }

    /// get default argment. ///
    if(*info->p == '=') {
        info->p++;
        skip_spaces_and_lf(info);

        char* p = info->p;

        unsigned int node = 0;
        if(!expression(&node, info)) {
            return FALSE;
        }

        char* p2 = info->p;

        if(p2 - p > METHOD_DEFAULT_PARAM_MAX) {
            parser_err_msg(info, "overflow method default param character");
            return FALSE;
        }

        memcpy(param->mDefaultValue, p, p2 - p);
        param->mDefaultValue[p2 -p] = '\0';
    }
    else {
        param->mDefaultValue[0] = '\0';
    }

    return TRUE;
}

/// character_type --> 0: () 1: ||
static BOOL parse_params(sParserParam* params, int* num_params, sParserInfo* info, int character_type)
{
    if((character_type == 0 && *info->p == ')') || (character_type == 1 && *info->p == '|')) {
        info->p++;
        skip_spaces_and_lf(info);

        *num_params = 0;

        return TRUE;
    }

    while(1) {
        if(!parse_param(params + *num_params, info)) {
            return FALSE;
        }

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

static BOOL parse_function(unsigned int* node, sParserInfo* info)
{
    /// function name ///
    char fun_name[VAR_NAME_MAX];

    if(!parse_word(fun_name, VAR_NAME_MAX, info, TRUE, FALSE)) {
        return FALSE;
    }

    expect_next_character_with_one_forward("(", info);

    /// params ///
    sParserParam params[PARAMS_MAX];
    memset(params, 0, sizeof(sParserParam)*PARAMS_MAX);
    int num_params = 0;

    /// parse_params ///
    if(!parse_params(params, &num_params, info, 0))
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

    if(*info->p == ';') {
        info->p++;
        skip_spaces_and_lf(info);

        *node = sNodeTree_create_external_function(fun_name, params, num_params, result_type, info);
    }
    else {
        sNodeBlock* node_block = ALLOC sNodeBlock_alloc();
        expect_next_character_with_one_forward("{", info);
        sVarTable* old_table = info->lv_table;

        info->lv_table = init_block_vtable(old_table);
        int i;
        for(i=0; i<num_params; i++) {
            sParserParam* param = params + i;

            BOOL readonly = TRUE;
            BOOL param_var = TRUE;
            if(!add_variable_to_table(info->lv_table, param->mName, param->mType, readonly, param_var))
            {
                return FALSE;
            }
        }

        if(!parse_block(node_block, info)) {
            sNodeBlock_free(node_block);
            return FALSE;
        }

        expect_next_character_with_one_forward("}", info);
        info->lv_table = old_table;

        *node = sNodeTree_create_function(fun_name, params, num_params, result_type, MANAGED node_block, info);
    }

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

    /// simple lambda params ///

    return TRUE;
}

static BOOL if_expression(unsigned int* node, sParserInfo* info)
{
    char* sname = info->sname;
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
    if(!parse_block_easy(ALLOC &if_node_block, info))
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
            if(!parse_block_easy(ALLOC &else_node_block, info))
            {
                return FALSE;
            }
            break;
        }
        else if(strcmp(buf, "elif") == 0) {
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

            if(!parse_block_easy(ALLOC &elif_node_blocks[elif_num], info))
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
            info->p = saved_p;
            info->sline = saved_sline;
            break;
        }
    }

    *node = sNodeTree_if_expression(expression_node, MANAGED if_node_block, elif_expression_nodes, elif_node_blocks, elif_num, MANAGED else_node_block, info, sname, sline);

    return TRUE;
}

static BOOL parse_struct(unsigned int* node, sParserInfo* info) 
{
    char* sname = info->sname;
    int sline = info->sline;

    char struct_name[VAR_NAME_MAX];
    int num_fields = 0;
    char field_names[STRUCT_FIELD_MAX][VAR_NAME_MAX];
    sNodeType* fields[STRUCT_FIELD_MAX];

    char buf[VAR_NAME_MAX];
    if(!parse_word(buf, VAR_NAME_MAX, info, TRUE, FALSE)) {
        return FALSE;
    }

    xstrncpy(struct_name, buf, VAR_NAME_MAX);

    expect_next_character_with_one_forward("{", info);

    int n = 0;
    while(TRUE) {
        char buf[VAR_NAME_MAX];

        if(!parse_word(buf, VAR_NAME_MAX, info, TRUE, FALSE)) {
            return FALSE;
        }

        xstrncpy(field_names[num_fields], buf, VAR_NAME_MAX);

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
    }

    if(*info->p == ';') {
        info->p++;
        skip_spaces_and_lf(info);
    }

    sCLClass* struct_class = alloc_struct(struct_name, num_fields, field_names, fields);

    sNodeType* struct_type = create_node_type_with_class_pointer(struct_class);

    *node = sNodeTree_struct(struct_type, info, sname, sline);

    return TRUE;
}

static BOOL postposition_operator(unsigned int* node, sParserInfo* info)
{
    if(*node == 0) {
        return TRUE;
    }

    while(*info->p) {
        /// call method or access field ///
        if(*info->p == '.')
        {
            info->p++;
            skip_spaces_and_lf(info);

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
                    char* func_name = buf;

                    unsigned int params[PARAMS_MAX];
                    int num_params = 0;

                    params[0] = *node;
                    num_params++;

                    if(!parse_funcation_call_params(&num_params, params, info)) 
                    {
                        return FALSE;
                    }

                    *node = sNodeTree_create_function_call(func_name, params, num_params, info);
                }
                /// access fields ///
                else {
                    if(*info->p == '=' && *(info->p +1) != '=') {
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
                            *node = sNodeTree_create_store_field(buf, *node, right_node, info);
                        }
                    }
                    else {
                        *node = sNodeTree_create_load_field(buf, *node, info);
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
        else {
            break;
        }
    }

    return TRUE;
}

static BOOL expression_node(unsigned int* node, sParserInfo* info)
{
    /// number ///
    if((*info->p == '-' && *(info->p+1) != '=' && *(info->p+1) != '-' && *(info->p+1) != '>') || (*info->p == '+' && *(info->p+1) != '=' && *(info->p+1) != '+')) 
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
    }
    else if(isdigit(*info->p)) {
        if(!get_number(FALSE, node, info)) {
            return FALSE;
        }
    }
    /// c string ///
    else if((*info->p == 'C' || *info->p == 'c') && *(info->p+1) == '"') {
        info->p+=2;

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

        *node = sNodeTree_create_c_string_value(MANAGED value.mBuf, value.mLen, info);
    }
    else if(isalpha(*info->p)) {
        char buf[VAR_NAME_MAX+1];
        if(!parse_word(buf, VAR_NAME_MAX, info, TRUE, FALSE))
        {
            return FALSE;
        }

        sCLClass* klass = get_class(buf);

        if(strcmp(buf, "var") == 0) {
            if(!parse_var(node, info, FALSE)) {
                return FALSE;
            }
        }
        else if(strcmp(buf, "struct") == 0) {
            if(!parse_struct(node, info)) {
                return FALSE;
            }
        }
        else if(strcmp(buf, "val") == 0) {
            if(!parse_var(node, info, TRUE)) {
                return FALSE;
            }
        }
        else if(strcmp(buf, "def") == 0) {
            if(!parse_function(node, info)) {
                return FALSE;
            }
        }
        else if(strcmp(buf, "if") == 0) {
            if(!if_expression(node, info)) {
                return FALSE;
            }
        }
        else if(klass && klass->mFlags & CLASS_FLAGS_STRUCT)
        {
            expect_next_character_with_one_forward("(", info);
            expect_next_character_with_one_forward(")", info);

            sNodeType* node_type = create_node_type_with_class_pointer(klass);

            *node = sNodeTree_create_object(node_type, info->sname, info->sline);
        }
        else {
            if(*info->p == '(') {
                char* func_name = buf;

                unsigned int params[PARAMS_MAX];
                int num_params = 0;

                if(!parse_funcation_call_params(&num_params, params, info)) 
                {
                    return FALSE;
                }

                *node = sNodeTree_create_function_call(func_name, params, num_params, info);
            }
            /// local variable ///
            else if(get_variable_from_table(info->lv_table, buf))
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
                        sVar* var = get_variable_from_table(info->lv_table, buf);

                        if(var && var->mReadOnly) {
                            parser_err_msg(info, "This is readonly variable.");
                            info->err_num++;

                            *node = 0;
                        }
                        else {
                            *node = sNodeTree_create_store_variable(buf, right_node, FALSE, info);
                        }
                    }
                }
                else {
                    *node = sNodeTree_create_load_variable(buf, info);
                }
            }
            else {
                parser_err_msg(info, "undeclared %s\n", buf);
                info->err_num++;
            }
        }
    }

    /// post position expression ///
    if(!postposition_operator(node, info))
    {
        return FALSE;
    }

    return TRUE;
}


// from left to right order
static BOOL expression_add_sub(unsigned int* node, sParserInfo* info)
{
    if(!expression_node(node, info)) {
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
            if(!expression_node(&right, info)) {
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
            if(!expression_node(&right, info)) {
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
static BOOL expression_equal(unsigned int* node, sParserInfo* info)
{
    if(!expression_add_sub(node, info)) {
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

BOOL expression(unsigned int* node, sParserInfo* info) 
{
    skip_spaces_and_lf(info);

    if(!expression_equal(node, info)) {
        return FALSE;
    }

    return TRUE;
}
