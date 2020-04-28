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

buffer*% parse_word(sParserInfo* info)
{
    buffer*% result = new buffer.initialize();
    
    while(isalnum(*info->p) || *info->p == '_') {
        result.append_char(*info->p);
        info->p++;
    }

    skip_spaces_and_lf(info);
    
    return result;
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
        var word = parse_word(info).to_string();
        
        if(strcmp(word, "var") == 0) {
            if(isalpha(*info->p) || *info->p == '_') {
                var var_name = parse_word(info).to_string();
                
                check_already_added_variable(info, var_name);
                add_variable_to_table(info, var_name, null, false);
                
                if(*info->p == '=') {
                    info->p++;
                    skip_spaces_and_lf(info);
                    
                    sCLNode* exp = null;
                    if(!expression_node(&exp, info)) {
                        return false;
                    };
                    
                    *node = sNodeTree_create_store_variable(var_name, exp, info);
                }
            }
            else {
                parser_err_msg(info, "require var name");
            }
        }
/*
        else {
            sVar* v = get_variable_from_table(info, word);
        }
*/
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

bool expression(sCLNode** node, sParserInfo* info) 
{
    skip_spaces_and_lf(info);

    if(!expression_add_sub(node, info)) {
        return false;
    }

    return true;
}
