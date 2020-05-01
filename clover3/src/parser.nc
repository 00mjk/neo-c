#include "common.h"
#include <ctype.h>

void parser_err_msg(sParserInfo* info, char* msg)
{
    fprintf(stderr, "%s:%d: %s\n", info->sname, info->sline, msg);

    info->err_output_num++;
    info->err_num++;
}

void skip_spaces_and_lf(sParserInfo* info)
{
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
}

void skip_spaces(sParserInfo* info)
{
    while(*info->p == ' ' || *info->p == '\t') {
        info->p++;
    }
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

        sCLNode* node2 = null;
        if(!expression(&node2, info)) {
            return false;
        };

        *node = node2;
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
    skip_spaces_and_lf(info);

    if(!expression_comparison_equal_operator(node, info)) {
        return false;
    }

    return true;
}
