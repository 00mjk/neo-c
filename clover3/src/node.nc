#include "common.h"

static void compile_err_msg(sCompileInfo* info, char* msg)
{
    fprintf(stderr, "%s %d: %s\n", info.sname, info.sline, msg);
    
    info.err_num++;

    info.type = create_type("int", info);
}

sCLNode* alloc_node(sParserInfo* info)
{
    sCLNode* result = borrow new sCLNode;
    
    info.nodes.push_back(dummy_heap result);
    
    return result;
}

sCLNode* sNodeTree_create_int_value(int value, sParserInfo* info)
{
    sCLNode* result = alloc_node(info);
    
    result.type = kNodeTypeInt;
    
    xstrncpy(result.sname, info.sname, PATH_MAX);
    result.sline = info.sline;
    
    result.uValue.mIntValue = value;

    result.left = null;
    result.right = null;
    result.middle = null;

    return result;
}

static bool compile_int_value(sCLNode* node, sCompileInfo* info)
{
    if(!info.no_output) {
        info.codes.append_int(OP_INT_VALUE);
        info.codes.append_int(node.uValue.mIntValue);
    }
    
    info.type = create_type("int", info);
    info.stack_num++;
    
    return true;
}

sCLNode* sNodeTree_create_add(sCLNode* left, sCLNode* right, sParserInfo* info)
{
    sCLNode* result = alloc_node(info);
    
    result.type = kNodeTypeAdd;
    
    xstrncpy(result.sname, info.sname, PATH_MAX);
    result.sline = info.sline;

    result.left = left;
    result.right = right;
    result.middle = null;

    return result;
}

sCLNode* sNodeTree_create_string_value(char* value, sParserInfo* info)
{
    sCLNode* result = alloc_node(info);
    
    result.type = kNodeTypeString;
    
    xstrncpy(result.sname, info.sname, PATH_MAX);
    result.sline = info.sline;
    
    result.mStringValue = string(value);

    result.left = null;
    result.right = null;
    result.middle = null;

    return result;
}

static bool compile_strig_value(sCLNode* node, sCompileInfo* info)
{
    char* str_value = borrow node.mStringValue;
    
    if(!info.no_output) {
        info.codes.append_int(OP_STRING_VALUE);
        info.codes.append_str(str_value);

        info.codes.alignment();
    }
    
    info.type = create_type("string", info);
    info.stack_num++;
    
    return true;
}

static bool compile_add(sCLNode* node, sCompileInfo* info)
{
    if(!compile(node.left, info)) {
        return false;
    }
    
    sCLType* left_type = info.type;
    
    if(!compile(node.right, info)) {
        return false;
    }
    
    sCLType* right_type = info.type;
    
    if(!type_identify(left_type, right_type)) {
        compile_err_msg(info, "The different type between left type and rigt type at + operator");
        puts("left type -->");
        show_type(left_type);
        puts("right type -->");
        show_type(right_type);
        
        return true;
    }
    
    if(type_identify_with_class_name(left_type, "int", info)) {
        if(!info.no_output) {
            info.codes.append_int(OP_IADD);
        }
        
        info.type = create_type("int", info);
    }
    else {
        compile_err_msg(info, "This type is invalid for operator + ");
        show_type(left_type);
        
        return true;
    }
    
    info.stack_num -= 2;
    info.stack_num++;
    
    return true;
}

sCLNode* sNodeTree_create_store_variable(char* var_name, sCLNode* exp, sParserInfo* info)
{
    sCLNode* result = alloc_node(info);
    
    result.type = kNodeTypeStoreVariable;
    
    xstrncpy(result.sname, info.sname, PATH_MAX);
    result.sline = info.sline;
    
    result.mStringValue = string(var_name);
    
    result.left = exp;
    result.right = null;
    result.middle = null;

    return result;
}

static bool compile_store_variable(sCLNode* node, sCompileInfo* info)
{
    if(!compile(node.left, info)) {
        return false;
    }

    sCLType*% right_value_type = clone info.type;
    
    char* var_name = borrow node.mStringValue;
    
    sVar* v = get_variable_from_table(info.pinfo, var_name);
    
    if(v == null) {
        compile_err_msg(info, xsprintf("The variable named %s is not defined", var_name));
        return true;
    }

    v.mType = right_value_type;
    
    if(!info.no_output) {
        info.codes.append_int(OP_STORE_VARIABLE);
        info.codes.append_int(v.mIndex);
    }
    
    return true;
}

sCLNode* sNodeTree_create_load_variable(char* var_name, sParserInfo* info)
{
    sCLNode* result = alloc_node(info);
    
    result.type = kNodeTypeLoadVariable;
    
    xstrncpy(result.sname, info.sname, PATH_MAX);
    result.sline = info.sline;
    
    result.mStringValue = string(var_name);
    
    result.left = null;
    result.right = null;
    result.middle = null;

    return result;
}

static bool compile_load_variable(sCLNode* node, sCompileInfo* info)
{
    char* var_name = borrow node.mStringValue;
    
    sVar* v = get_variable_from_table(info.pinfo, var_name);
    
    if(v == null) {
        compile_err_msg(info, xsprintf("The variable named %s is not defined", var_name));
        return true;
    }
    
    if(!info.no_output) {
        info.codes.append_int(OP_LOAD_VARIABLE);
        info.codes.append_int(v.mIndex);
    }
    
    info.stack_num++;

    info.type = borrow v.mType;
    
    return true;
}

sCLNode* sNodeTree_create_equal(sCLNode* left, sCLNode* right, sParserInfo* info)
{
    sCLNode* result = alloc_node(info);
    
    result.type = kNodeTypeEqual;
    
    xstrncpy(result.sname, info.sname, PATH_MAX);
    result.sline = info.sline;
    
    result.left = left;
    result.right = right;
    result.middle = null;

    return result;
}

static bool compile_equal(sCLNode* node, sCompileInfo* info)
{
    if(!compile(node.left, info)) {
        return false;
    }
    
    sCLType* left_type = info.type;
    
    if(!compile(node.right, info)) {
        return false;
    }
    
    sCLType* right_type = info.type;
    
    if(!type_identify(left_type, right_type)) {
        compile_err_msg(info, "The different type between left type and rigt type at + operator");
        puts("left type -->");
        show_type(left_type);
        puts("right type -->");
        show_type(right_type);
        
        return true;
    }
    
    if(type_identify_with_class_name(left_type, "int", info)) {
        if(!info.no_output) {
            info.codes.append_int(OP_IEQ);
        }
        
        info.type = create_type("bool", info);
    }
    else {
        compile_err_msg(info, "This type is invalid for operator + ");
        show_type(left_type);
        
        return true;
    }
    
    info.stack_num -= 2;
    info.stack_num++;
    
    return true;
}

sCLNode* sNodeTree_create_not_equal(sCLNode* left, sCLNode* right, sParserInfo* info)
{
    sCLNode* result = alloc_node(info);
    
    result.type = kNodeTypeNotEqual;
    
    xstrncpy(result.sname, info.sname, PATH_MAX);
    result.sline = info.sline;
    
    result.left = left;
    result.right = right;
    result.middle = null;

    return result;
}

static bool compile_not_equal(sCLNode* node, sCompileInfo* info)
{
    if(!compile(node.left, info)) {
        return false;
    }
    
    sCLType* left_type = info.type;
    
    if(!compile(node.right, info)) {
        return false;
    }
    
    sCLType* right_type = info.type;
    
    if(!type_identify(left_type, right_type)) {
        compile_err_msg(info, "The different type between left type and rigt type at + operator");
        puts("left type -->");
        show_type(left_type);
        puts("right type -->");
        show_type(right_type);
        
        return true;
    }
    
    if(type_identify_with_class_name(left_type, "int", info)) {
        if(!info.no_output) {
            info.codes.append_int(OP_INOTEQ);
        }
        
        info.type = create_type("bool", info);
    }
    else {
        compile_err_msg(info, "This type is invalid for operator + ");
        show_type(left_type);
        
        return true;
    }
    
    info.stack_num -= 2;
    info.stack_num++;
    
    return true;
}

sCLNode* sNodeTree_create_true_value(sParserInfo* info)
{
    sCLNode* result = alloc_node(info);
    
    result.type = kNodeTypeTrue;
    
    xstrncpy(result.sname, info.sname, PATH_MAX);
    result.sline = info.sline;
    
    result.left = null;
    result.right = null;
    result.middle = null;

    return result;
}

static bool compile_true_value(sCLNode* node, sCompileInfo* info)
{
    if(!info.no_output) {
        info.codes.append_int(OP_INT_VALUE);
        info.codes.append_int(1);
    }

    info.type = create_type("bool", info);
    info.stack_num++;
    
    return true;
}

sCLNode* sNodeTree_create_false_value(sParserInfo* info)
{
    sCLNode* result = alloc_node(info);
    
    result.type = kNodeTypeFalse;
    
    xstrncpy(result.sname, info.sname, PATH_MAX);
    result.sline = info.sline;
    
    result.left = null;
    result.right = null;
    result.middle = null;

    return result;
}

static bool compile_false_value(sCLNode* node, sCompileInfo* info)
{
    if(!info.no_output) {
        info.codes.append_int(OP_INT_VALUE);
        info.codes.append_int(0);
    }

    info.type = create_type("bool", info);
    info.stack_num++;
    
    return true;
}

sCLNode* sNodeTree_create_if_expression(sCLNode* if_expression, sCLNodeBlock* if_node_block, int num_elif, sCLNode** elif_expressions, sCLNodeBlock** elif_blocks, sCLNodeBlock* else_block, sParserInfo* info)
{
    sCLNode* result = alloc_node(info);
    
    result.type = kNodeTypeIf;
    
    xstrncpy(result.sname, info.sname, PATH_MAX);
    result.sline = info.sline;

    result.uValue.uIfExpression.mIfExpression = if_expression;
    result.uValue.uIfExpression.mIfNodeBlock = if_node_block;
    result.uValue.uIfExpression.mNumElif = num_elif;
    for(int i=0; i<num_elif; i++) {
        result.uValue.uIfExpression.mElifExpressions[i] = elif_expressions[i];
        result.uValue.uIfExpression.mElifBlocks[i] = elif_blocks[i];
    }
    result.uValue.uIfExpression.mElseBlock = else_block;

    result.left = null;
    result.right = null;
    result.middle = null;

    return result;
}

static bool compile_if_expression(sCLNode* node, sCompileInfo* info)
{
    var if_expression = node.uValue.uIfExpression.mIfExpression;
    var if_node_block = node.uValue.uIfExpression.mIfNodeBlock;
    var num_elif = node.uValue.uIfExpression.mNumElif;
    sCLNode** elif_expressions = (sCLNode**)node.uValue.uIfExpression.mElifExpressions;
    sCLNodeBlock** elif_blocks = (sCLNodeBlock**)node.uValue.uIfExpression.mElifBlocks;
    sCLNodeBlock* else_block = node.uValue.uIfExpression.mElseBlock;

    if(!compile(if_expression, info)) {
        return false;
    }

    if(!type_identify_with_class_name(info.type, "bool", info)) {
        compile_err_msg(info, "The condition expression of if requires bool type");
        return true;
    }

    int len = 0;
    if(!info.no_output) {
        info.codes.append_int(OP_COND_JUMP);
        info.codes.append_int(2);

        info.codes.append_int(OP_GOTO);
        len = info.codes.len;
        info.codes.append_int(0);
    }

    info.stack_num--;

    if(!compile_block(if_node_block, info)) {
        return false;
    }


    if(num_elif > 0) {
        for(int i=0; i<num_elif; i++) {
            if(!info.no_output) {
                int* p = (int*)(info.codes.buf + len);
                *p = info.codes.len;
            }

            sCLNode* expression = elif_expressions[i];
            sCLNodeBlock* node_block = elif_blocks[i];

            if(!compile(expression, info)) {
                return false;
            }

            if(!type_identify_with_class_name(info.type, "bool", info)) {
                compile_err_msg(info, "The condition expression of elif requires bool type");
                return true;
            }

            if(!info.no_output) {
                info.codes.append_int(OP_COND_JUMP);
                info.codes.append_int(2);

                info.codes.append_int(OP_GOTO);
                len = info.codes.len;
                info.codes.append_int(0);
            }

            info.stack_num--;

            if(!compile_block(node_block, info)) {
                return false;
            }

            if(!info.no_output) {
                int* p = (int*)(info.codes.buf + len);
                *p = info.codes.len;
            }
        }

        if(!info.no_output) {
            int* p = (int*)(info.codes.buf + len);
            *p = info.codes.len;
        }
    }
    else {
        if(!info.no_output) {
            int* p = (int*)(info.codes.buf + len);
            *p = info.codes.len;
        }
    }

    if(else_block) {
        if(!compile_block(else_block, info)) {
            return false;
        }
    }

    return true;
}

bool compile(sCLNode* node, sCompileInfo* info) 
{
    if(node == null) {
        return true;
    }
    switch(node.type) {
        case kNodeTypeInt:
            if(!compile_int_value(node, info)) {
                return false;
            }
            break;
            
        case kNodeTypeAdd:
            if(!compile_add(node, info)) {
                return false;
            }
            break;
            
        case kNodeTypeStoreVariable:
            if(!compile_store_variable(node, info)) {
                return false;
            }
            break;
            
        case kNodeTypeLoadVariable:
            if(!compile_load_variable(node, info)) {
                return false;
            }
            break;
            
        case kNodeTypeEqual:
            if(!compile_equal(node, info)) {
                return false;
            }
            break;
            
        case kNodeTypeNotEqual:
            if(!compile_not_equal(node, info)) {
                return false;
            }
            break;
            
        case kNodeTypeString:
            if(!compile_strig_value(node, info)) {
                return false;
            }
            break;
            
        case kNodeTypeTrue:
            if(!compile_true_value(node, info)) {
                return false;
            }
            break;
            
        case kNodeTypeFalse:
            if(!compile_false_value(node, info)) {
                return false;
            }
            break;
    
        case kNodeTypeIf:
            if(!compile_if_expression(node, info)) {
                return false;
            }
            break;
            
        default:
            compile_err_msg(info, xsprintf("unexpected node type. No. %d", node.type));
            return false;
            break;
    }
    
    return true;
}
