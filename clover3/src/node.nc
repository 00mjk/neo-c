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
    info.codes.append_int(OP_INT_VALUE);
    info.codes.append_int(node.uValue.mIntValue);
    
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
        info.codes.append_int(OP_IADD);
        
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
    
    char* var_name = borrow node.mStringValue;
    
    sVar* v = get_variable_from_table(info.pinfo, var_name);
    
    if(v == null) {
        compile_err_msg(info, xsprintf("The variable named %s is not defined", var_name));
        return true;
    }
    
    info.codes.append_int(OP_STORE_VARIABLE);
    info.codes.append_int(v.mIndex);
    
    return true;
}



bool compile(sCLNode* node, sCompileInfo* info) 
{
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
            
        default:
            compile_err_msg(info, "unexpected node type.");
            return false;
            break;
    }
    
    return true;
}
