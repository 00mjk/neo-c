#include "common.h"
#include <ctype.h>

void parser_err_msg(sParserInfo* info, char* msg)
{
    fprintf(stderr, "%s:%d: %s\n", info->sname, info->sline, msg);

    info->err_output_num++;
    info->err_num++;
}

void parse_comment(sParserInfo* info)
{
    while(*info->p == '#') {
        info->p++;

        while(true) {
            if(*info->p == '\n') {
                info->p++;
                info->sline++;
                skip_spaces_and_lf(info);
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
}

void skip_spaces_and_lf(sParserInfo* info)
{
    parse_comment(info);

    while(true) {
        if(*info->p == ' ' || *info->p == '\t') {
            info->p++;
        }
        else if(*info->p == '\n') {
            info->p++;
            info->sline++;
        }
        else {
            break;
        }
    }

    parse_comment(info);
}

void skip_spaces(sParserInfo* info)
{
    parse_comment(info);
    while(*info->p == ' ' || *info->p == '\t') {
        info->p++;
    }
    parse_comment(info);
}


static bool get_number(bool minus, sCLNode** node, sParserInfo* info)
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

            if(p2 - (char*)buf >= buf_size) {
                parser_err_msg(info, "overflow node of number");
                return false;
            }
        };
        *p2 = 0;
        skip_spaces_and_lf(info);
        
        *node = sNodeTree_create_int_value(atoi(buf), info);
    }
    else {
        parser_err_msg(info, "require digits after + or -");

        *node = null;
    }

    return true;
}

string parse_word(sParserInfo* info)
{
    parse_comment(info);

    buffer*% result = new buffer.initialize();
    
    while(isalnum(*info->p) || *info->p == '_') {
        result.append_char(*info->p);
        info->p++;
    }

    skip_spaces_and_lf(info);
    
    return result.to_string();
}

void expected_next_character(char c, sParserInfo* info) 
{
    parse_comment(info);
    if(*info->p == c) {
        info->p++;
        skip_spaces_and_lf(info);
    }
    else {
        parser_err_msg(info, xsprintf("expects next character %c, but it is %c", c, *info->p));

        info->p++;
        skip_spaces_and_lf(info);
    }
}

bool parse_if_expression(sCLNode** node, sParserInfo* info) 
{
    expected_next_character('(', info);

    sCLNode* exp = null;
    if(!expression(&exp, info)) {
        return false;
    };

    expected_next_character(')', info);
    expected_next_character('{', info);

    sCLNodeBlock* node_block = null;
    if(!parse_block(&node_block, info)) {
        return false;
    }

    expected_next_character('}', info);

    char* p_before = info.p;
    int sline_before = info.sline;

    var word = parse_word(info);

    int num_elif = 0;
    sCLNode* elif_expressions[ELIF_MAX];
    sCLNodeBlock* elif_blocks[ELIF_MAX];

    if(strcmp(word, "elif") == 0) {
        while(true) {
            expected_next_character('(', info);

            sCLNode* exp = null;
            if(!expression(&exp, info)) {
                return false;
            };

            expected_next_character(')', info);
            expected_next_character('{', info);

            sCLNodeBlock* node_block = null;
            if(!parse_block(&node_block, info)) {
                return false;
            }

            expected_next_character('}', info);

            elif_expressions[num_elif] = exp;
            elif_blocks[num_elif] = node_block;

            num_elif++;

            if(num_elif >= ELIF_MAX) {
                fprintf(stderr, "overflow elif number");
                exit(2);
            }

            char* p_before = info.p;
            int sline_before = info.sline;

            word = parse_word(info);

            if(strcmp(word, "else") == 0) {
                break;
            }
            else if(strcmp(word, "elif") != 0) {
                info.p = p_before;
                info.sline = sline_before;
                break;
            }
        }
    }
    else if(strcmp(word, "else") == 0) {
    }
    else {
        info.p = p_before;
        info.sline = sline_before;
    }

    p_before = info.p;
    sline_before = info.sline;

    sCLNodeBlock* else_block = null;

    if(strcmp(word, "else") == 0) {
        expected_next_character('{', info);

        sCLNodeBlock* node_block = null;
        if(!parse_block(&node_block, info)) {
            return false;
        }

        expected_next_character('}', info);

        else_block = node_block;
    }
    else {
        info.p = p_before;
        info.sline = sline_before;
    };
    
    *node = sNodeTree_create_if_expression(exp, node_block, num_elif, elif_expressions, elif_blocks, else_block, info);

    return true;
}

bool parse_type(sCLType** type, sParserInfo* info)
{
    string name = parse_word(info);

    *type = create_type(name, info);

    if((*type).mClass == null) {
        parser_err_msg(info, xsprintf("invalid type name(%s)", name));
    }

    return true;
}

bool parse_params(sCLParam* params, int* num_params, sParserInfo* info)
{
    *num_params = 0;

    expected_next_character('(', info);

    while(true) {
        if(*info->p == ')') {
            break;
        }

        string var_name = parse_word(info);

        expected_next_character(':', info);

        sCLType* type = null;

        if(!parse_type(&type, info)) {
            return false;
        }

        xstrncpy(params[*num_params].mName, var_name, VAR_NAME_MAX);
        params[*num_params].mType = type;

        if(*info->p == ',') {
            info->p++;
            skip_spaces_and_lf(info);
        }
        else if(*info->p == ')') {
            break;
        }
        else if(*info->p == '\0') {
            parser_err_msg(info, "Unexpected source end in parsing parametors");
            return false;
        }
    }

    expected_next_character(')', info);

    return true;
}

bool parse_lambda_expression(sCLNode** node, sParserInfo* info) 
{
    sCLParam params[PARAMS_MAX];
    int num_params = 0;

    if(!parse_params(params, &num_params, info)) {
        return false;
    }

    expected_next_character('{', info);

    sCLNodeBlock* node_block = null;
    if(!parse_block(&node_block, info)) {
        return false;
    }

    expected_next_character('}', info);

    *node = sNodeTree_create_lambda(num_params, params, node_block, info);

    return true;
}

bool parse_class(sCLNode** node, sParserInfo* info) 
{
    string name = parse_word(info);

    buffer*% buf = new buffer.initialize();

    buf.append_str(name);
    buf.append_char(' ');

    bool dquort = false;
    int nest = 0;
    while(true) {
        if(dquort && *info->p == '\\') {
            buf.append_char(*info->p);
            info->p++;
            buf.append_char(*info->p);
            info->p++;
        }
        else if(!dquort && *info->p == '\'') {
            buf.append_char(*info->p);
            info->p++;
            buf.append_char(*info->p);
            info->p++;
        }
        else if(*info->p == '"') {
            dquort = !dquort;
            buf.append_char(*info->p);
            info->p++;
        }
        else if(dquort) {
            buf.append_char(*info->p);
            info->p++;
        }
        else if(*info->p == '{') {
            buf.append_char(*info->p);
            info->p++;

            nest++;
        }
        else if(*info->p == '}') {
            buf.append_char(*info->p);
            info->p++;

            if(nest == 1) {
                skip_spaces_and_lf(info);
                break;
            }

            nest--;
        }
        else {
            buf.append_char(*info->p);
            info->p++;
        }
    };

    *node = sNodeTree_create_class(buf.buf, info);

    return true;
}

bool parse_calling_params(int* num_params, sCLNode** params, sParserInfo* info) 
{
    while(true) {
        if(*info->p == ')') {
            break;
        }

        sCLNode* node = null;
        if(!expression(&node, info)) {
            return false;
        };

        params[*num_params] = node;
        (*num_params)++;

        if(*num_params >= PARAMS_MAX) {
            fprintf(stderr, "overflow pram number\n");
            exit(1);
        }

        if(*info->p == ')') {
            break;
        }
        else if(*info->p == '\0') {
            parser_err_msg(info, "unexpexted source end. require ) or ,");
        }
        else if(*info->p == ',') {
            info->p++;
            skip_spaces_and_lf(info);
        }
    }
    
    return true;
}

static bool postposition_operator(sCLNode** node, sParserInfo* info)
{
    if(*node == null) {
        return true;
    }

    while(*info->p) {
        if(*info->p == '.') {
            info->p++;
            skip_spaces_and_lf(info);

            var name = parse_word(info);

            /// method ///
            if(*info->p == '(') {
                info->p++;
                skip_spaces_and_lf(info);

                int num_params = 0;
                sCLNode* params[PARAMS_MAX];

                params[0] = *node;
                num_params = 1;

                if(!parse_calling_params(&num_params, params, info)) 
                {
                    return false;
                }

                expected_next_character(')', info);

                *node = sNodeTree_create_method_call(name, num_params, params, info);
            }
            //// field ///
            else {
                break;
            }
        }
        else {
            break;
        }
    }

    return true;
}

static bool expression_node(sCLNode** node, sParserInfo* info)
{
    int num_method_chains = 0;

    /// number ///
    if((*info->p == '-' && *(info->p+1) != '=' && *(info->p+1) != '-' && *(info->p+1) != '>') || (*info->p == '+' && *(info->p+1) != '=' && *(info->p+1) != '+')) 
    {
        if(*info->p == '-') {
            info->p++;
            skip_spaces_and_lf(info);

            if(isdigit(*info->p)) {
                if(!get_number(true, node, info)) {
                    return false;
                }
            }
            else {
                if(!expression_node(node, info)) {
                    return false;
                }

                if(*node == 0) {
                    parser_err_msg(info, "require right value for -");
                }

//                *node = sNodeTree_create_operand(kOpMinus, *node, 0, 0, info);
            }
        }
        else if(*info->p =='+') {
            info->p++;
            skip_spaces_and_lf(info);

            if(isdigit(*info->p)) {
                if(!get_number(false, node, info)) {
                    return false;
                }
            }
            else {
                if(!expression_node(node, info)) {
                    return false;
                }

                if(*node == 0) {
                    parser_err_msg(info, "require right value for +");
                }
            }
        }
    }
    /// number ///
    else if(isdigit(*info->p)) {
        if(!get_number(false, node, info)) {
            return false;
        }
    }
    /// alnum ///
    else if(isalpha(*info->p) || *info->p == '_') {
        var word = parse_word(info);

        sCLClass* klass = gClasses.at(word, null);
        
        if(strcmp(word, "var") == 0) {
            if(isalpha(*info->p) || *info->p == '_') {
                var var_name = parse_word(info);
                
                check_already_added_variable(info, var_name);
                add_variable_to_table(info, var_name, null, false);
                
                if(*info->p == '=') {
                    info->p++;
                    skip_spaces_and_lf(info);
                    
                    sCLNode* exp = null;
                    if(!expression(&exp, info)) {
                        return false;
                    };
                    
                    *node = sNodeTree_create_store_variable(var_name, exp, info);
                }
                else {
                    parser_err_msg(info, "require right value for the definition variable");
                }
            }
            else {
                parser_err_msg(info, "require var name");
            }
        }
        else if(strcmp(word, "true") == 0) {
            *node = sNodeTree_create_true_value(info);
        }
        else if(strcmp(word, "false") == 0) {
            *node = sNodeTree_create_false_value(info);
        }
        else if(strcmp(word, "if") == 0) {
            if(!parse_if_expression(node, info)) {
                return false;
            }
        }
        else if(strcmp(word, "lambda") == 0) {
            if(!parse_lambda_expression(node, info)) {
                return false;
            }
        }
        else if(strcmp(word, "class") == 0) {
            if(!parse_class(node, info)) {
                return false;
            }
        }
        else if(klass && *info->p == '(') {
            info->p++;
            skip_spaces_and_lf(info);

            expected_next_character(')', info);

            *node = sNodeTree_create_object(klass.mName, info);
        }
        else {
            if(*info->p == '=' && *(info->p+1) != '=') {
                info->p++;
                skip_spaces_and_lf(info);
                
                sCLNode* exp = null;
                if(!expression(&exp, info)) {
                    return false;
                };
                
                *node = sNodeTree_create_store_variable(word, exp, info);
            }
            else {
                *node = sNodeTree_create_load_variable(word, info);
            }
        }
    }
    /// string ///
    else if(*info->p == '"') {
        info->p++;
        
        int sline = info->sline;
        
        buffer*% buf = new buffer.initialize();
        
        while(true) {
            if(*info->p == '"') {
                info->p++;
                skip_spaces_and_lf(info);
                break;
            }
            else if(*info->p == '\0') {
                parser_err_msg(info, xsprintf("close \" character from the line %d\n", sline));
                return false;
            }
            else if(*info->p == '\\') {
                info->p++;

                char c;
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

                buf.append_char(c);
            }
            else if(*info->p == '\n') {
                info->sline++;

                buf.append_char(*info->p);
                info->p++;
            }
            else {
                buf.append_char(*info->p);
                info->p++;
            }
        }

        skip_spaces_and_lf(info);
        
        var str = buf.to_string();
        
        *node = sNodeTree_create_string_value(str, info);
    }
    /// comment ///
    else if(*info->p == '#') {
        parse_comment(info);

        sCLNode* node2 = null;
        if(!expression(&node2, info)) {
            return false;
        };

        *node = node2;
    }
    else {
        parser_err_msg(info, xsprintf("unexpected character %c", *info->p));
        return false;
    }

    if(!postposition_operator(node, info)) {
        return false;
    }
    
    return true;
}

// from left to right order
static bool expression_add_sub(sCLNode** node, sParserInfo* info)
{
    if(!expression_node(node, info)) {
        return false;
    }
    if(*node == 0) {
        return true;
    }

    while(*info->p) {
        if(*info->p == '+' && *(info->p+1) != '=' && *(info->p+1) != '+') {
            info->p++;
            skip_spaces_and_lf(info);

            sCLNode* right = null;
            if(!expression_node(&right, info)) {
                return false;
            }

            if(right == null) {
                parser_err_msg(info, "require right value for operator +");
            };

            *node = sNodeTree_create_add(*node, right, info);
        }
        else if(*info->p == '-' && *(info->p+1) != '=' && *(info->p+1) != '-' && *(info->p+1) != '>') {
            info->p++;
            skip_spaces_and_lf(info);

            sCLNode* right = null;
            if(!expression_node(&right, info)) {
                return false;
            }

            if(right == null) {
                parser_err_msg(info, "require right value for operator -");
            }

//            *node = sNodeTree_create_sub(*node, right, info);
        }
        else {
            break;
        }
    }

    return true;
}

static bool expression_comparison_equal_operator(sCLNode** node, sParserInfo* info)
{
    if(!expression_add_sub(node, info)) {
        return false;
    }
    if(*node == 0) {
        return true;
    }


    while(*info->p) {
        if(*info->p == '=' && *(info->p+1) == '=') {
            info->p += 2;
            skip_spaces_and_lf(info);

            sCLNode* right = null;
            if(!expression_add_sub(&right, info)) {
                return false;
            }

            if(right == null) {
                parser_err_msg(info, "require right value for operator +");
            };

            *node = sNodeTree_create_equal(*node, right, info);
        }
        else if(*info->p == '!' && *(info->p+1) == '=') {
            info->p += 2;
            skip_spaces_and_lf(info);

            sCLNode* right = null;
            if(!expression_add_sub(&right, info)) {
                return false;
            }

            if(right == null) {
                parser_err_msg(info, "require right value for operator +");
            };

            *node = sNodeTree_create_not_equal(*node, right, info);
        }
        else {
            break;
        }
    }

    return true;
}

bool expression(sCLNode** node, sParserInfo* info) 
{
    parse_comment(info);
    skip_spaces_and_lf(info);

    if(!expression_comparison_equal_operator(node, info)) {
        return false;
    }

    parse_comment(info);

    return true;
}
