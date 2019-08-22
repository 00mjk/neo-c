#include "llvm_common.hpp"

std::map<std::string, sFunction> gFuncs;
std::map<Value*, std::pair<sNodeType*, bool>> gHeapObjects;
std::map<std::string, BasicBlock*> gLabels;
std::vector<sFunction> gFunctionStack;

BOOL is_function_name(char* name)
{
    return TheModule->getFunction(name) != NULL;
}

void show_node(unsigned int node)
{
    switch(gNodes[node].mNodeType) {
        case kNodeTypeIntValue:
            printf("kNodeTypeIntValue value %d\n", gNodes[node].uValue.mIntValue);
            break;

        case kNodeTypeAdd:
            puts("kNodeTypeAdd");

            puts("left");
            show_node(gNodes[node].mLeft);

            puts("right");
            show_node(gNodes[node].mRight);
            break;

        case kNodeTypeSub:
            puts("kNodeTypeSub");

            puts("left");
            show_node(gNodes[node].mLeft);

            puts("right");
            show_node(gNodes[node].mRight);
            break;
        
        case kNodeTypeStoreVariable:
            puts("kNodeTypeStoreVariable");
            break;

        case kNodeTypeLoadVariable:
            puts("kNodeTypeLoadVariable");
            break;

        case kNodeTypeCString:
            puts("kNodeTypeCString");
            break;

        case kNodeTypeFunction:
            puts("kNodeTypeFunction");
            break;

        case kNodeTypeExternalFunction:
            puts("kNodeTypeExternalFunction");
            break;

        case kNodeTypeFunctionCall:
            puts("kNodeTypeFunctionCall");
            break;
        
        case kNodeTypeIf:
            puts("kNodeTypeIf");
            break;
        
        case kNodeTypeEquals:
            puts("kNodeTypeEquals");
            break;

        case kNodeTypeNotEquals:
            puts("kNodeTypeNotEquals");
            break;

        default:
            printf("node type %d\n", gNodes[node].mNodeType);
            break;
    }
}

void compile_err_msg(sCompileInfo* info, const char* msg, ...)
{
    char msg2[1024];

    va_list args;
    va_start(args, msg);
    vsnprintf(msg2, 1024, msg, args);
    va_end(args);

    static int output_num = 0;

    if(output_num < COMPILE_ERR_MSG_MAX) {
        fprintf(stderr, "%s:%d: %s\n", info->sname, info->sline, msg2);
    }
    output_num++;
}

static BOOL check_same_params(int num_params, sNodeType** param_types, int num_params2, sNodeType** param_types2)
{
    if(num_params != num_params2) {
        return FALSE;
    }
    int i;
    for(i=0; i<num_params; i++) {
        if(!type_identify(param_types[i], param_types2[i]))
        {
            return FALSE;
        }
    }

    return TRUE;
}
    
BOOL add_function(char* name, char* real_fun_name, Function* llvm_fun, char param_names[PARAMS_MAX][VAR_NAME_MAX], sNodeType** param_types, int num_params, sNodeType* result_type, int num_method_generics, char method_generics_type_names[GENERICS_TYPES_MAX][VAR_NAME_MAX], BOOL c_ffi_function, BOOL var_arg, char* block_text, int num_generics, char generics_type_names[GENERICS_TYPES_MAX][VAR_NAME_MAX], BOOL generics_function, BOOL inline_function, char* sname, int sline, BOOL in_clang, BOOL external)
{
    sFunction fun;
    xstrncpy(fun.mName, name, VAR_NAME_MAX);
    xstrncpy(fun.mRealName, real_fun_name, REAL_FUN_NAME_MAX);

    fun.mResultType = clone_node_type(result_type);

    fun.mNumParams = num_params;

    int i;
    for(i=0; i<num_params; i++) {
        xstrncpy(fun.mParamNames[i], param_names[i], VAR_NAME_MAX);
        fun.mParamTypes[i] = clone_node_type(param_types[i]);
    }

    fun.mCFFIFunction = c_ffi_function;

    fun.mVarArg = var_arg;

    fun.mBlockText = block_text;

    if(sname) {
        xstrncpy(fun.mSName, sname, PATH_MAX);
    }
    else {
        xstrncpy(fun.mSName, "", PATH_MAX);
    }
    fun.mSLine = sline;

    fun.mNumGenerics = num_generics;
    for(i=0; i<num_generics; i++) {
        xstrncpy(fun.mGenericsTypeNames[i], generics_type_names[i], VAR_NAME_MAX);
    }

    fun.mNumMethodGenerics = num_method_generics;

    for(i=0; i<num_method_generics; i++) {
        xstrncpy(fun.mMethodGenericsTypeNames[i], method_generics_type_names[i], VAR_NAME_MAX);
    }

    fun.mGenericsFunction = generics_function;
    fun.mInlineFunction = inline_function;

    if(gFuncs[real_fun_name].mExternal && !external)
    {
        if(!check_same_params(gFuncs[real_fun_name].mNumParams, gFuncs[real_fun_name].mParamTypes, num_params, param_types))
        {
            return FALSE;
        }

        if(!type_identify(gFuncs[real_fun_name].mResultType, result_type))
        {
            return FALSE;
        }
    }

    if((gFuncs[real_fun_name].mLLVMFunction != nullptr) || (gFuncs[real_fun_name].mBlockText != nullptr)) {
        gFunctionStack.push_back(gFuncs[real_fun_name]);
        fun.mParentFunction = gFunctionStack.size()-1;
    }
    else {
        fun.mParentFunction = -1;
    }

    fun.mLLVMFunction = llvm_fun;

    fun.mInCLang = in_clang;

    fun.mExternal = external;

    gFuncs[real_fun_name] = fun;

    return TRUE;
}

unsigned int sNodeTree_create_int_value(int value, sParserInfo* info)
{
    unsigned node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeIntValue;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    gNodes[node].uValue.mIntValue = value;

    gNodes[node].mLeft = 0;
    gNodes[node].mRight = 0;
    gNodes[node].mMiddle = 0;

    return node;
}

static BOOL compile_int_value(unsigned int node, sCompileInfo* info)
{
    int value = gNodes[node].uValue.mIntValue;

    LVALUE llvm_value;
    llvm_value.value = ConstantInt::get(TheContext, llvm::APInt(32, value, true)); 
    llvm_value.type = create_node_type_with_class_name("int");
    llvm_value.address = nullptr;
    llvm_value.var = nullptr;

    push_value_to_stack_ptr(&llvm_value, info);

    info->type = create_node_type_with_class_name("int");

    return TRUE;
}

static void create_real_fun_name(char* real_fun_name, size_t size_real_fun_name, char* fun_name, char* struct_name)
{
    if(strcmp(struct_name, "") == 0) {
        xstrncpy(real_fun_name, fun_name, size_real_fun_name);
    }
    else {
        xstrncpy(real_fun_name, struct_name, size_real_fun_name);
        xstrncat(real_fun_name, "_", size_real_fun_name);
        xstrncat(real_fun_name, fun_name, size_real_fun_name);
    }
}

static void create_operator_fun_name(char* real_fun_name, size_t size_real_fun_name, char* fun_name, sNodeType** param_types, int num_params)
{
    xstrncpy(real_fun_name, fun_name, size_real_fun_name);

    int i;
    for(i=0; i<num_params; i++) {
        sNodeType* param_type = param_types[i];

        char* class_name = CLASS_NAME(param_type->mClass);

        xstrncat(real_fun_name, "_", size_real_fun_name);
        xstrncat(real_fun_name, class_name, size_real_fun_name);

        int j;
        for(j=0; j<param_type->mPointerNum; j++) {
            xstrncat(real_fun_name, "p", size_real_fun_name);
        }
    }
}

BOOL call_function(char* fun_name, Value** params, int num_params, char* struct_name, sCompileInfo* info)
{
    char real_fun_name[REAL_FUN_NAME_MAX];
    create_real_fun_name(real_fun_name, REAL_FUN_NAME_MAX, fun_name, struct_name);

    sFunction fun = gFuncs[real_fun_name];

    if(fun.mResultType == nullptr) {
        dec_stack_ptr(num_params, info);
        return FALSE;
    }

    Function* llvm_fun = fun.mLLVMFunction;

    if(llvm_fun == nullptr) {
        dec_stack_ptr(num_params, info);
        return FALSE;
    }

    std::vector<Value*> llvm_params;

    int i;
    for(i=0; i<num_params; i++) {
        Value* param = params[i];
        llvm_params.push_back(param);
    }
    dec_stack_ptr(num_params, info);

    if(type_identify_with_class_name(fun.mResultType, "void"))
    {
        Builder.CreateCall(llvm_fun, llvm_params);

        info->type = clone_node_type(fun.mResultType);
    }
    else {
        LVALUE llvm_value;
        llvm_value.value = Builder.CreateCall(llvm_fun, llvm_params);
        llvm_value.type = clone_node_type(fun.mResultType);
        llvm_value.address = nullptr;
        llvm_value.var = nullptr;

        push_value_to_stack_ptr(&llvm_value, info);

        info->type = clone_node_type(fun.mResultType);
    }

    return TRUE;
}

unsigned int sNodeTree_create_add(unsigned int left, unsigned int right, unsigned int middle, sParserInfo* info)
{
    unsigned node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeAdd;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    gNodes[node].mLeft = left;
    gNodes[node].mRight = right;
    gNodes[node].mMiddle = middle;

    return node;
}

static BOOL compile_add(unsigned int node, sCompileInfo* info)
{
    int left_node = gNodes[node].mLeft;
    if(!compile(left_node, info)) {
        return FALSE;
    }
    sNodeType* left_type = info->type;

    LVALUE lvalue = *get_value_from_stack(-1);

    int right_node = gNodes[node].mRight;
    if(!compile(right_node, info)) {
        return FALSE;
    }

    sNodeType* right_type = info->type;

    LVALUE rvalue = *get_value_from_stack(-1);

    if(auto_cast_posibility(left_type, right_type)) {
        if(!cast_right_type_to_left_type(left_type, &right_type, &rvalue, info))
        {
            compile_err_msg(info, "Cast failed");
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }
    }

    if(left_type->mPointerNum > 0 && is_number_type(right_type))
    {
        Value* left_value = Builder.CreateCast(Instruction::PtrToInt, lvalue.value, IntegerType::get(TheContext, 64));

        Value* right_value;
        if(type_identify_with_class_name(right_type, "long")) {
            right_value = rvalue.value;
        }
        else {
            right_value = Builder.CreateCast(Instruction::SExt, rvalue.value, IntegerType::get(TheContext, 64));
        }

        Type* llvm_var_type;
        if(!create_llvm_type_from_node_type(&llvm_var_type, left_type, info))
        {
            compile_err_msg(info, "Getting llvm type failed(10)");
            show_node_type(left_type);
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }

        LVALUE llvm_value;
        llvm_value.value = Builder.CreateAdd(left_value, right_value, "addtmp", false, true);
        llvm_value.value = Builder.CreateCast(Instruction::IntToPtr, llvm_value.value, llvm_var_type);
        llvm_value.type = clone_node_type(left_type);
        llvm_value.address = nullptr;
        llvm_value.var = nullptr;

        dec_stack_ptr(2, info);
        push_value_to_stack_ptr(&llvm_value, info);

        info->type = left_type;
    }
    else if(is_number_type(left_type) && is_number_type(right_type))
    {
        LVALUE llvm_value;
        llvm_value.value = Builder.CreateAdd(lvalue.value, rvalue.value, "addtmp", false, true);
        llvm_value.type = clone_node_type(right_type);
        llvm_value.address = nullptr;
        llvm_value.var = nullptr;

        dec_stack_ptr(2, info);
        push_value_to_stack_ptr(&llvm_value, info);

        info->type = llvm_value.type;
    }
    else {
        int num_params = 2;

        sNodeType* param_types[PARAMS_MAX];

        param_types[0] = left_type;
        param_types[1] = right_type;

        Value* params[PARAMS_MAX];

        params[0] = lvalue.value;
        params[1] = rvalue.value;

        char real_fun_name[REAL_FUN_NAME_MAX];

        create_operator_fun_name(real_fun_name, REAL_FUN_NAME_MAX, "op_add", param_types, num_params);

        if(!call_function(real_fun_name, params, num_params, "", info))
        {
            compile_err_msg(info, "Not found found operator + for\n");
            show_node_type(left_type);
            show_node_type(right_type);
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy
            return TRUE;
        }
    }

    return TRUE;
}

unsigned int sNodeTree_create_sub(unsigned int left, unsigned int right, unsigned int middle, sParserInfo* info)
{
    unsigned node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeSub;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    gNodes[node].mLeft = left;
    gNodes[node].mRight = right;
    gNodes[node].mMiddle = middle;

    return node;
}

static BOOL compile_sub(unsigned int node, sCompileInfo* info)
{
    int left_node = gNodes[node].mLeft;
    if(!compile(left_node, info)) {
        return FALSE;
    }
    sNodeType* left_type = info->type;

    LVALUE lvalue = *get_value_from_stack(-1);

    int right_node = gNodes[node].mRight;
    if(!compile(right_node, info)) {
        return FALSE;
    }

    sNodeType* right_type = info->type;

    LVALUE rvalue = *get_value_from_stack(-1);

    if(auto_cast_posibility(left_type, right_type)) {
        if(!cast_right_type_to_left_type(left_type, &right_type, &rvalue, info))
        {
            compile_err_msg(info, "Cast failed");
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }
    }

    if(left_type->mPointerNum > 0 && is_number_type(right_type))
    {
        Value* left_value = Builder.CreateCast(Instruction::PtrToInt, lvalue.value, IntegerType::get(TheContext, 64));

        Value* right_value;
        if(type_identify_with_class_name(right_type, "long")) {
            right_value = rvalue.value;
        }
        else {
            right_value = Builder.CreateCast(Instruction::SExt, rvalue.value, IntegerType::get(TheContext, 64));
        }

        Type* llvm_var_type;
        if(!create_llvm_type_from_node_type(&llvm_var_type, left_type, info))
        {
            compile_err_msg(info, "Getting llvm type failed(10)");
            show_node_type(left_type);
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }

        LVALUE llvm_value;
        llvm_value.value = Builder.CreateSub(left_value, right_value, "subtmp", false, true);
        llvm_value.value = Builder.CreateCast(Instruction::IntToPtr, llvm_value.value, llvm_var_type);
        llvm_value.type = clone_node_type(left_type);
        llvm_value.address = nullptr;
        llvm_value.var = nullptr;

        dec_stack_ptr(2, info);
        push_value_to_stack_ptr(&llvm_value, info);

        info->type = left_type;
    }
    else if(is_number_type(left_type) && is_number_type(right_type))
    {
        LVALUE llvm_value;
        llvm_value.value = Builder.CreateSub(lvalue.value, rvalue.value, "subttmp", false, true);
        llvm_value.type = clone_node_type(right_type);
        llvm_value.address = nullptr;
        llvm_value.var = nullptr;

        dec_stack_ptr(2, info);
        push_value_to_stack_ptr(&llvm_value, info);

        info->type = llvm_value.type;
    }
    else {
        int num_params = 2;

        sNodeType* param_types[PARAMS_MAX];

        param_types[0] = left_type;
        param_types[1] = right_type;

        Value* params[PARAMS_MAX];

        params[0] = lvalue.value;
        params[1] = rvalue.value;

        char real_fun_name[REAL_FUN_NAME_MAX];

        create_operator_fun_name(real_fun_name, REAL_FUN_NAME_MAX, "op_sub", param_types, num_params);

        if(!call_function(real_fun_name, params, num_params, "", info))
        {
            compile_err_msg(info, "Not found found operator - for\n");
            show_node_type(left_type);
            show_node_type(right_type);
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy
            return TRUE;
        }
    }

    return TRUE;
}

unsigned int sNodeTree_create_mult(unsigned int left, unsigned int right, unsigned int middle, sParserInfo* info)
{
    unsigned node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeMult;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    gNodes[node].mLeft = left;
    gNodes[node].mRight = right;
    gNodes[node].mMiddle = middle;

    return node;
}

static BOOL compile_mult(unsigned int node, sCompileInfo* info)
{
    int left_node = gNodes[node].mLeft;
    if(!compile(left_node, info)) {
        return FALSE;
    }
    sNodeType* left_type = info->type;

    LVALUE lvalue = *get_value_from_stack(-1);

    int right_node = gNodes[node].mRight;
    if(!compile(right_node, info)) {
        return FALSE;
    }

    sNodeType* right_type = info->type;

    LVALUE rvalue = *get_value_from_stack(-1);

    if(auto_cast_posibility(left_type, right_type)) {
        if(!cast_right_type_to_left_type(left_type, &right_type, &rvalue, info))
        {
            compile_err_msg(info, "Cast failed");
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }
    }

    if(is_number_type(left_type) && is_number_type(right_type))
    {
        LVALUE llvm_value;
        llvm_value.value = Builder.CreateMul(lvalue.value, rvalue.value, "multtmp", false, true);
        llvm_value.type = clone_node_type(right_type);
        llvm_value.address = nullptr;
        llvm_value.var = nullptr;

        dec_stack_ptr(2, info);
        push_value_to_stack_ptr(&llvm_value, info);

        info->type = llvm_value.type;
    }
    else {
        int num_params = 2;

        sNodeType* param_types[PARAMS_MAX];

        param_types[0] = left_type;
        param_types[1] = right_type;

        Value* params[PARAMS_MAX];

        params[0] = lvalue.value;
        params[1] = rvalue.value;

        char real_fun_name[REAL_FUN_NAME_MAX];

        create_operator_fun_name(real_fun_name, REAL_FUN_NAME_MAX, "op_mult", param_types, num_params);

        if(!call_function(real_fun_name, params, num_params, "", info))
        {
            compile_err_msg(info, "Not found found operator * for\n");
            show_node_type(left_type);
            show_node_type(right_type);
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy
            return TRUE;
        }
    }

    return TRUE;
}

unsigned int sNodeTree_create_div(unsigned int left, unsigned int right, unsigned int middle, sParserInfo* info)
{
    unsigned node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeDiv;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    gNodes[node].mLeft = left;
    gNodes[node].mRight = right;
    gNodes[node].mMiddle = middle;

    return node;
}

static BOOL compile_div(unsigned int node, sCompileInfo* info)
{
    int left_node = gNodes[node].mLeft;
    if(!compile(left_node, info)) {
        return FALSE;
    }
    sNodeType* left_type = info->type;

    LVALUE lvalue = *get_value_from_stack(-1);

    int right_node = gNodes[node].mRight;
    if(!compile(right_node, info)) {
        return FALSE;
    }

    sNodeType* right_type = info->type;

    LVALUE rvalue = *get_value_from_stack(-1);

    if(auto_cast_posibility(left_type, right_type)) {
        if(!cast_right_type_to_left_type(left_type, &right_type, &rvalue, info))
        {
            compile_err_msg(info, "Cast failed");
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }
    }

    if(is_number_type(left_type) && is_number_type(right_type))
    {
        LVALUE llvm_value;
        llvm_value.value = Builder.CreateSDiv(lvalue.value, rvalue.value, "divtmp");
        llvm_value.type = clone_node_type(right_type);
        llvm_value.address = nullptr;
        llvm_value.var = nullptr;

        dec_stack_ptr(2, info);
        push_value_to_stack_ptr(&llvm_value, info);

        info->type = llvm_value.type;
    }
    else {
        int num_params = 2;

        sNodeType* param_types[PARAMS_MAX];

        param_types[0] = left_type;
        param_types[1] = right_type;

        Value* params[PARAMS_MAX];

        params[0] = lvalue.value;
        params[1] = rvalue.value;

        char real_fun_name[REAL_FUN_NAME_MAX];

        create_operator_fun_name(real_fun_name, REAL_FUN_NAME_MAX, "op_div", param_types, num_params);

        if(!call_function(real_fun_name, params, num_params, "", info))
        {
            compile_err_msg(info, "Not found found operator / for\n");
            show_node_type(left_type);
            show_node_type(right_type);
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy
            return TRUE;
        }
    }

    return TRUE;
}

unsigned int sNodeTree_create_mod(unsigned int left, unsigned int right, unsigned int middle, sParserInfo* info)
{
    unsigned node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeMod;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    gNodes[node].mLeft = left;
    gNodes[node].mRight = right;
    gNodes[node].mMiddle = middle;

    return node;
}

static BOOL compile_mod(unsigned int node, sCompileInfo* info)
{
    int left_node = gNodes[node].mLeft;
    if(!compile(left_node, info)) {
        return FALSE;
    }
    sNodeType* left_type = info->type;

    LVALUE lvalue = *get_value_from_stack(-1);

    int right_node = gNodes[node].mRight;
    if(!compile(right_node, info)) {
        return FALSE;
    }

    sNodeType* right_type = info->type;

    LVALUE rvalue = *get_value_from_stack(-1);

    if(auto_cast_posibility(left_type, right_type)) {
        if(!cast_right_type_to_left_type(left_type, &right_type, &rvalue, info))
        {
            compile_err_msg(info, "Cast failed");
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }
    }

    if(is_number_type(left_type) && is_number_type(right_type))
    {
        LVALUE llvm_value;
        llvm_value.value = Builder.CreateSRem(lvalue.value, rvalue.value, "remtmp");
        llvm_value.type = clone_node_type(right_type);
        llvm_value.address = nullptr;
        llvm_value.var = nullptr;

        dec_stack_ptr(2, info);
        push_value_to_stack_ptr(&llvm_value, info);

        info->type = llvm_value.type;
    }
    else {
        int num_params = 2;

        sNodeType* param_types[PARAMS_MAX];

        param_types[0] = left_type;
        param_types[1] = right_type;

        Value* params[PARAMS_MAX];

        params[0] = lvalue.value;
        params[1] = rvalue.value;

        char real_fun_name[REAL_FUN_NAME_MAX];

        create_operator_fun_name(real_fun_name, REAL_FUN_NAME_MAX, "op_mod", param_types, num_params);

        if(!call_function(real_fun_name, params, num_params, "", info))
        {
            compile_err_msg(info, "Not found found operator % for\n");
            show_node_type(left_type);
            show_node_type(right_type);
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy
            return TRUE;
        }
    }

    return TRUE;
}

unsigned int sNodeTree_create_equals(unsigned int left, unsigned int right, unsigned int middle, sParserInfo* info)
{
    unsigned node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeEquals;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    gNodes[node].mLeft = left;
    gNodes[node].mRight = right;
    gNodes[node].mMiddle = middle;

    return node;
}

static BOOL compile_equals(unsigned int node, sCompileInfo* info)
{
    int left_node = gNodes[node].mLeft;
    if(!compile(left_node, info)) {
        return FALSE;
    }
    sNodeType* left_type = info->type;

    LVALUE lvalue = *get_value_from_stack(-1);

    int right_node = gNodes[node].mRight;
    if(!compile(right_node, info)) {
        return FALSE;
    }

    sNodeType* right_type = info->type;

    LVALUE rvalue = *get_value_from_stack(-1);

    if(auto_cast_posibility(left_type, right_type)) {
        if(!cast_right_type_to_left_type(left_type, &right_type, &rvalue, info))
        {
            compile_err_msg(info, "Cast failed");
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }
    }

    LVALUE llvm_value;
    llvm_value.value = Builder.CreateICmpEQ(lvalue.value, rvalue.value, "eqtmp");
    llvm_value.type = create_node_type_with_class_name("bool");
    llvm_value.address = nullptr;
    llvm_value.var = nullptr;

    dec_stack_ptr(2, info);
    push_value_to_stack_ptr(&llvm_value, info);

    info->type = create_node_type_with_class_name("bool");

    return TRUE;
}

unsigned int sNodeTree_create_not_equals(unsigned int left, unsigned int right, unsigned int middle, sParserInfo* info)
{
    unsigned node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeNotEquals;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    gNodes[node].mLeft = left;
    gNodes[node].mRight = right;
    gNodes[node].mMiddle = middle;

    return node;
}

static BOOL compile_not_equals(unsigned int node, sCompileInfo* info)
{
    int left_node = gNodes[node].mLeft;
    if(!compile(left_node, info)) {
        return FALSE;
    }
    sNodeType* left_type = info->type;

    LVALUE lvalue = *get_value_from_stack(-1);

    int right_node = gNodes[node].mRight;
    if(!compile(right_node, info)) {
        return FALSE;
    }

    sNodeType* right_type = info->type;

    LVALUE rvalue = *get_value_from_stack(-1);

    if(auto_cast_posibility(left_type, right_type)) {
        if(!cast_right_type_to_left_type(left_type, &right_type, &rvalue, info))
        {
            compile_err_msg(info, "Cast failed");
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }
    }

    LVALUE llvm_value;
    llvm_value.value = Builder.CreateICmpNE(lvalue.value, rvalue.value, "noteqtmp");
    llvm_value.type = create_node_type_with_class_name("bool");
    llvm_value.address = nullptr;
    llvm_value.var = nullptr;

    dec_stack_ptr(2, info);
    push_value_to_stack_ptr(&llvm_value, info);

    info->type = create_node_type_with_class_name("bool");

    return TRUE;
}

unsigned int sNodeTree_create_gteq(unsigned int left, unsigned int right, unsigned int middle, sParserInfo* info)
{
    unsigned node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeGteq;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    gNodes[node].mLeft = left;
    gNodes[node].mRight = right;
    gNodes[node].mMiddle = middle;

    return node;
}

static BOOL compile_gteq(unsigned int node, sCompileInfo* info)
{
    int left_node = gNodes[node].mLeft;
    if(!compile(left_node, info)) {
        return FALSE;
    }
    sNodeType* left_type = info->type;

    LVALUE lvalue = *get_value_from_stack(-1);

    int right_node = gNodes[node].mRight;
    if(!compile(right_node, info)) {
        return FALSE;
    }

    sNodeType* right_type = info->type;

    LVALUE rvalue = *get_value_from_stack(-1);

    if(auto_cast_posibility(left_type, right_type)) {
        if(!cast_right_type_to_left_type(left_type, &right_type, &rvalue, info))
        {
            compile_err_msg(info, "Cast failed");
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }
    }

    LVALUE llvm_value;
    llvm_value.value = Builder.CreateICmpSGE(lvalue.value, rvalue.value, "getmp");
    llvm_value.type = create_node_type_with_class_name("bool");
    llvm_value.address = nullptr;
    llvm_value.var = nullptr;

    dec_stack_ptr(2, info);
    push_value_to_stack_ptr(&llvm_value, info);

    info->type = create_node_type_with_class_name("bool");

    return TRUE;
}

unsigned int sNodeTree_create_leeq(unsigned int left, unsigned int right, unsigned int middle, sParserInfo* info)
{
    unsigned node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeLeeq;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    gNodes[node].mLeft = left;
    gNodes[node].mRight = right;
    gNodes[node].mMiddle = middle;

    return node;
}

static BOOL compile_leeq(unsigned int node, sCompileInfo* info)
{
    int left_node = gNodes[node].mLeft;
    if(!compile(left_node, info)) {
        return FALSE;
    }
    sNodeType* left_type = info->type;

    LVALUE lvalue = *get_value_from_stack(-1);

    int right_node = gNodes[node].mRight;
    if(!compile(right_node, info)) {
        return FALSE;
    }

    sNodeType* right_type = info->type;

    LVALUE rvalue = *get_value_from_stack(-1);

    if(auto_cast_posibility(left_type, right_type)) {
        if(!cast_right_type_to_left_type(left_type, &right_type, &rvalue, info))
        {
            compile_err_msg(info, "Cast failed");
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }
    }

    LVALUE llvm_value;
    llvm_value.value = Builder.CreateICmpSLE(lvalue.value, rvalue.value, "letmp");
    llvm_value.type = create_node_type_with_class_name("bool");
    llvm_value.address = nullptr;
    llvm_value.var = nullptr;

    dec_stack_ptr(2, info);
    push_value_to_stack_ptr(&llvm_value, info);

    info->type = create_node_type_with_class_name("bool");

    return TRUE;
}

unsigned int sNodeTree_create_gt(unsigned int left, unsigned int right, unsigned int middle, sParserInfo* info)
{
    unsigned node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeGt;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    gNodes[node].mLeft = left;
    gNodes[node].mRight = right;
    gNodes[node].mMiddle = middle;

    return node;
}

static BOOL compile_gt(unsigned int node, sCompileInfo* info)
{
    int left_node = gNodes[node].mLeft;
    if(!compile(left_node, info)) {
        return FALSE;
    }
    sNodeType* left_type = info->type;

    LVALUE lvalue = *get_value_from_stack(-1);

    int right_node = gNodes[node].mRight;
    if(!compile(right_node, info)) {
        return FALSE;
    }

    sNodeType* right_type = info->type;

    LVALUE rvalue = *get_value_from_stack(-1);

    if(auto_cast_posibility(left_type, right_type)) {
        if(!cast_right_type_to_left_type(left_type, &right_type, &rvalue, info))
        {
            compile_err_msg(info, "Cast failed");
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }
    }

    LVALUE llvm_value;
    llvm_value.value = Builder.CreateICmpSGT(lvalue.value, rvalue.value, "gttmp");
    llvm_value.type = create_node_type_with_class_name("bool");
    llvm_value.address = nullptr;
    llvm_value.var = nullptr;

    dec_stack_ptr(2, info);
    push_value_to_stack_ptr(&llvm_value, info);

    info->type = create_node_type_with_class_name("bool");

    return TRUE;
}

unsigned int sNodeTree_create_le(unsigned int left, unsigned int right, unsigned int middle, sParserInfo* info)
{
    unsigned node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeLe;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    gNodes[node].mLeft = left;
    gNodes[node].mRight = right;
    gNodes[node].mMiddle = middle;

    return node;
}

static BOOL compile_le(unsigned int node, sCompileInfo* info)
{
    int left_node = gNodes[node].mLeft;
    if(!compile(left_node, info)) {
        return FALSE;
    }
    sNodeType* left_type = info->type;

    LVALUE lvalue = *get_value_from_stack(-1);

    int right_node = gNodes[node].mRight;
    if(!compile(right_node, info)) {
        return FALSE;
    }

    sNodeType* right_type = info->type;

    LVALUE rvalue = *get_value_from_stack(-1);

    if(auto_cast_posibility(left_type, right_type)) {
        if(!cast_right_type_to_left_type(left_type, &right_type, &rvalue, info))
        {
            compile_err_msg(info, "Cast failed");
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }
    }

    LVALUE llvm_value;
    llvm_value.value = Builder.CreateICmpSLT(lvalue.value, rvalue.value, "letmp");
    llvm_value.type = create_node_type_with_class_name("bool");
    llvm_value.address = nullptr;
    llvm_value.var = nullptr;

    dec_stack_ptr(2, info);
    push_value_to_stack_ptr(&llvm_value, info);

    info->type = create_node_type_with_class_name("bool");

    return TRUE;
}

unsigned int sNodeTree_create_logical_denial(unsigned int left, unsigned int right, unsigned int middle, sParserInfo* info)
{
    unsigned node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeLogicalDenial;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    gNodes[node].mLeft = left;
    gNodes[node].mRight = right;
    gNodes[node].mMiddle = middle;

    return node;
}

static BOOL compile_logical_denial(unsigned int node, sCompileInfo* info)
{
    int left_node = gNodes[node].mLeft;
    if(!compile(left_node, info)) {
        return FALSE;
    }
    sNodeType* left_type = info->type;

    LVALUE lvalue = *get_value_from_stack(-1);

    sNodeType* bool_type = create_node_type_with_class_name("bool");

    if(auto_cast_posibility(bool_type, left_type)) {
        if(!cast_right_type_to_left_type(bool_type, &left_type, &lvalue, info))
        {
            compile_err_msg(info, "Cast failed");
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }
    }

    if(!type_identify_with_class_name(left_type, "bool")) {
        compile_err_msg(info, "Left expression is not bool type");
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }

    LVALUE rvalue;
    rvalue.value = ConstantInt::get(Type::getInt1Ty(TheContext), 0);
    rvalue.type = nullptr;
    rvalue.address = nullptr;
    rvalue.var = nullptr;

    LVALUE llvm_value;
    llvm_value.value = Builder.CreateICmpEQ(lvalue.value, rvalue.value, "LOGICAL_DIANEAL");
    llvm_value.type = create_node_type_with_class_name("bool");
    llvm_value.address = nullptr;
    llvm_value.var = nullptr;

    dec_stack_ptr(1, info);
    push_value_to_stack_ptr(&llvm_value, info);

    info->type = create_node_type_with_class_name("bool");

    return TRUE;
}

unsigned int sNodeTree_create_define_variable(char* var_name, BOOL extern_, sParserInfo* info)
{
    unsigned node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeDefineVariable;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    xstrncpy(gNodes[node].uValue.sDefineVariable.mVarName, var_name, VAR_NAME_MAX);
    gNodes[node].uValue.sDefineVariable.mGlobal = info->mBlockLevel == 0;
    gNodes[node].uValue.sDefineVariable.mExtern = extern_;

    gNodes[node].mLeft = 0;
    gNodes[node].mRight = 0;
    gNodes[node].mMiddle = 0;

    return node;
}

static BOOL compile_define_variable(unsigned int node, sCompileInfo* info)
{
    char var_name[VAR_NAME_MAX];
    xstrncpy(var_name, gNodes[node].uValue.sStoreVariable.mVarName, VAR_NAME_MAX);
    BOOL global = gNodes[node].uValue.sDefineVariable.mGlobal;
    BOOL extern_ = gNodes[node].uValue.sDefineVariable.mExtern;

    sVar* var = get_variable_from_table(info->pinfo->lv_table, var_name);

    if(var == NULL) {
        compile_err_msg(info, "undeclared variable %s", var_name);
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy
        return TRUE;
    }

    sNodeType* var_type = var->mType;

    Value* index_value = NULL;
    if(var_type->mDynamicArrayNum != 0) {
        unsigned int node = var_type->mDynamicArrayNum;

        if(!compile(node, info)) {
            return FALSE;
        }

        sNodeType* index_type = info->type;

        if(!type_identify_with_class_name(index_type, "int"))
        {
            compile_err_msg(info, "Invalid index type");

            show_node_type(index_type);
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }

        LVALUE llvm_value = *get_value_from_stack(-1);

        index_value = llvm_value.value;

        dec_stack_ptr(1, info);
    }

    Type* llvm_var_type;
    if(!create_llvm_type_from_node_type(&llvm_var_type, var_type, info))
    {
        compile_err_msg(info, "Getting llvm type failed(1)");
        show_node_type(var_type);
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }

    int alignment = get_llvm_alignment_from_node_type(var_type);

    if(var_type->mDynamicArrayNum != 0) {
        Value* address = Builder.CreateAlloca(llvm_var_type, 0, var_name);
        var->mLLVMValue = address;

        BOOL parent = FALSE;
        int index = get_variable_index(info->pinfo->lv_table, var_name, &parent);

        store_address_to_lvtable(index, address);

        sNodeType* element_type = clone_node_type(var_type);

        element_type->mPointerNum--;

        Type* llvm_element_type;
        if(!create_llvm_type_from_node_type(&llvm_element_type, element_type, info))
        {
            compile_err_msg(info, "Getting llvm type failed(1)");
            show_node_type(element_type);
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }

        Value* value = Builder.CreateAlloca(llvm_element_type, index_value, "element_memory");

        Builder.CreateAlignedStore(value, address, alignment);
    }
    else if(var->mConstant) {
        compile_err_msg(info, "Require right value for constant");
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }
    else if(global) {
        if(extern_) {
            GlobalVariable* address = new GlobalVariable(*TheModule, llvm_var_type, false, GlobalValue::ExternalLinkage, 0, var_name, nullptr, GlobalValue::NotThreadLocal, 0, true);

            address->setAlignment(alignment);

            var->mLLVMValue = address;

            BOOL parent = FALSE;
            int index = get_variable_index(info->pinfo->lv_table, var_name, &parent);

            store_address_to_lvtable(index, address);
        }
        else {
            GlobalVariable* address = new GlobalVariable(*TheModule, llvm_var_type, false, GlobalValue::ExternalLinkage, 0, var_name, nullptr, GlobalValue::NotThreadLocal, 0, false);

            address->setAlignment(alignment);

            ConstantAggregateZero* initializer = ConstantAggregateZero::get(llvm_var_type);

            address->setInitializer(initializer);

            var->mLLVMValue = address;

            BOOL parent = FALSE;
            int index = get_variable_index(info->pinfo->lv_table, var_name, &parent);

            store_address_to_lvtable(index, address);
        }
    }
    else {
        Value* address = Builder.CreateAlloca(llvm_var_type, 0, var_name);
        var->mLLVMValue = address;

        BOOL parent = FALSE;
        int index = get_variable_index(info->pinfo->lv_table, var_name, &parent);

        store_address_to_lvtable(index, address);
    }

    info->type = var_type;

    return TRUE;
}

unsigned int sNodeTree_create_store_variable(char* var_name, int right, BOOL alloc, sParserInfo* info)
{
    unsigned node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeStoreVariable;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    xstrncpy(gNodes[node].uValue.sStoreVariable.mVarName, var_name, VAR_NAME_MAX);
    gNodes[node].uValue.sStoreVariable.mAlloc = alloc;
    gNodes[node].uValue.sStoreVariable.mGlobal = info->mBlockLevel == 0;

    gNodes[node].mLeft = 0;
    gNodes[node].mRight = right;
    gNodes[node].mMiddle = 0;

    return node;
}


static BOOL compile_store_variable(unsigned int node, sCompileInfo* info)
{
    char var_name[VAR_NAME_MAX];
    xstrncpy(var_name, gNodes[node].uValue.sStoreVariable.mVarName, VAR_NAME_MAX);
    BOOL alloc = gNodes[node].uValue.sStoreVariable.mAlloc;
    BOOL global = gNodes[node].uValue.sStoreVariable.mGlobal;

    sVar* var = get_variable_from_table(info->pinfo->lv_table, var_name);

    if(var == NULL) {
        compile_err_msg(info, "undeclared variable %s", var_name);
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy
        return TRUE;
    }

    unsigned int right_node = gNodes[node].mRight;

    if(!compile(right_node, info)) {
        return FALSE;
    }

    sNodeType* right_type = clone_node_type(info->type);

    LVALUE rvalue = *get_value_from_stack(-1);

    /// type inference ///
    sNodeType* left_type = NULL;
    if(var->mType == NULL) {
        left_type = clone_node_type(right_type);
        var->mType = clone_node_type(right_type);
    }
    else {
        left_type = clone_node_type(var->mType);
    }

    if(auto_cast_posibility(left_type, right_type)) {
        if(!cast_right_type_to_left_type(left_type, &right_type, &rvalue, info))
        {
            compile_err_msg(info, "Cast failed");
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }
    }

    if(!substitution_posibility(left_type, right_type, info)) 
    {
        compile_err_msg(info, "The different type between left type and right type.");
        show_node_type(left_type);
        show_node_type(right_type);
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }

    Type* llvm_var_type;
    if(!create_llvm_type_from_node_type(&llvm_var_type, left_type, info))
    {
        compile_err_msg(info, "Getting llvm type failed(1)");
        show_node_type(left_type);
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }

    int alignment = get_llvm_alignment_from_node_type(left_type);

    BOOL constant = var->mConstant && var->mBlockLevel == 0;

    if(alloc) {
        if(constant) {
            Value* rvalue2 = rvalue.value;

            if(dyn_cast<Constant>(rvalue2)) {
                Constant* rvalue3 = dyn_cast<Constant>(rvalue2);
            }
            else {
                compile_err_msg(info, "Invalid Global ConstantValue Variable Initializer. Require Constant Value");
                info->err_num++;

                info->type = create_node_type_with_class_name("int"); // dummy

                return TRUE;
            }

            Value* rvalue3 = Builder.CreateCast(Instruction::BitCast, rvalue2, llvm_var_type);
            var->mLLVMValue = rvalue3;

            info->type = left_type;
        }
        else {
            if(global) {
                GlobalVariable* address = new GlobalVariable(*TheModule, llvm_var_type, var->mConstant, GlobalValue::ExternalLinkage, 0, var_name);
                address->setAlignment(alignment);

                Value* rvalue2 = rvalue.value;

                if(dyn_cast<Constant>(rvalue2)) {
                    Constant* rvalue3 = dyn_cast<Constant>(rvalue2);
                    address->setInitializer(rvalue3);
                }
                else {
                    compile_err_msg(info, "Invalid Global Variable Initializer. Require Constant Value");
                    info->err_num++;

                    info->type = create_node_type_with_class_name("int"); // dummy

                    return TRUE;
                }

                var->mLLVMValue = address;

                BOOL parent = FALSE;
                int index = get_variable_index(info->pinfo->lv_table, var_name, &parent);

                store_address_to_lvtable(index, address);
            }
            else {
                Value* address = Builder.CreateAlloca(llvm_var_type, 0, var_name);
                var->mLLVMValue = address;

                BOOL parent = FALSE;
                int index = get_variable_index(info->pinfo->lv_table, var_name, &parent);

                store_address_to_lvtable(index, address);
            }

            BOOL parent = FALSE;
            int index = get_variable_index(info->pinfo->lv_table, var_name, &parent);

            sNodeType* var_type = left_type;

            Value* var_address;
            if(parent && !var->mGlobal) {
                var_address = load_address_to_lvtable(index, var_type, info);
            }
            else {
                var_address = (Value*)var->mLLVMValue;
            }

            if(var_address == nullptr) {
                compile_err_msg(info, "Invalid variable.");
                info->err_num++;

                info->type = create_node_type_with_class_name("int"); // dummy

                return TRUE;
            }

            Value* rvalue2 = Builder.CreateCast(Instruction::BitCast, rvalue.value, llvm_var_type);

            std_move(var_address, var->mType, &rvalue, alloc, info);

            Builder.CreateAlignedStore(rvalue2, var_address, alignment);

            info->type = left_type;
        }
    }
    else {
        if(var->mReadOnly || var->mConstant) {
            compile_err_msg(info, "Variable(%s) is readonly variable", var->mName);
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }

        BOOL parent = FALSE;
        int index = get_variable_index(info->pinfo->lv_table, var_name, &parent);

        sNodeType* var_type = left_type;

        Value* var_address;
        if(parent && !var->mGlobal) {
            var_address = load_address_to_lvtable(index, var_type, info);
        }
        else {
            var_address = (Value*)var->mLLVMValue;
        }

        if(var_address == nullptr) {
            compile_err_msg(info, "Invalid variable.");
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }

        Value* rvalue2 = Builder.CreateCast(Instruction::BitCast, rvalue.value, llvm_var_type);

        std_move(var_address, var->mType, &rvalue, alloc, info);

        Builder.CreateAlignedStore(rvalue2, var_address, alignment);

        info->type = left_type;
    }

    return TRUE;
}

unsigned int sNodeTree_create_c_string_value(MANAGED char* value, int len, int sline, sParserInfo* info)
{
    unsigned int node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeCString;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = sline;

    gNodes[node].mLeft = 0;
    gNodes[node].mRight = 0;
    gNodes[node].mMiddle = 0;

    gNodes[node].uValue.sString.mString = MANAGED value;

    return node;
}

BOOL compile_c_string_value(unsigned int node, sCompileInfo* info)
{
    char* buf = gNodes[node].uValue.sString.mString;

    LVALUE llvm_value;
    llvm_value.value = llvm_create_string(buf);
    llvm_value.type = create_node_type_with_class_name("char*");
    llvm_value.address = nullptr;
    llvm_value.var = nullptr;

    push_value_to_stack_ptr(&llvm_value, info);

    info->type = create_node_type_with_class_name("char*");

    return TRUE;
}


unsigned int sNodeTree_create_external_function(char* fun_name, sParserParam* params, int num_params, BOOL var_arg, sNodeType* result_type, char* struct_name, BOOL operator_fun, sParserInfo* info)
{
    unsigned int node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeExternalFunction;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    gNodes[node].mLeft = 0;
    gNodes[node].mRight = 0;
    gNodes[node].mMiddle = 0;

    xstrncpy(gNodes[node].uValue.sFunction.mName, fun_name, VAR_NAME_MAX);

    int i;
    for(i=0; i<num_params; i++) {
        gNodes[node].uValue.sFunction.mParams[i] = params[i]; // copy struct
        gNodes[node].uValue.sFunction.mParams[i].mType = clone_node_type(params[i].mType);

    }

    gNodes[node].uValue.sFunction.mNumParams = num_params;
    gNodes[node].uValue.sFunction.mResultType = clone_node_type(result_type);
    gNodes[node].uValue.sFunction.mVarArg = var_arg;
    gNodes[node].uValue.sFunction.mOperatorFun = operator_fun;
    gNodes[node].uValue.sFunction.mInCLang = info->in_clang;

    if(struct_name) {
        xstrncpy(gNodes[node].uValue.sFunction.mStructName, struct_name, VAR_NAME_MAX);
    }
    else {
        xstrncpy(gNodes[node].uValue.sFunction.mStructName, "", VAR_NAME_MAX);
    }

    return node;
}


static BOOL compile_external_function(unsigned int node, sCompileInfo* info)
{
    BOOL in_clang = gNodes[node].uValue.sFunction.mInCLang;

    /// rename variables ///
    char fun_name[VAR_NAME_MAX];
    xstrncpy(fun_name, gNodes[node].uValue.sFunction.mName, VAR_NAME_MAX);

    int num_params = gNodes[node].uValue.sFunction.mNumParams;
    sParserParam params[PARAMS_MAX];
    memset(params, 0, sizeof(sParserParam)*PARAMS_MAX);
    int i;
    for(i=0; i<num_params; i++) {
        params[i] = gNodes[node].uValue.sFunction.mParams[i];
    }

    sNodeType* result_type = gNodes[node].uValue.sFunction.mResultType;
    BOOL var_arg = gNodes[node].uValue.sFunction.mVarArg;
    char* struct_name = gNodes[node].uValue.sFunction.mStructName;
    BOOL operator_fun = gNodes[node].uValue.sFunction.mOperatorFun;

    /// go ///
    Type* llvm_result_type;
    if(!create_llvm_type_from_node_type(&llvm_result_type, result_type, info))
    {
        compile_err_msg(info, "Getting llvm type failed(2)");
        show_node_type(result_type);
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }

    std::vector<Type *> llvm_param_types;
    sNodeType* param_types[PARAMS_MAX];
    char param_names[PARAMS_MAX][VAR_NAME_MAX];

    for(i=0; i<num_params; i++) {
        sNodeType* param_type = params[i].mType;

        if(type_identify_with_class_name(param_type, "va_list"))
        {
            param_type = create_node_type_with_class_name("va_list*");
        }

        Type* llvm_param_type;
        if(!create_llvm_type_from_node_type(&llvm_param_type, param_type, info))
        {
            compile_err_msg(info, "Getting llvm type failed(3)");
            show_node_type(param_type);
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }
        llvm_param_types.push_back(llvm_param_type);

        xstrncpy(param_names[i], params[i].mName, VAR_NAME_MAX);
        param_types[i] = param_type;
    }

    char real_fun_name[REAL_FUN_NAME_MAX];
    if(operator_fun) {
        create_operator_fun_name(real_fun_name, REAL_FUN_NAME_MAX, fun_name, param_types, num_params);
    }
    else {
        create_real_fun_name(real_fun_name, REAL_FUN_NAME_MAX, fun_name, struct_name);
    }

    if(gFuncs[real_fun_name].mExternal && strcmp(struct_name, "") == 0)
    {
        Function* llvm_fun = gFuncs[real_fun_name].mLLVMFunction;

        if(llvm_fun) {
            llvm_fun->eraseFromParent();
        }
    }

    FunctionType* function_type = FunctionType::get(llvm_result_type, llvm_param_types, var_arg);
    Function* llvm_fun = Function::Create(function_type, Function::ExternalLinkage, real_fun_name, TheModule);

    char generics_type_names[GENERICS_TYPES_MAX][VAR_NAME_MAX];

    memset(generics_type_names, 0, sizeof(char)*GENERICS_TYPES_MAX*VAR_NAME_MAX);

    char method_generics_type_names[GENERICS_TYPES_MAX][VAR_NAME_MAX];

    memset(method_generics_type_names, 0, sizeof(char)*GENERICS_TYPES_MAX*VAR_NAME_MAX);

    if(!add_function(fun_name, real_fun_name, llvm_fun, param_names, param_types, num_params, result_type, 0, method_generics_type_names, TRUE, var_arg, NULL, 0, generics_type_names, FALSE, FALSE, NULL, 0, in_clang, TRUE))
    {
        compile_err_msg(info, "Not same parametor or result type to external function declaration and function body declaration.");
        info->err_num++;

        return TRUE;
    }

    return TRUE;
}

static BOOL parse_simple_lambda_param(unsigned int* node, char* buf, sFunction* fun, char* sname, int sline, sNodeType* generics_type, sParserInfo* info, sCompileInfo* cinfo, BOOL in_clang)
{
    sNodeType* lambda_type = fun->mParamTypes[fun->mNumParams-1];

    /// params ///
    sParserParam params[PARAMS_MAX];
    memset(params, 0, sizeof(sParserParam)*PARAMS_MAX);
    int num_params = lambda_type->mNumParams;
    int i;
    for(i=0; i<num_params; i++) {
        sParserParam* param = params + i;

        char param_name[VAR_NAME_MAX];
        if(i == 0) {
            snprintf(param_name, VAR_NAME_MAX, "it");
        }
        else {
            snprintf(param_name, VAR_NAME_MAX, "it%d", i+1);
        }

        xstrncpy(param->mName, param_name, VAR_NAME_MAX);

        param->mType = clone_node_type(lambda_type->mParamTypes[i]);

        if(generics_type) {
            if(!solve_generics(&param->mType, generics_type)) 
            {
                compile_err_msg(cinfo, "Can't solve generics types");
                show_node_type(param->mType);
                show_node_type(generics_type);
                info->err_num++;

                return FALSE;
            }
        }
    }

    sParserInfo info2;

    memset(&info2, 0, sizeof(sParserInfo));

    info2.p = buf;
    xstrncpy(info2.sname, sname, PATH_MAX);
    info2.source = buf;
    info2.module_name = info->module_name;
    info2.sline = sline;
    info2.parse_phase = info->parse_phase;
    info2.lv_table = info->lv_table;
    info2.in_clang = in_clang;

    sNodeType* result_type = clone_node_type(lambda_type->mResultType);

    if(generics_type) {
        if(!solve_generics(&result_type, generics_type)) 
        {
            compile_err_msg(cinfo, "Can't solve generics types");
            show_node_type(result_type);
            show_node_type(generics_type);
            info->err_num++;

            return FALSE;
        }
    }

    sNodeBlock* node_block = ALLOC sNodeBlock_alloc();
    expect_next_character_with_one_forward("{", &info2);
    sVarTable* old_table = info2.lv_table;

    info2.lv_table = init_block_vtable(old_table);
    sVarTable* block_var_table = info2.lv_table;
    for(i=0; i<num_params; i++) {
        sParserParam param = params[i];

        BOOL readonly = FALSE;
        if(!add_variable_to_table(info2.lv_table, param.mName, param.mType, readonly, NULL, -1, FALSE, param.mType->mConstant))
        {
            return FALSE;
        }
    }

    if(!parse_block(node_block, FALSE, &info2)) {
        sNodeBlock_free(node_block);
        return FALSE;
    }
    
    if(info2.err_num > 0) {
        fprintf(stderr, "Parser error number is %d. ", info2.err_num);
        return FALSE;
    }

    expect_next_character_with_one_forward("}", &info2);
    info2.lv_table = old_table;

    char fun_name[VAR_NAME_MAX];
    create_lambda_name(fun_name, VAR_NAME_MAX, info2.module_name);

    BOOL lambda = TRUE;
    BOOL simple_lambda_param = TRUE;
    BOOL constructor_fun = FALSE;
    BOOL operator_fun = FALSE;
    *node = sNodeTree_create_function(fun_name, params, num_params, result_type, MANAGED node_block, lambda, block_var_table, NULL, operator_fun, constructor_fun, simple_lambda_param, &info2, FALSE, FALSE);


    return TRUE;
}

static void create_generics_fun_name(char* real_fun_name, int size_real_fun_name, char* fun_name, sNodeType** method_generics_types, int num_method_generics_types, sNodeType* generics_type, char* struct_name, int generics_fun_num)
{
    if(struct_name) {
        xstrncpy(real_fun_name, struct_name, size_real_fun_name);

        xstrncat(real_fun_name, "_", size_real_fun_name);
    }
    else {
        xstrncpy(real_fun_name, "", size_real_fun_name);
    }

    xstrncat(real_fun_name, fun_name, size_real_fun_name);

    if(num_method_generics_types > 0) {
        xstrncat(real_fun_name, "_", size_real_fun_name);
    }

    int i;
    for(i=0; i<num_method_generics_types; i++) {
        sNodeType* node_type = method_generics_types[i];
        sCLClass* klass = node_type->mClass;
        xstrncat(real_fun_name, CLASS_NAME(klass), size_real_fun_name);

        int j;
        for(j=0; j<node_type->mPointerNum; j++) 
        {
            xstrncat(real_fun_name, "p", size_real_fun_name);
        }

        if(i != num_method_generics_types-1) {
            xstrncat(real_fun_name, "_", size_real_fun_name);
        }
    }

    if(generics_type->mNumGenericsTypes > 0) {
        xstrncat(real_fun_name, "_", size_real_fun_name);
    }

    for(i=0; i<generics_type->mNumGenericsTypes; i++)
    {
        sNodeType* node_type = generics_type->mGenericsTypes[i];

        sCLClass* klass = node_type->mClass;
        xstrncat(real_fun_name, CLASS_NAME(klass), size_real_fun_name);

        int j;
        for(j=0; j<node_type->mPointerNum; j++) 
        {
            xstrncat(real_fun_name, "p", size_real_fun_name);
        }

        if(i != generics_type->mNumGenericsTypes-1) {
            xstrncat(real_fun_name, "_", size_real_fun_name);
        }
    }

    char buf[128];
    snprintf(buf, 128, "%d", generics_fun_num);

    xstrncat(real_fun_name, buf, size_real_fun_name);
}

static BOOL parse_generics_fun(unsigned int* node, char* buf, sFunction* fun, char* sname, int sline, char* struct_name, sNodeType* generics_type, int num_method_generics_types, sNodeType* method_generics_types[GENERICS_TYPES_MAX],  int num_generics, char generics_type_names[GENERICS_TYPES_MAX][VAR_NAME_MAX], int num_method_generics, char method_generics_type_names[GENERICS_TYPES_MAX][VAR_NAME_MAX], sParserInfo* info, sCompileInfo* cinfo, int generics_fun_num, BOOL in_clang)
{
    /// params ///
    sParserParam params[PARAMS_MAX];
    memset(params, 0, sizeof(sParserParam)*PARAMS_MAX);

    int num_params = fun->mNumParams;
    int i;
    for(i=0; i<num_params; i++) {
        sParserParam* param = params + i;

        xstrncpy(param->mName, fun->mParamNames[i], VAR_NAME_MAX);

        param->mType = clone_node_type(fun->mParamTypes[i]);

        if(!solve_method_generics(&param->mType, num_method_generics_types, method_generics_types))
        {
            compile_err_msg(cinfo, "Can't solve method generics type");
            show_node_type(param->mType);
            info->err_num++;

            return FALSE;
        }

        if(generics_type) {
            if(!solve_generics(&param->mType, generics_type)) 
            {
                compile_err_msg(cinfo, "Can't solve generics types");
                show_node_type(param->mType);
                show_node_type(generics_type);
                info->err_num++;

                return FALSE;
            }
        }
    }

    sParserInfo info2;

    memset(&info2, 0, sizeof(sParserInfo));

    info2.p = buf;
    xstrncpy(info2.sname, sname, PATH_MAX);
    info2.source = buf;
    info2.module_name = info->module_name;
    info2.sline = sline;
    info2.parse_phase = info->parse_phase;
    info2.lv_table = info->lv_table;
    info2.in_clang = in_clang;

    for(i=0; i<num_method_generics_types; i++) {
        info2.mMethodGenericsTypes[i] = clone_node_type(method_generics_types[i]);
    }
    info2.mNumMethodGenericsTypes = num_method_generics_types;

    if(generics_type) {
        info2.mGenericsType = clone_node_type(generics_type);
    }
    else {
        info2.mGenericsType = NULL;
    }

    info2.mNumGenerics = num_generics;
    for(i=0; i<num_generics; i++) {
        xstrncpy(info2.mGenericsTypeNames[i], generics_type_names[i], VAR_NAME_MAX);
    }

    info2.mNumMethodGenerics = num_method_generics;
    for(i=0; i<num_method_generics; i++) {
        xstrncpy(info2.mMethodGenericsTypeNames[i], method_generics_type_names[i], VAR_NAME_MAX);
    }

    sNodeType* result_type = clone_node_type(fun->mResultType);

    if(!solve_method_generics(&result_type, num_method_generics_types, method_generics_types))
    {
        compile_err_msg(cinfo, "Can't solve method generics type");
        show_node_type(result_type);
        info->err_num++;

        return FALSE;
    }

    if(generics_type) {
        if(!solve_generics(&result_type, generics_type)) 
        {
            compile_err_msg(cinfo, "Can't solve generics types");
            show_node_type(result_type);
            show_node_type(generics_type);
            info->err_num++;

            return FALSE;
        }
    }
    xstrncpy(info2.fun_name, fun->mName, VAR_NAME_MAX);

    sNodeBlock* node_block = ALLOC sNodeBlock_alloc();
    expect_next_character_with_one_forward("{", &info2);
    sVarTable* old_table = info2.lv_table;

    info2.lv_table = init_block_vtable(old_table);
    sVarTable* block_var_table = info2.lv_table;
    for(i=0; i<num_params; i++) {
        sParserParam param = params[i];

        BOOL readonly = FALSE;
        if(!add_variable_to_table(info2.lv_table, param.mName, param.mType, readonly, NULL, -1, FALSE, param.mType->mConstant))
        {
            return FALSE;
        }
    }

    if(!parse_block(node_block, FALSE, &info2)) {
        sNodeBlock_free(node_block);
        return FALSE;
    }

    if(info2.err_num > 0) {
        fprintf(stderr, "Parser error number is %d. ", info2.err_num);
        return FALSE;
    }

    expect_next_character_with_one_forward("}", &info2);
    info2.lv_table = old_table;

    char real_fun_name[REAL_FUN_NAME_MAX];
    create_generics_fun_name(real_fun_name, REAL_FUN_NAME_MAX, fun->mName, method_generics_types, num_method_generics_types, generics_type, NULL, generics_fun_num);

    BOOL lambda = FALSE;
    BOOL simple_lambda_param = FALSE;
    BOOL constructor_fun = FALSE;
    BOOL operator_fun = FALSE;
    *node = sNodeTree_create_function(real_fun_name, params, num_params, result_type, MANAGED node_block, lambda, block_var_table, struct_name, operator_fun, constructor_fun, simple_lambda_param, &info2, TRUE, FALSE);

    return TRUE;
}

static BOOL parse_inline_function(sNodeBlock** node_block, char* buf, sFunction* fun, char* sname, int sline, char* struct_name,sNodeType* generics_type, int num_method_generics_types, sNodeType* method_generics_types[GENERICS_TYPES_MAX], int num_generics, char generics_type_names[GENERICS_TYPES_MAX][VAR_NAME_MAX], int num_method_generics, char method_generics_type_names[GENERICS_TYPES_MAX][VAR_NAME_MAX], sParserInfo* info, sCompileInfo* cinfo, BOOL in_clang)
{
    /// params ///
    sParserParam params[PARAMS_MAX];
    memset(params, 0, sizeof(sParserParam)*PARAMS_MAX);

    int num_params = fun->mNumParams;
    int i;
    for(i=0; i<num_params; i++) {
        sParserParam* param = params + i;

        xstrncpy(param->mName, fun->mParamNames[i], VAR_NAME_MAX);
        param->mType = clone_node_type(fun->mParamTypes[i]);

        if(!solve_method_generics(&param->mType, num_method_generics_types, method_generics_types))
        {
            compile_err_msg(cinfo, "Can't solve method generics type");
            show_node_type(param->mType);
            info->err_num++;

            return FALSE;
        }

        if(generics_type) {
            if(!solve_generics(&param->mType, generics_type)) 
            {
                compile_err_msg(cinfo, "Can't solve generics types");
                show_node_type(param->mType);
                show_node_type(generics_type);
                info->err_num++;

                return FALSE;
            }
        }
    }

    sParserInfo info2;

    memset(&info2, 0, sizeof(sParserInfo));

    info2.p = buf;
    xstrncpy(info2.sname, sname, PATH_MAX);
    info2.source = buf;
    info2.module_name = info->module_name;
    info2.sline = sline;
    info2.parse_phase = info->parse_phase;
    info2.lv_table = info->lv_table;
    info2.in_clang = in_clang;

    for(i=0; i<num_method_generics_types; i++) {
        info2.mMethodGenericsTypes[i] = clone_node_type(method_generics_types[i]);
    }
    info2.mNumMethodGenericsTypes = num_method_generics_types;

    if(generics_type) {
        info2.mGenericsType = clone_node_type(generics_type);
    }
    else {
        info2.mGenericsType = NULL;
    }

    info2.mNumGenerics = num_generics;
    for(i=0; i<num_generics; i++) {
        xstrncpy(info2.mGenericsTypeNames[i], generics_type_names[i], VAR_NAME_MAX);
    }

    info2.mNumMethodGenerics = num_method_generics;
    for(i=0; i<num_method_generics; i++) {
        xstrncpy(info2.mMethodGenericsTypeNames[i], method_generics_type_names[i], VAR_NAME_MAX);
    }

    sNodeType* result_type = clone_node_type(fun->mResultType);

    *node_block = ALLOC sNodeBlock_alloc();
    expect_next_character_with_one_forward("{", &info2);
    sVarTable* old_table = info2.lv_table;

    info2.lv_table = init_block_vtable(old_table);
    sVarTable* block_var_table = info2.lv_table;
    for(i=0; i<num_params; i++) {
        sParserParam param = params[i];

        BOOL readonly = FALSE;
        if(!add_variable_to_table(info2.lv_table, param.mName, param.mType, readonly, NULL, -1, FALSE, param.mType->mConstant))
        {
            return FALSE;
        }
    }

    if(!parse_block(*node_block, FALSE, &info2)) {
        return FALSE;
    }

    if(info2.err_num > 0) {
        fprintf(stderr, "Parser error number is %d. ", info2.err_num);
        return FALSE;
    }

    expect_next_character_with_one_forward("}", &info2);
    info2.lv_table = old_table;

    return TRUE;
}

unsigned int sNodeTree_create_function_call(char* fun_name, unsigned int* params, int num_params, BOOL method, BOOL inherit, sParserInfo* info)
{
    unsigned int node = alloc_node();

    xstrncpy(gNodes[node].uValue.sFunctionCall.mName, fun_name, VAR_NAME_MAX);
    gNodes[node].uValue.sFunctionCall.mNumParams = num_params;

    int i;
    for(i=0; i<num_params; i++) {
        gNodes[node].uValue.sFunctionCall.mParams[i] = params[i];
    }

    gNodes[node].uValue.sFunctionCall.mMethod = method;
    gNodes[node].uValue.sFunctionCall.mInherit = inherit;
    
    gNodes[node].mNodeType = kNodeTypeFunctionCall;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    gNodes[node].mLeft = 0;
    gNodes[node].mRight = 0;
    gNodes[node].mMiddle = 0;

    return node;
}

BOOL compile_function_call(unsigned int node, sCompileInfo* info)
{
    /// rename variables ///
    char fun_name[VAR_NAME_MAX];
    xstrncpy(fun_name, gNodes[node].uValue.sFunctionCall.mName, VAR_NAME_MAX);
    int num_params = gNodes[node].uValue.sFunctionCall.mNumParams;
    unsigned int params[PARAMS_MAX];
    BOOL method = gNodes[node].uValue.sFunctionCall.mMethod;
    BOOL inherit = gNodes[node].uValue.sFunctionCall.mInherit;

    if(strcmp(fun_name, "va_start") == 0) {
        xstrncpy(fun_name, "llvm.va_start", VAR_NAME_MAX);
    }
    else if(strcmp(fun_name, "va_end") == 0) {
        xstrncpy(fun_name, "llvm.va_end", VAR_NAME_MAX);
    }
    else if(strcmp(fun_name, "va_copy") == 0) {
        xstrncpy(fun_name, "llvm.va_copy", VAR_NAME_MAX);
    }

    /// go ///
    sNodeType* param_types[PARAMS_MAX];
    memset(param_types, 0, sizeof(sNodeType*)*PARAMS_MAX);
    BOOL simple_lambda_param = FALSE;

    if(num_params > 0) {
        unsigned int param = gNodes[node].uValue.sFunctionCall.mParams[num_params-1];
        simple_lambda_param = gNodes[param].mNodeType == kNodeTypeSimpleLambdaParam;
    }

    int num_params2;
    if(simple_lambda_param) {
        num_params2 = num_params-1;
    }
    else {
        num_params2 = num_params;
    }

    /// compile first parametor for determing to the class name ///
    sNodeType* generics_type = NULL;

    if(num_params2 > 0) {
        params[0] = gNodes[node].uValue.sFunctionCall.mParams[0];
        
        if(!compile(params[0], info)) {
            return FALSE;
        }

        param_types[0] = info->type;
        generics_type = info->type;
    }

    sNodeType* generics_type_before = info->generics_type;
    info->generics_type = generics_type;

    /// get real fun name ///
    char real_fun_name[REAL_FUN_NAME_MAX];

    char* struct_name = NULL;
    if(num_params2 > 0) {
        if(method) {
            struct_name = CLASS_NAME(param_types[0]->mClass);

            create_real_fun_name(real_fun_name, REAL_FUN_NAME_MAX, fun_name, struct_name);
        }
        else {
            create_real_fun_name(real_fun_name, REAL_FUN_NAME_MAX, fun_name, "");
        }
    }
    else {
        create_real_fun_name(real_fun_name, REAL_FUN_NAME_MAX, fun_name, "");
    }


    /// get function ///
    sFunction fun = gFuncs[real_fun_name];

    if(inherit) {
        if(fun.mParentFunction == -1) 
        {
            compile_err_msg(info, "can't call inherit function because there is not parent function");
            info->err_num++;

            return TRUE;
        }

        fun = gFunctionStack[fun.mParentFunction];
    }

    if(fun.mResultType == nullptr) {
        compile_err_msg(info, "function not found %s\n", real_fun_name);
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        info->generics_type = generics_type_before;
        return TRUE;
    }

    /// std move first parametor ///
    if(num_params2 > 0) {
        LVALUE param = *get_value_from_stack(-1);

        if(fun.mNumParams > 0) {
            sNodeType* left_type = clone_node_type(fun.mParamTypes[0]);

            if(!(strcmp(fun.mName, "initialize") == 0 && inherit))
            {
                std_move(NULL, left_type, &param, FALSE, info);
            }
        }
    }

    /// compile parametors ///
    int i;
    for(i=1; i<num_params2; i++) {
        params[i] = gNodes[node].uValue.sFunctionCall.mParams[i];
        
        if(!compile(params[i], info)) {
            info->generics_type = generics_type_before;
            return FALSE;
        }

        param_types[i] = info->type;

        LVALUE param = *get_value_from_stack(-1);

        if(i < fun.mNumParams) {
            sNodeType* left_type = clone_node_type(fun.mParamTypes[i]);
            std_move(NULL, left_type, &param, FALSE, info);
        }
    }

    /// compile simple lambda param ///
    if(simple_lambda_param) {
        params[num_params2] = gNodes[node].uValue.sFunctionCall.mParams[num_params2];

        char* buf = gNodes[params[num_params2]].uValue.sSimpleLambdaParam.mBuf;

        char sname[PATH_MAX];
        xstrncpy(sname, gNodes[params[num_params2]].uValue.sSimpleLambdaParam.mSName, PATH_MAX);
        int sline = gNodes[params[num_params2]].uValue.sSimpleLambdaParam.mSLine;

        BOOL in_clang = fun.mInCLang;

        unsigned int node = 0;
        if(!parse_simple_lambda_param(&node, buf, &fun, sname, sline, generics_type, info->pinfo, info, in_clang))
        {
            info->generics_type = generics_type_before;
            return FALSE;
        }

        gNodes[node].mLine = info->pinfo->sline;
        xstrncpy(gNodes[node].mSName, info->pinfo->sname, PATH_MAX);

        if(!compile(node, info)) {
            info->generics_type = generics_type_before;
            return FALSE;
        }

        param_types[num_params2] = info->type;
    }

    /// generics ///
    sNodeType* method_generics_types[GENERICS_TYPES_MAX];
    memset(method_generics_types, 0, sizeof(sNodeType*)*GENERICS_TYPES_MAX);

    int num_method_generics_types = 0;

    sNodeBlock* inline_block = NULL;

    if(fun.mBlockText && !info->no_output) 
    {
        if(fun.mInlineFunction) {
            int i;
            for(i=0; i<num_params; i++) {
                sNodeType* fun_param_type = clone_node_type(fun.mParamTypes[i]);
                sNodeType* param_type = clone_node_type(param_types[i]);

                if(fun_param_type && param_type) {
                    if(!get_type_of_method_generics(method_generics_types, fun_param_type, param_type))
                    {
                        compile_err_msg(info, "method generics getting type error");
                        info->err_num++;

                        info->type = create_node_type_with_class_name("int"); // dummy

                        info->generics_type = generics_type_before;
                        return TRUE;
                    }
                }
            }

            for(i=0; i<GENERICS_TYPES_MAX; i++) {
                if(!method_generics_types[i]) {
                    break;
                }
            }

            num_method_generics_types = i;

            char* buf = fun.mBlockText;

            char sname[PATH_MAX];
            xstrncpy(sname, fun.mSName, PATH_MAX);

            int sline = fun.mSLine;

            BOOL in_clang = fun.mInCLang;

            if(!parse_inline_function(&inline_block, buf, &fun, sname, sline, struct_name, generics_type, num_method_generics_types, method_generics_types, fun.mNumGenerics, fun.mGenericsTypeNames, fun.mNumMethodGenerics, fun.mMethodGenericsTypeNames, info->pinfo, info, in_clang))
            {
                info->generics_type = generics_type_before;
                return FALSE;
            }
        }
        else {
            int i;
            for(i=0; i<num_params; i++) {
                sNodeType* fun_param_type = clone_node_type(fun.mParamTypes[i]);
                sNodeType* param_type = clone_node_type(param_types[i]);

                if(fun_param_type && param_type) {
                    if(!get_type_of_method_generics(method_generics_types, fun_param_type, param_type))
                    {
                        compile_err_msg(info, "method generics getting type error");
                        info->err_num++;

                        info->type = create_node_type_with_class_name("int"); // dummy

                        info->generics_type = generics_type_before;
                        return TRUE;
                    }
                }
            }

            for(i=0; i<GENERICS_TYPES_MAX; i++) {
                if(!method_generics_types[i]) {
                    break;
                }
            }

            num_method_generics_types = i;

            static int generics_fun_num = 0;
            generics_fun_num++;
            create_generics_fun_name(real_fun_name, REAL_FUN_NAME_MAX, fun.mName, method_generics_types, num_method_generics_types, generics_type, struct_name, generics_fun_num);
            sFunction fun2 = gFuncs[real_fun_name];

            if(fun2.mResultType == nullptr) {
                LVALUE* llvm_stack = gLLVMStack;
                int stack_num = info->stack_num;

                char* buf = fun.mBlockText;

                char sname[PATH_MAX];
                xstrncpy(sname, fun.mSName, PATH_MAX);

                int sline = fun.mSLine;

                BOOL in_clang = fun.mInCLang;

                unsigned int node = 0;
                if(!parse_generics_fun(&node, buf, &fun, sname, sline, struct_name, generics_type, num_method_generics_types, method_generics_types, fun.mNumGenerics, fun.mGenericsTypeNames, fun.mNumMethodGenerics, fun.mMethodGenericsTypeNames, info->pinfo, info, generics_fun_num, in_clang))
                {
                    info->generics_type = generics_type_before;
                    gLLVMStack = llvm_stack;
                    info->stack_num = stack_num;
                    return FALSE;
                }

                gNodes[node].mLine = info->pinfo->sline;
                xstrncpy(gNodes[node].mSName, info->pinfo->sname, PATH_MAX);

                if(!compile(node, info)) {
                    info->generics_type = generics_type_before;
                    gLLVMStack = llvm_stack;
                    info->stack_num = stack_num;
                    return FALSE;
                }

                //dec_stack_ptr(1, info);

                info->stack_num = stack_num;
                gLLVMStack = llvm_stack;
            }

            fun = gFuncs[real_fun_name];
        }
    }

    /// check parametors ///
    sNodeType* fun_params[PARAMS_MAX];
    BOOL valid_parametor = TRUE;

    int check_param_num;
    if(fun.mNumParams == num_params || (fun.mVarArg && num_params >= fun.mNumParams)) 
    {
        memset(method_generics_types, 0, sizeof(sNodeType*)*GENERICS_TYPES_MAX);

        if(fun.mVarArg) {
            check_param_num = fun.mNumParams;
        }
        else {
            check_param_num = num_params;
        }

        BOOL found = TRUE;
        int i;
        for(i=0; i<check_param_num; i++) {
            sNodeType* left_type = clone_node_type(fun.mParamTypes[i]);
            sNodeType* right_type = clone_node_type(param_types[i]);

            sCLClass* left_class = left_type->mClass;

            if(left_class->mFlags & CLASS_FLAGS_METHOD_GENERICS)
            {
                int method_generics_num = left_class->mMethodGenericsNum;
                if(method_generics_types[method_generics_num])
                {
                    if(type_identify(method_generics_types[method_generics_num], right_type))
                    {
                        left_type = right_type;
                    }
                    else 
                    {
                        found = FALSE;
                    }
                }
                else {
                    method_generics_types[method_generics_num] = right_type;

                    left_type = right_type;
                }
            }

            if(!solve_generics(&left_type, generics_type)) {
                found = FALSE;
            }

            if(auto_cast_posibility(left_type, right_type)) 
            {
                if(!cast_right_type_to_left_type(left_type, &right_type, NULL, info))
                {
                    compile_err_msg(info, "Cast failed");
                    info->err_num++;

                    info->type = create_node_type_with_class_name("int"); // dummy
                    info->generics_type = generics_type_before;

                    return TRUE;
                }
            }

            if(!substitution_posibility(left_type, right_type, info))
            {
                found = FALSE;
            }

            fun_params[i] = left_type;
        }

        if(!found) {
            valid_parametor = FALSE;
        }
    }

    if(!valid_parametor) {
        compile_err_msg(info, "function parametor type error (%s)\n", real_fun_name);
        info->err_num++;

        fprintf(stderr, "\nfunction parametor\n\n");

        int i;
        for(i=0; i<check_param_num; i++) {
            printf("param #%d\n", i);
            show_node_type(fun_params[i]);
        }

        fprintf(stderr, "\nparams parametor\n\n");

        for(i=0; i<num_params; i++) {
            printf("param #%d\n", i);
            show_node_type(param_types[i]);
        }

        info->type = create_node_type_with_class_name("int"); // dummy

        info->generics_type = generics_type_before;
        return TRUE;
    }

    /// convert param type ///
    std::vector<Value*> llvm_params;
    LVALUE* lvalue_params[PARAMS_MAX];

    for(i=0; i<num_params; i++) {
        if(i < fun.mNumParams) {
            sNodeType* left_type = clone_node_type(fun.mParamTypes[i]);
            sNodeType* right_type = clone_node_type(param_types[i]);
            LVALUE param = *get_value_from_stack(-num_params+i);

            lvalue_params[i] = &param;

            if(fun.mInlineFunction) {
                if(!solve_method_generics(&left_type, num_method_generics_types, method_generics_types))
                {
                    compile_err_msg(info, "Can't solve method generics type");
                    show_node_type(left_type);
                    info->err_num++;

                    return FALSE;
                }

                if(generics_type) {
                    if(!solve_generics(&left_type, generics_type))
                    {
                        compile_err_msg(info, "Can't solve generics types");
                        show_node_type(left_type);
                        show_node_type(generics_type);
                        info->err_num++;

                        info->type = create_node_type_with_class_name("int"); // dummy

                        info->generics_type = generics_type_before;
                        return TRUE;
                    }
                }
            }

            if(auto_cast_posibility(left_type, right_type)) 
            {
                if(!cast_right_type_to_left_type(left_type, &right_type, &param, info))
                {
                    compile_err_msg(info, "Cast failed");
                    info->err_num++;

                    info->type = create_node_type_with_class_name("int"); // dummy
                    info->generics_type = generics_type_before;

                    return TRUE;
                }
            }

            sCLClass* left_class = left_type->mClass;
            if(left_class->mFlags & CLASS_FLAGS_METHOD_GENERICS)
            {
                sNodeType* left_type = create_node_type_with_class_name("long");

                sNodeType* right_type2 = clone_node_type(right_type);
                LVALUE rvalue;
                rvalue.value = param.value;
                rvalue.type = right_type2;
                rvalue.address = nullptr;
                rvalue.var = nullptr;

                if(!cast_right_type_to_left_type(left_type, &right_type, &rvalue, info))
                {
                    compile_err_msg(info, "Cast failed");
                    info->err_num++;

                    info->type = create_node_type_with_class_name("int"); // dummy
                    info->generics_type = generics_type_before;

                    return TRUE;
                }

                param.value = rvalue.value;
            }

            llvm_params.push_back(param.value);
        }
        else {
            LVALUE param = *get_value_from_stack(-num_params+i);
            llvm_params.push_back(param.value);
        }
    }

    dec_stack_ptr(num_params, info);

    if(fun.mInlineFunction) {
        BasicBlock* inline_func_begin = BasicBlock::Create(TheContext, fun_name, gFunction);

        free_right_value_objects(info);
        Builder.CreateBr(inline_func_begin);

        BasicBlock* current_block_before;
        llvm_change_block(inline_func_begin, &current_block_before, info, FALSE);

        void* inline_func_end_before = info->inline_func_end;
        info->inline_func_end = BasicBlock::Create(TheContext, "inline_func_end", gFunction);

        sVarTable* lv_table = inline_block->mLVTable;

        for(i=0; i<num_params; i++) {
            Value* param = llvm_params[i];
            char* param_name = fun.mParamNames[i];

            sVar* var = get_variable_from_table(lv_table, param_name);

            sNodeType* var_type = param_types[i];

            Type* llvm_type;
            if(!create_llvm_type_from_node_type(&llvm_type, var_type, info))
            {
                compile_err_msg(info, "Getting llvm type failed(6)");
                show_node_type(var_type);
                info->err_num++;

                info->type = create_node_type_with_class_name("int"); // dummy

                return TRUE;
            }

            int alignment = get_llvm_alignment_from_node_type(var_type);

            Value* address = Builder.CreateAlloca(llvm_type, 0, param_name);
            var->mLLVMValue = address;

            BOOL parent = FALSE;
            int index = get_variable_index(lv_table, param_name, &parent);

            store_address_to_lvtable(index, address);

            Builder.CreateAlignedStore(param,  address, alignment);
        }

        sNodeType* result_type = clone_node_type(fun.mResultType);

        if(!solve_method_generics(&result_type, num_method_generics_types, method_generics_types))
        {
            compile_err_msg(info, "Can't solve method generics type");
            show_node_type(result_type);
            info->err_num++;

            return FALSE;
        }

        if(generics_type) {
            if(!solve_generics(&result_type, generics_type))
            {
                compile_err_msg(info, "Can't solve generics types");
                show_node_type(result_type);
                show_node_type(generics_type);
                info->err_num++;

                info->type = create_node_type_with_class_name("int"); // dummy

                info->generics_type = generics_type_before;
                return TRUE;
            }
        }

        Type* llvm_type;
        if(!create_llvm_type_from_node_type(&llvm_type, result_type, info))
        {
            compile_err_msg(info, "Getting llvm type failed(105)");
            show_node_type(result_type);
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }

        sNodeType* result_type_before = info->result_type;
        info->result_type = clone_node_type(result_type);

        Value* result_variable = NULL;
        if(!type_identify_with_class_name(result_type, "void"))
        {
            IRBuilder<> ir(&gFunction->getEntryBlock()
                            , gFunction->getEntryBlock().begin());
            result_variable = ir.CreateAlloca(llvm_type, 0, "result_variable");
        }

        void* result_variable_before = info->result_variable;
        info->result_variable = result_variable;

        BOOL last_expression_is_return_before = info->last_expression_is_return;
        info->last_expression_is_return = FALSE;

        if(!compile_block(inline_block, info, result_type))
        {
            return FALSE;
        }

        if(!info->last_expression_is_return) {
            free_right_value_objects(info);
            Builder.CreateBr((BasicBlock*)info->inline_func_end);
        }

        llvm_change_block((BasicBlock*)info->inline_func_end, &current_block_before, info, FALSE);

        if(!type_identify_with_class_name(result_type, "void"))
        {
            int alignment = get_llvm_alignment_from_node_type(result_type);

            LVALUE llvm_value;
            llvm_value.value = Builder.CreateAlignedLoad(result_variable, alignment, "result_variable");
            llvm_value.type = result_type;
            llvm_value.address = result_variable;
            llvm_value.var = NULL;

            push_value_to_stack_ptr(&llvm_value, info);
        }

        info->type = result_type;

        info->last_expression_is_return = last_expression_is_return_before;
        info->result_variable = result_variable_before;
        info->result_type = result_type_before;
        info->inline_func_end = inline_func_end_before;
    }
    else if(type_identify_with_class_name(fun.mResultType, "void"))
    {
        Function* llvm_fun = fun.mLLVMFunction;

        if(!info->no_output) {
            Builder.CreateCall(llvm_fun, llvm_params);
        }

        info->type = clone_node_type(fun.mResultType);
    }
    else {
        sNodeType* result_type = clone_node_type(fun.mResultType);

        if(generics_type) {
            if(!solve_generics(&result_type, generics_type))
            {
                compile_err_msg(info, "Can't solve generics types");
                show_node_type(result_type);
                show_node_type(generics_type);
                info->err_num++;

                info->type = create_node_type_with_class_name("int"); // dummy

                info->generics_type = generics_type_before;
                return TRUE;
            }
        }

        if(!info->no_output) {
            Function* llvm_fun = fun.mLLVMFunction;

            if(llvm_fun == nullptr) {
                return TRUE;
            }

            LVALUE llvm_value;
            llvm_value.value = Builder.CreateCall(llvm_fun, llvm_params);
            llvm_value.type = result_type;
            llvm_value.address = nullptr;
            llvm_value.var = nullptr;

            push_value_to_stack_ptr(&llvm_value, info);

            info->type = result_type;
        }
        else {
            LVALUE llvm_value;
            llvm_value.value = get_dummy_value(result_type, info);
            llvm_value.type = result_type;
            llvm_value.address = nullptr;
            llvm_value.var = nullptr;

            push_value_to_stack_ptr(&llvm_value, info);

            info->type = result_type;
        }
    }

    info->generics_type = generics_type_before;

    return TRUE;
}

unsigned int sNodeTree_create_function(char* fun_name, sParserParam* params, int num_params, sNodeType* result_type, MANAGED struct sNodeBlockStruct* node_block, BOOL lambda, sVarTable* block_var_table, char* struct_name, BOOL operator_fun, BOOL constructor_fun, BOOL simple_lambda_param, sParserInfo* info, BOOL generics_function, BOOL var_arg)
{
    unsigned int node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeFunction;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    gNodes[node].mLeft = 0;
    gNodes[node].mRight = 0;
    gNodes[node].mMiddle = 0;

    xstrncpy(gNodes[node].uValue.sFunction.mName, fun_name, VAR_NAME_MAX);

    int i;
    for(i=0; i<num_params; i++) {
        gNodes[node].uValue.sFunction.mParams[i] = params[i]; // copy struct
        gNodes[node].uValue.sFunction.mParams[i].mType = clone_node_type(params[i].mType);
    }

    gNodes[node].uValue.sFunction.mNumParams = num_params;
    gNodes[node].uValue.sFunction.mResultType = clone_node_type(result_type);
    gNodes[node].uValue.sFunction.mNodeBlock = MANAGED node_block;
    gNodes[node].uValue.sFunction.mLambda = lambda;
    gNodes[node].uValue.sFunction.mVarTable = block_var_table;
    gNodes[node].uValue.sFunction.mVarArg = var_arg;
    gNodes[node].uValue.sFunction.mInCLang = info->in_clang;

    if(struct_name) {
        xstrncpy(gNodes[node].uValue.sFunction.mStructName, struct_name, VAR_NAME_MAX);
    }
    else {
        xstrncpy(gNodes[node].uValue.sFunction.mStructName, "", VAR_NAME_MAX);
    }

    gNodes[node].uValue.sFunction.mOperatorFun = operator_fun;
    gNodes[node].uValue.sFunction.mSimpleLambdaParam = simple_lambda_param;
    gNodes[node].uValue.sFunction.mGenericsFunction = generics_function;
    gNodes[node].uValue.sFunction.mConstructorFun = constructor_fun;

    return node;
}

BOOL compile_function(unsigned int node, sCompileInfo* info)
{
    BOOL in_clang = gNodes[node].uValue.sFunction.mInCLang;

    /// get result type ///
    sNodeType* result_type = gNodes[node].uValue.sFunction.mResultType;
    BOOL generics_function = gNodes[node].uValue.sFunction.mGenericsFunction;
    char fun_name[VAR_NAME_MAX];
    xstrncpy(fun_name, gNodes[node].uValue.sFunction.mName, VAR_NAME_MAX);
    BOOL var_arg = gNodes[node].uValue.sFunction.mVarArg;

    /// rename variables ///
    int num_params = gNodes[node].uValue.sFunction.mNumParams;
    BOOL lambda = gNodes[node].uValue.sFunction.mLambda;
    sVarTable* block_var_table = gNodes[node].uValue.sFunction.mVarTable;

    sParserParam params[PARAMS_MAX];
    memset(params, 0, sizeof(sParserParam)*PARAMS_MAX);

    int i;
    for(i=0; i<num_params; i++) {
        params[i] = gNodes[node].uValue.sFunction.mParams[i];
    }

    sNodeBlock* node_block = gNodes[node].uValue.sFunction.mNodeBlock;
    char* struct_name = gNodes[node].uValue.sFunction.mStructName;


    BOOL operator_fun = gNodes[node].uValue.sFunction.mOperatorFun;

    BOOL simple_lambda_param = gNodes[node].uValue.sFunction.mSimpleLambdaParam;
    BOOL constructor_fun = gNodes[node].uValue.sFunction.mConstructorFun;

    BOOL no_output_before = info->no_output;
    if(simple_lambda_param) {
        info->no_output = TRUE;
    }

    /// go ///
    std::vector<Type *> llvm_param_types;
    sNodeType* param_types[PARAMS_MAX];
    char param_names[PARAMS_MAX][VAR_NAME_MAX];

    for(i=0; i<num_params; i++) {
        sNodeType* param_type = params[i].mType;

        Type* llvm_param_type;
        if(!create_llvm_type_from_node_type(&llvm_param_type, param_type, info))
        {
            compile_err_msg(info, "Getting llvm type failed(5)");
            show_node_type(param_type);
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }
        llvm_param_types.push_back(llvm_param_type);

        xstrncpy(param_names[i], params[i].mName, VAR_NAME_MAX);
        param_types[i] = param_type;
    }

    char real_fun_name[REAL_FUN_NAME_MAX];
    if(operator_fun) {
        create_operator_fun_name(real_fun_name, REAL_FUN_NAME_MAX, fun_name, param_types, num_params);
    }
    else {
        create_real_fun_name(real_fun_name, REAL_FUN_NAME_MAX, fun_name, struct_name);
    }

    char generics_type_names[GENERICS_TYPES_MAX][VAR_NAME_MAX];
    memset(generics_type_names, 0, sizeof(char)*GENERICS_TYPES_MAX*VAR_NAME_MAX);

    char method_generics_type_names[GENERICS_TYPES_MAX][VAR_NAME_MAX];

    memset(method_generics_type_names, 0, sizeof(char)*GENERICS_TYPES_MAX*VAR_NAME_MAX);

    Type* llvm_result_type;
    if(!create_llvm_type_from_node_type(&llvm_result_type, result_type, info))
    {
        compile_err_msg(info, "Getting llvm type failed(4)");
        show_node_type(result_type);
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }

    if(gFuncs[real_fun_name].mExternal && strcmp(struct_name, "") == 0)
    {
        Function* llvm_fun = gFuncs[real_fun_name].mLLVMFunction;

        if(llvm_fun) {
            llvm_fun->eraseFromParent();
        }
    }

    FunctionType* function_type = FunctionType::get(llvm_result_type, llvm_param_types, var_arg);
    Function* fun = Function::Create(function_type, Function::ExternalLinkage, real_fun_name, TheModule);

    if(!add_function(fun_name, real_fun_name, fun, param_names, param_types, num_params, result_type, 0, method_generics_type_names, FALSE, var_arg, NULL, 0, generics_type_names, FALSE, FALSE, NULL, 0, in_clang, FALSE))
    {
        compile_err_msg(info, "Not same parametor or result type to external function declaration and function body declaration.");
        info->err_num++;

        return TRUE;
    }

    int n = 0;
    std::vector<Value *> llvm_params;
    for(auto &llvm_param : fun->args()) {
        sParserParam param = params[n];
        char* var_name = param.mName;

        llvm_params.push_back(&llvm_param);
        llvm_param.setName(var_name);
        
        n++;
    }

    Function* function_before = gFunction;
    gFunction = fun;

    BasicBlock* current_block_before;
    BasicBlock* current_block = BasicBlock::Create(TheContext, "entry", fun);
    llvm_change_block(current_block, &current_block_before, info, FALSE);

    /// copy lvtable for other function ///
    Value* lvtable;
    lvtable = store_lvtable();

    void* function_lvtable_before = info->function_lvtable;
    info->function_lvtable = lvtable;

    /// ready for params ///
    for(i=0; i<num_params; i++) {
        sParserParam param = params[i];
        char* var_name = param.mName;

        sVar* var = get_variable_from_table(node_block->mLVTable, (char*)var_name);

        sNodeType* var_type = var->mType;

        Type* llvm_type;
        if(!create_llvm_type_from_node_type(&llvm_type, var_type, info))
        {
            compile_err_msg(info, "Getting llvm type failed(6)");
            show_node_type(var_type);
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy


            info->function_lvtable = function_lvtable_before;
            return TRUE;
        }

        int alignment = get_llvm_alignment_from_node_type(var_type);

        Value* address = Builder.CreateAlloca(llvm_type, 0, var_name);
        var->mLLVMValue = address;

        Builder.CreateAlignedStore(llvm_params[i], address, alignment);

        BOOL parent = FALSE;
        int index = get_variable_index(block_var_table, var_name, &parent);

        store_address_to_lvtable(index, address);
    }

    char fun_name_before[VAR_NAME_MAX];
    xstrncpy(fun_name_before, info->fun_name, VAR_NAME_MAX);

    xstrncpy(info->fun_name, fun_name, VAR_NAME_MAX);

    sVarTable* lv_table_before = NULL;
    sVarTable* node_block_lv_table_before = NULL;

    sNodeType* result_type_before = info->result_type;
    info->result_type = clone_node_type(result_type);

    BOOL last_expression_is_return_before = info->last_expression_is_return;
    info->last_expression_is_return = FALSE;

    if(!compile_block(node_block, info, result_type))
    {
        info->function_lvtable = function_lvtable_before;
        info->result_type = result_type_before;
        xstrncpy(info->fun_name, fun_name_before, VAR_NAME_MAX);
        return FALSE;
    }

    info->result_type = result_type_before;
    sNodeType* block_result_type = info->type;
    info->function_lvtable = function_lvtable_before;
    xstrncpy(info->fun_name, fun_name_before, VAR_NAME_MAX);

    if(!info->last_expression_is_return) {
        restore_lvtable(lvtable);

        free_right_value_objects(info);

        // Finish off the function.
        if(type_identify_with_class_name(result_type, "void"))
        {
            Value* ret_value = nullptr;

            Builder.CreateRet(ret_value);
        }
        else {
            LVALUE ret_value = *get_value_from_stack(-1);

            Builder.CreateRet(ret_value.value);

            dec_stack_ptr(1, info);
        }
    }

    info->last_expression_is_return = last_expression_is_return_before;


    verifyFunction(*fun);

    // Run the optimizer on the function.
    //TheFPM->run(*fun, TheFAM);
    
    sNodeType* lambda_type = create_node_type_with_class_name("lambda");

    for(i=0; i<num_params; i++) {
        sNodeType* param_type = param_types[i];

        lambda_type->mParamTypes[i] = param_type;
    }

    lambda_type->mResultType = block_result_type;
    lambda_type->mNumParams = num_params;

    LVALUE llvm_value;
    llvm_value.value = fun;
    llvm_value.type = lambda_type;
    llvm_value.address = nullptr;
    llvm_value.var = nullptr;

    if(!info->no_output) {
        push_value_to_stack_ptr(&llvm_value, info);
    }

    info->type = lambda_type;

    if(info->no_output) 
    {
        gFunction->eraseFromParent();
    }

    info->no_output = no_output_before;

    gFunction = function_before;

    if(simple_lambda_param) {
        result_type = block_result_type;

        Type* llvm_result_type;
        if(!create_llvm_type_from_node_type(&llvm_result_type, result_type, info))
        {
            compile_err_msg(info, "Getting llvm type failed(4)");
            show_node_type(result_type);
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }

        FunctionType* function_type = FunctionType::get(llvm_result_type, llvm_param_types, false);
        Function* fun = Function::Create(function_type, Function::ExternalLinkage, real_fun_name, TheModule);
        if(!add_function(fun_name, real_fun_name, fun, param_names, param_types, num_params, result_type, 0, method_generics_type_names, FALSE, FALSE, NULL, 0, generics_type_names, FALSE, FALSE, NULL, 0, info->pinfo->in_clang, FALSE))
        {
            compile_err_msg(info, "Not same parametor or result type to external function declaration and function body declaration.");
            info->err_num++;

            return TRUE;
        }

        int n = 0;
        std::vector<Value *> llvm_params;
        for(auto &llvm_param : fun->args()) {
            sParserParam param = params[n];
            char* var_name = param.mName;

            llvm_params.push_back(&llvm_param);
            llvm_param.setName(var_name);
            
            n++;
        }

        Function* function_before = gFunction;
        gFunction = fun;

        BasicBlock* current_block_before;
        BasicBlock* current_block = BasicBlock::Create(TheContext, "entry", fun);
        llvm_change_block(current_block, &current_block_before, info, FALSE);

        /// copy lvtable for other function ///
        Value* lvtable;
        lvtable = store_lvtable();

        void* function_lvtable_before = info->function_lvtable;
        info->function_lvtable = lvtable;

        /// ready for params ///
        for(i=0; i<num_params; i++) {
            sParserParam param = params[i];
            char* var_name = param.mName;

            sVar* var = get_variable_from_table(node_block->mLVTable, (char*)var_name);

            sNodeType* var_type = var->mType;

            Type* llvm_type;
            if(!create_llvm_type_from_node_type(&llvm_type, var_type, info))
            {
                compile_err_msg(info, "Getting llvm type failed(6)");
                show_node_type(var_type);
                info->err_num++;

                info->type = create_node_type_with_class_name("int"); // dummy


                info->function_lvtable = function_lvtable_before;
                return TRUE;
            }

            int alignment = get_llvm_alignment_from_node_type(var_type);

            Value* address = Builder.CreateAlloca(llvm_type, 0, var_name);
            var->mLLVMValue = address;

            Builder.CreateAlignedStore(llvm_params[i], address, alignment);

            BOOL parent = FALSE;
            int index = get_variable_index(block_var_table, var_name, &parent);

            store_address_to_lvtable(index, address);
        }

        char fun_name_before[VAR_NAME_MAX];
        xstrncpy(fun_name_before, info->fun_name, VAR_NAME_MAX);

        xstrncpy(info->fun_name, fun_name, VAR_NAME_MAX);

        sVarTable* lv_table_before = NULL;
        sVarTable* node_block_lv_table_before = NULL;

        sNodeType* result_type_before = info->result_type;
        info->result_type = clone_node_type(result_type);

        BOOL last_expression_is_return_before = info->last_expression_is_return;
        info->last_expression_is_return = FALSE;

        if(!compile_block(node_block, info, result_type))
        {
            xstrncpy(info->fun_name, fun_name_before, VAR_NAME_MAX);
            return FALSE;
        }

        info->result_type = result_type_before;
        sNodeType* block_result_type = info->type;
        info->function_lvtable = function_lvtable_before;
        xstrncpy(info->fun_name, fun_name_before, VAR_NAME_MAX);

        if(!info->last_expression_is_return) {
            restore_lvtable(lvtable);

            free_right_value_objects(info);

            // Finish off the function.
            if(type_identify_with_class_name(result_type, "void"))
            {
                Value* ret_value = nullptr;

                Builder.CreateRet(ret_value);
            }
            else {
                LVALUE ret_value = *get_value_from_stack(-1);

                Builder.CreateRet(ret_value.value);

                dec_stack_ptr(1, info);
            }
        }

        info->last_expression_is_return = last_expression_is_return_before;

        verifyFunction(*fun);

        // Run the optimizer on the function.
        //TheFPM->run(*fun, TheFAM);
        
        sNodeType* lambda_type = create_node_type_with_class_name("lambda");

        for(i=0; i<num_params; i++) {
            sNodeType* param_type = param_types[i];

            lambda_type->mParamTypes[i] = param_type;
        }

        lambda_type->mResultType = block_result_type;
        lambda_type->mNumParams = num_params;

        LVALUE llvm_value;
        llvm_value.value = fun;
        llvm_value.type = lambda_type;
        llvm_value.address = nullptr;
        llvm_value.var = nullptr;

        push_value_to_stack_ptr(&llvm_value, info);

        info->type = lambda_type;

        gFunction = function_before;
    }

    BasicBlock* current_block_before2;
    llvm_change_block(current_block_before, &current_block_before2, info, FALSE);

    return TRUE;
}

unsigned int sNodeTree_create_generics_function(char* fun_name, sParserParam* params, int num_params, sNodeType* result_type, MANAGED char* block_text, char* struct_name, char* sname, int sline, sParserInfo* info)
{
    unsigned int node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeGenericsFunction;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = sline;

    gNodes[node].mLeft = 0;
    gNodes[node].mRight = 0;
    gNodes[node].mMiddle = 0;

    xstrncpy(gNodes[node].uValue.sFunction.mName, fun_name, VAR_NAME_MAX);


    int i;
    for(i=0; i<num_params; i++) {
        gNodes[node].uValue.sFunction.mParams[i] = params[i]; // copy struct
        gNodes[node].uValue.sFunction.mParams[i].mType = clone_node_type(params[i].mType);
    }

    gNodes[node].uValue.sFunction.mNumParams = num_params;
    gNodes[node].uValue.sFunction.mResultType = clone_node_type(result_type);

    gNodes[node].uValue.sFunction.mBlockText = MANAGED block_text;

    if(struct_name) {
        xstrncpy(gNodes[node].uValue.sFunction.mStructName, struct_name, VAR_NAME_MAX);
    }
    else {
        xstrncpy(gNodes[node].uValue.sFunction.mStructName, "", VAR_NAME_MAX);
    }

    gNodes[node].uValue.sFunction.mNumGenerics = info->mNumGenerics;

    for(i=0; i<info->mNumGenerics; i++) {
        xstrncpy(gNodes[node].uValue.sFunction.mGenericsTypeNames[i], info->mGenericsTypeNames[i], VAR_NAME_MAX);
    }

    gNodes[node].uValue.sFunction.mNumMethodGenerics = info->mNumMethodGenerics;
    gNodes[node].uValue.sFunction.mSLine = sline;
    gNodes[node].uValue.sFunction.mInCLang = info->in_clang;

    for(i=0; i<info->mNumMethodGenerics; i++) {
        xstrncpy(gNodes[node].uValue.sFunction.mMethodGenericsTypeNames[i], info->mMethodGenericsTypeNames[i], VAR_NAME_MAX);
    }

    return node;
}

BOOL compile_generics_function(unsigned int node, sCompileInfo* info)
{
    BOOL in_clang = gNodes[node].uValue.sFunction.mInCLang;

    /// rename variables ///
    char fun_name[VAR_NAME_MAX];
    xstrncpy(fun_name, gNodes[node].uValue.sFunction.mName, VAR_NAME_MAX);
    int num_params = gNodes[node].uValue.sFunction.mNumParams;
    sParserParam params[PARAMS_MAX];
    memset(params, 0, sizeof(sParserParam)*PARAMS_MAX);

    int i;
    for(i=0; i<num_params; i++) {
        params[i] = gNodes[node].uValue.sFunction.mParams[i];
    }

    sNodeType* result_type = gNodes[node].uValue.sFunction.mResultType;

    char* block_text = gNodes[node].uValue.sFunction.mBlockText;
    char struct_name[VAR_NAME_MAX];
    xstrncpy(struct_name, gNodes[node].uValue.sFunction.mStructName, VAR_NAME_MAX);
    char sname[PATH_MAX];
    xstrncpy(sname, gNodes[node].mSName, PATH_MAX);
    int sline = gNodes[node].uValue.sFunction.mSLine;

    int num_generics = gNodes[node].uValue.sFunction.mNumGenerics;

    char generics_type_names[PARAMS_MAX][VAR_NAME_MAX];
    for(i=0; i<num_generics; i++) {
        xstrncpy(generics_type_names[i], gNodes[node].uValue.sFunction.mGenericsTypeNames[i], VAR_NAME_MAX);
    }

    int num_method_generics = gNodes[node].uValue.sFunction.mNumMethodGenerics;

    char method_generics_type_names[PARAMS_MAX][VAR_NAME_MAX];
    for(i=0; i<num_method_generics; i++) {
        xstrncpy(method_generics_type_names[i], gNodes[node].uValue.sFunction.mMethodGenericsTypeNames[i], VAR_NAME_MAX);
    }

    xstrncpy(info->fun_name, fun_name, VAR_NAME_MAX);

    /// go ///
    sNodeType* param_types[PARAMS_MAX];
    char param_names[PARAMS_MAX][VAR_NAME_MAX];

    for(i=0; i<num_params; i++) {
        sNodeType* param_type = params[i].mType;

        xstrncpy(param_names[i], params[i].mName, VAR_NAME_MAX);

        param_types[i] = param_type;
    }

    char real_fun_name[REAL_FUN_NAME_MAX];
    create_real_fun_name(real_fun_name, REAL_FUN_NAME_MAX, fun_name, struct_name);

    /// go ///
    if(!add_function(fun_name, real_fun_name, nullptr, param_names, param_types, num_params, result_type, num_method_generics, method_generics_type_names, FALSE, FALSE, block_text, num_generics, generics_type_names, TRUE, FALSE, sname, sline, in_clang, FALSE))
    {
        compile_err_msg(info, "Not same parametor or result type to external function declaration and function body declaration.");
        info->err_num++;

        return TRUE;
    }
    

    return TRUE;
}

unsigned int sNodeTree_create_inline_function(char* fun_name, sParserParam* params, int num_params, sNodeType* result_type, MANAGED char* block_text, char* struct_name, char* sname, int sline, sParserInfo* info)
{
    unsigned int node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeInlineFunction;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = sline;

    gNodes[node].mLeft = 0;
    gNodes[node].mRight = 0;
    gNodes[node].mMiddle = 0;

    xstrncpy(gNodes[node].uValue.sFunction.mName, fun_name, VAR_NAME_MAX);

    int i;
    for(i=0; i<num_params; i++) {
        gNodes[node].uValue.sFunction.mParams[i] = params[i]; // copy struct
        gNodes[node].uValue.sFunction.mParams[i].mType = clone_node_type(params[i].mType);
    }

    gNodes[node].uValue.sFunction.mNumParams = num_params;
    gNodes[node].uValue.sFunction.mResultType = clone_node_type(result_type);
    gNodes[node].uValue.sFunction.mBlockText = MANAGED block_text;
    gNodes[node].uValue.sFunction.mSLine = sline;

    if(struct_name) {
        xstrncpy(gNodes[node].uValue.sFunction.mStructName, struct_name, VAR_NAME_MAX);
    }
    else {
        xstrncpy(gNodes[node].uValue.sFunction.mStructName, "", VAR_NAME_MAX);
    }

    gNodes[node].uValue.sFunction.mNumGenerics = info->mNumGenerics;

    for(i=0; i<info->mNumGenerics; i++) {
        xstrncpy(gNodes[node].uValue.sFunction.mGenericsTypeNames[i], info->mGenericsTypeNames[i], VAR_NAME_MAX);
    }

    gNodes[node].uValue.sFunction.mNumMethodGenerics = info->mNumMethodGenerics;
    gNodes[node].uValue.sFunction.mSLine = sline;
    gNodes[node].uValue.sFunction.mInCLang = info->in_clang;

    for(i=0; i<info->mNumMethodGenerics; i++) {
        xstrncpy(gNodes[node].uValue.sFunction.mMethodGenericsTypeNames[i], info->mMethodGenericsTypeNames[i], VAR_NAME_MAX);
    }

    return node;
}

BOOL compile_inline_function(unsigned int node, sCompileInfo* info)
{
    BOOL in_clang = gNodes[node].uValue.sFunction.mInCLang;

    /// rename variables ///
    char fun_name[VAR_NAME_MAX];
    xstrncpy(fun_name, gNodes[node].uValue.sFunction.mName, VAR_NAME_MAX);
    int num_params = gNodes[node].uValue.sFunction.mNumParams;
    sParserParam params[PARAMS_MAX];
    memset(params, 0, sizeof(sParserParam)*PARAMS_MAX);

    int i;
    for(i=0; i<num_params; i++) {
        params[i] = gNodes[node].uValue.sFunction.mParams[i];
    }

    sNodeType* result_type = gNodes[node].uValue.sFunction.mResultType;

    char* block_text = gNodes[node].uValue.sFunction.mBlockText;
    char struct_name[VAR_NAME_MAX];
    xstrncpy(struct_name, gNodes[node].uValue.sFunction.mStructName, VAR_NAME_MAX);
    char sname[PATH_MAX];
    xstrncpy(sname, gNodes[node].mSName, PATH_MAX);
    int sline = gNodes[node].uValue.sFunction.mSLine;

    int num_generics = gNodes[node].uValue.sFunction.mNumGenerics;

    char generics_type_names[PARAMS_MAX][VAR_NAME_MAX];
    for(i=0; i<num_generics; i++) {
        xstrncpy(generics_type_names[i], gNodes[node].uValue.sFunction.mGenericsTypeNames[i], VAR_NAME_MAX);
    }

    int num_method_generics = gNodes[node].uValue.sFunction.mNumMethodGenerics;

    char method_generics_type_names[PARAMS_MAX][VAR_NAME_MAX];
    for(i=0; i<num_method_generics; i++) {
        xstrncpy(method_generics_type_names[i], gNodes[node].uValue.sFunction.mMethodGenericsTypeNames[i], VAR_NAME_MAX);
    }

    /// go ///
    sNodeType* param_types[PARAMS_MAX];
    char param_names[PARAMS_MAX][VAR_NAME_MAX];

    for(i=0; i<num_params; i++) {
        sNodeType* param_type = params[i].mType;

        xstrncpy(param_names[i], params[i].mName, VAR_NAME_MAX);

        param_types[i] = param_type;
    }

    char real_fun_name[REAL_FUN_NAME_MAX];
    create_real_fun_name(real_fun_name, REAL_FUN_NAME_MAX, fun_name, struct_name);

    /// go ///
    if(!add_function(fun_name, real_fun_name, nullptr, param_names, param_types, num_params, result_type, num_method_generics, method_generics_type_names, FALSE, FALSE, block_text, num_generics, generics_type_names, FALSE, TRUE, sname, sline, in_clang, FALSE))
    {
        compile_err_msg(info, "Not same parametor or result type to external function declaration and function body declaration.");
        info->err_num++;

        return TRUE;
    }

    return TRUE;
}

unsigned int sNodeTree_create_load_variable(char* var_name, sParserInfo* info)
{
    unsigned node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeLoadVariable;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    xstrncpy(gNodes[node].uValue.sLoadVariable.mVarName, var_name, VAR_NAME_MAX);
    gNodes[node].uValue.sLoadVariable.mGlobal = info->mBlockLevel == 0;

    gNodes[node].mLeft = 0;
    gNodes[node].mRight = 0;
    gNodes[node].mMiddle = 0;

    return node;
}


static BOOL compile_load_variable(unsigned int node, sCompileInfo* info)
{
    char* var_name = gNodes[node].uValue.sLoadVariable.mVarName;
    BOOL global = gNodes[node].uValue.sLoadVariable.mGlobal;

    sVar* var = get_variable_from_table(info->pinfo->lv_table, var_name);

    if(var == NULL) {
        compile_err_msg(info, "undeclared variable %s", var_name);
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy
        return TRUE;
    }

    sNodeType* var_type = var->mType;
    if(var_type == NULL || var_type->mClass == NULL) 
    {
        compile_err_msg(info, "null type %s", var_name);
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy
        return TRUE;
    }

    BOOL constant = var->mConstant && var->mBlockLevel == 0;

    if(constant) {
        LVALUE llvm_value;
        llvm_value.value = (Value*)var->mLLVMValue;
        llvm_value.type = var_type;
        llvm_value.address = nullptr;
        llvm_value.var = var;

        push_value_to_stack_ptr(&llvm_value, info);

        sNodeType* result_type = var_type;

        info->type = clone_node_type(result_type);
    }
    else {
        BOOL parent = FALSE;
        int index = get_variable_index(info->pinfo->lv_table, var_name, &parent);

        Value* var_address;
        if(parent && !var->mGlobal) {
            var_address = load_address_to_lvtable(index, var_type, info);
        }
        else {
            var_address = (Value*)var->mLLVMValue;
        }

        if(var_address == nullptr) {
            compile_err_msg(info, "Invalid variable. %s", var_name);
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }

        if(type_identify_with_class_name(var_type, "va_list")) {
            sNodeType* var_type2 = clone_node_type(var_type);
            var_type2->mPointerNum++;

            LVALUE llvm_value;
            llvm_value.value = var_address;
            llvm_value.type = var_type2;
            llvm_value.address = nullptr;
            llvm_value.var = var;

            push_value_to_stack_ptr(&llvm_value, info);

            sNodeType* result_type = var_type2;

            info->type = clone_node_type(result_type);
        }
        else {
            int alignment = get_llvm_alignment_from_node_type(var_type);

            LVALUE llvm_value;
            llvm_value.value = Builder.CreateAlignedLoad(var_address, alignment, var_name);
            llvm_value.type = var_type;
            llvm_value.address = var_address;
            llvm_value.var = var;

            push_value_to_stack_ptr(&llvm_value, info);

            sNodeType* result_type = var_type;

            info->type = clone_node_type(result_type);
        }
    }

    return TRUE;
}

unsigned int sNodeTree_if_expression(unsigned int expression_node, MANAGED struct sNodeBlockStruct* if_node_block, unsigned int* elif_expression_nodes, MANAGED struct sNodeBlockStruct** elif_node_blocks, int elif_num, MANAGED struct sNodeBlockStruct* else_node_block, sParserInfo* info, char* sname, int sline)
{
    unsigned node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeIf;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = sline;

    gNodes[node].uValue.sIf.mExpressionNode = expression_node;
    gNodes[node].uValue.sIf.mIfNodeBlock = MANAGED if_node_block;
    memcpy(gNodes[node].uValue.sIf.mElifExpressionNodes, elif_expression_nodes, sizeof(unsigned int)*elif_num);
    memcpy(gNodes[node].uValue.sIf.mElifNodeBlocks, MANAGED elif_node_blocks, sizeof(sNodeBlock*)*elif_num);
    gNodes[node].uValue.sIf.mElifNum = elif_num;
    gNodes[node].uValue.sIf.mElseNodeBlock = MANAGED else_node_block;

    gNodes[node].mLeft = 0;
    gNodes[node].mRight = 0;
    gNodes[node].mMiddle = 0;

    return node;
}

static BOOL compile_if_expression(unsigned int node, sCompileInfo* info)
{
    sNodeBlock* else_node_block = gNodes[node].uValue.sIf.mElseNodeBlock;
    int elif_num = gNodes[node].uValue.sIf.mElifNum;

    /// compile expression ///
    unsigned int expression_node = gNodes[node].uValue.sIf.mExpressionNode;

    if(!compile(expression_node, info)) {
        return FALSE;
    }

    sNodeType* conditional_type = info->type;

    LVALUE conditional_value = *get_value_from_stack(-1);
    dec_stack_ptr(1, info);

    sNodeType* bool_type = create_node_type_with_class_name("bool");

    if(auto_cast_posibility(bool_type, conditional_type)) {
        if(!cast_right_type_to_left_type(bool_type, &conditional_type, &conditional_value, info))
        {
            compile_err_msg(info, "Cast failed");
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }
    }

    if(!type_identify_with_class_name(conditional_type, "bool")) {
        compile_err_msg(info, "This conditional type is not bool");
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }

    BasicBlock* cond_then_block = BasicBlock::Create(TheContext, "cond_jump_then", gFunction);
    BasicBlock* cond_else_block = NULL;

    BasicBlock* cond_elif_block[ELIF_NUM_MAX];
    BasicBlock* cond_elif_then_block[ELIF_NUM_MAX];
    if(elif_num > 0) {
        int i;
        for(i=0; i<elif_num; i++) {
            char buf[128];
            snprintf(buf, 128, "cond_jump_elif%d\n", i);

            cond_elif_block[i] = BasicBlock::Create(TheContext, buf, gFunction);

            snprintf(buf, 128, "cond_jump_elif_then%d\n", i);

            cond_elif_then_block[i] = BasicBlock::Create(TheContext, buf, gFunction);
        }
    }

    if(else_node_block) {
        cond_else_block = BasicBlock::Create(TheContext, "cond_else_block", gFunction);
    }
    BasicBlock* cond_end_block = BasicBlock::Create(TheContext, "cond_end", gFunction);

    if(elif_num > 0) {
        free_right_value_objects(info);

        Builder.CreateCondBr(conditional_value.value, cond_then_block, cond_elif_block[0]);
    }
    else if(else_node_block) {
        free_right_value_objects(info);

        Builder.CreateCondBr(conditional_value.value, cond_then_block, cond_else_block);
    }
    else {
        free_right_value_objects(info);

        Builder.CreateCondBr(conditional_value.value, cond_then_block, cond_end_block);
    }

    BasicBlock* current_block_before;
    llvm_change_block(cond_then_block, &current_block_before, info, FALSE);

    sNodeBlock* if_block = gNodes[node].uValue.sIf.mIfNodeBlock;
    sNodeType* result_type = create_node_type_with_class_name("any");

    BOOL last_expression_is_return_before = info->last_expression_is_return;
    info->last_expression_is_return = FALSE;

    if(!compile_block(if_block, info, result_type)) {
        return FALSE;
    }

    Value* result_value;
    int result_value_alignment;
    result_type = info->type;

    if(type_identify_with_class_name(info->type, "void"))
    {
        result_value = nullptr;
        result_value_alignment = 0;
    }
    else {
        LVALUE llvm_value = *get_value_from_stack(-1);

        Type* llvm_result_type;
        if(!create_llvm_type_from_node_type(&llvm_result_type, result_type, info))
        {
            compile_err_msg(info, "Getting llvm type failed(7)");
            show_node_type(result_type);
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }

        IRBuilder<> builder(&gFunction->getEntryBlock(), gFunction->getEntryBlock().begin());

        result_value = builder.CreateAlloca(llvm_result_type, 0, "if_result_value");

        result_value_alignment = get_llvm_alignment_from_node_type(info->type);

        Builder.CreateAlignedStore(llvm_value.value, result_value, result_value_alignment);
    }

    if(!info->last_expression_is_return) {
        free_right_value_objects(info);
        Builder.CreateBr(cond_end_block);
    }

    info->last_expression_is_return = last_expression_is_return_before;

    //// elif ///
    if(elif_num > 0) {
        int i;
        for(i=0; i<elif_num; i++) {
            BasicBlock* current_block_before;
            llvm_change_block(cond_elif_block[i], &current_block_before, info, FALSE);

            unsigned int expression_node = gNodes[node].uValue.sIf.mElifExpressionNodes[i];

            if(!compile(expression_node, info)) {
                return FALSE;
            }

            sNodeType* conditional_type = info->type;

            LVALUE conditional_value = *get_value_from_stack(-1);
            dec_stack_ptr(1, info);

            sNodeType* bool_type = create_node_type_with_class_name("bool");

            if(auto_cast_posibility(bool_type, conditional_type)) {
                if(!cast_right_type_to_left_type(bool_type, &conditional_type, &conditional_value, info))
                {
                    compile_err_msg(info, "Cast failed");
                    info->err_num++;

                    info->type = create_node_type_with_class_name("int"); // dummy

                    return TRUE;
                }
            }

            if(!type_identify_with_class_name(conditional_type, "bool")) 
            {
                compile_err_msg(info, "This conditional type is not bool");
                info->err_num++;

                info->type = create_node_type_with_class_name("int"); // dummy

                return TRUE;
            }

            if(i == elif_num-1) {
                if(else_node_block) {
                    free_right_value_objects(info);

                    Builder.CreateCondBr(conditional_value.value, cond_elif_then_block[i], cond_else_block);
                }
                else {
                    free_right_value_objects(info);
                    Builder.CreateCondBr(conditional_value.value, cond_elif_then_block[i], cond_end_block);
                }
            }
            else {
                free_right_value_objects(info);
                Builder.CreateCondBr(conditional_value.value, cond_elif_then_block[i], cond_elif_block[i+1]);
            }

            BasicBlock* current_block_before2;
            llvm_change_block(cond_elif_then_block[i], &current_block_before2, info, FALSE);

            sNodeBlock* elif_node_block = gNodes[node].uValue.sIf.mElifNodeBlocks[i];

            BOOL last_expression_is_return_before = info->last_expression_is_return;
            info->last_expression_is_return = FALSE;

            if(!compile_block(elif_node_block, info, result_type)) 
            {
                return FALSE;
            }

            if(result_value) {
                if(!type_identify(info->type, result_type))
                {
                    compile_err_msg(info, "Different result type for if/else block. If you avoid this and don't need result value for if expression, append ; at the end of block");
                    info->err_num++;

                    info->type = create_node_type_with_class_name("int"); // dummy

                    return TRUE;
                }

                LVALUE llvm_value = *get_value_from_stack(-1);

                Builder.CreateAlignedStore(llvm_value.value, result_value, result_value_alignment);
            }

            if(!info->last_expression_is_return) {
                free_right_value_objects(info);
                Builder.CreateBr(cond_end_block);
            }

            info->last_expression_is_return = last_expression_is_return_before;
        }
    }

    if(else_node_block) {
        BasicBlock* current_block_before;
        llvm_change_block(cond_else_block, &current_block_before, info, FALSE);

        BOOL last_expression_is_return_before = info->last_expression_is_return;
        info->last_expression_is_return = FALSE;

        if(!compile_block(else_node_block, info, result_type)) 
        {
            return FALSE;
        }

        if(result_value) {
            if(!type_identify(info->type, result_type))
            {
                compile_err_msg(info, "Different result type for if/else block. If you avoid this and don't need result value for if expression, append ; at the end of block");
                info->err_num++;

                info->type = create_node_type_with_class_name("int"); // dummy

                return TRUE;
            }

            LVALUE llvm_value = *get_value_from_stack(-1);

            Builder.CreateAlignedStore(llvm_value.value, result_value, result_value_alignment);
        }

        if(!info->last_expression_is_return) {
            free_right_value_objects(info);
            Builder.CreateBr(cond_end_block);
        }

        info->last_expression_is_return = last_expression_is_return_before;
    }

    BasicBlock* current_block_before2;
    llvm_change_block(cond_end_block, &current_block_before2, info, FALSE);

    if(result_value) {
        LVALUE llvm_value;
        llvm_value.value = Builder.CreateAlignedLoad(result_value, result_value_alignment);
        llvm_value.type = result_type;
        llvm_value.address = nullptr;
        llvm_value.var = nullptr;

        info->type = result_type;

        dec_stack_ptr(1, info);
        push_value_to_stack_ptr(&llvm_value, info);
    }
    else {
        info->type = create_node_type_with_class_name("void");
    }

    return TRUE;
}

unsigned int sNodeTree_struct(sNodeType* struct_type, sParserInfo* info, char* sname, int sline, BOOL anonymous)
{
    unsigned node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeStruct;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = sline;

    gNodes[node].uValue.sStruct.mType = struct_type;
    gNodes[node].uValue.sStruct.mAnonymous = anonymous;

    gNodes[node].mLeft = 0;
    gNodes[node].mRight = 0;
    gNodes[node].mMiddle = 0;

    return node;
}

static BOOL compile_struct(unsigned int node, sCompileInfo* info)
{
    return TRUE;
}

unsigned int sNodeTree_union(sNodeType* struct_type, sParserInfo* info, char* sname, int sline, BOOL anonymous)
{
    unsigned node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeUnion;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = sline;

    gNodes[node].uValue.sStruct.mType = struct_type;
    gNodes[node].uValue.sStruct.mAnonymous = anonymous;

    gNodes[node].mLeft = 0;
    gNodes[node].mRight = 0;
    gNodes[node].mMiddle = 0;

    return node;
}

static BOOL compile_union(unsigned int node, sCompileInfo* info)
{
    return TRUE;
}

unsigned int sNodeTree_create_object(sNodeType* node_type, unsigned int object_num, char* sname, int sline, sParserInfo* info)
{
    unsigned node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeObject;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = sline;

    gNodes[node].uValue.sObject.mType = clone_node_type(node_type);

    gNodes[node].mLeft = object_num;
    gNodes[node].mRight = 0;
    gNodes[node].mMiddle = 0;

    return node;
}

static BOOL compile_object(unsigned int node, sCompileInfo* info)
{
    sNodeType* node_type = gNodes[node].uValue.sObject.mType;

    sNodeType* node_type2 = clone_node_type(node_type);
    node_type2->mHeap = TRUE;

    if(info->pinfo->mGenericsType) {
        if(!solve_generics(&node_type2, info->pinfo->mGenericsType)) {
            compile_err_msg(info, "Can't solve generics types");
            show_node_type(node_type2);
            show_node_type(info->pinfo->mGenericsType);
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }
    }

    unsigned int left_node = gNodes[node].mLeft;

    Value* object_num;
    if(left_node == 0) {
        object_num = ConstantInt::get(Type::getInt32Ty(TheContext), (uint32_t)1);
    }
    else {
        if(!compile(left_node, info)) {
            return FALSE;
        }

        if(!is_number_type(info->type)) {
            compile_err_msg(info, "Require number value for []");
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }

        LVALUE llvm_value = *get_value_from_stack(-1);
        dec_stack_ptr(1, info);

        object_num = llvm_value.value;
    }

    /// calloc ///
    uint64_t size;
    if(!get_size_from_node_type(&size, node_type2, info))
    {
        compile_err_msg(info, "Getting allocate size error(8)");
        show_node_type(node_type2);
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }

    Function* fun = TheModule->getFunction("xcalloc");

    if(fun == nullptr) {
        fprintf(stderr, "require xcalloc\n");
        exit(2);
    }

    std::vector<Value*> params2;

    Value* param = object_num;
    params2.push_back(param);

    Value* param2 = ConstantInt::get(Type::getInt64Ty(TheContext), (uint64_t)size);
    params2.push_back(param2);

    Value* address = Builder.CreateCall(fun, params2);

    node_type2->mPointerNum++;

    Type* llvm_type;
    if(!create_llvm_type_from_node_type(&llvm_type, node_type2, info))
    {
        compile_err_msg(info, "Getting llvm type failed(9)");
        show_node_type(node_type2);
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }

    address = Builder.CreateCast(Instruction::BitCast, address, llvm_type);

    /// result ///
    LVALUE llvm_value;
    llvm_value.value = address;
    llvm_value.type = clone_node_type(node_type2);
    llvm_value.address = nullptr;
    llvm_value.var = nullptr;

    push_value_to_stack_ptr(&llvm_value, info);

    if(!info->no_output) {
        std::pair<sNodeType*, bool> pair_value;
        pair_value.first = clone_node_type(node_type2);
        pair_value.second = true;

        gHeapObjects[address] = pair_value;
    }

    info->type = clone_node_type(node_type2);

    return TRUE;
}

unsigned int sNodeTree_create_stack_object(sNodeType* node_type, unsigned int object_num, char* sname, int sline, sParserInfo* info)
{
    unsigned node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeStackObject;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = sline;

    gNodes[node].uValue.sObject.mType = clone_node_type(node_type);

    gNodes[node].mLeft = object_num;
    gNodes[node].mRight = 0;
    gNodes[node].mMiddle = 0;

    return node;
}

static BOOL compile_stack_object(unsigned int node, sCompileInfo* info)
{
    sNodeType* node_type = gNodes[node].uValue.sObject.mType;

    sNodeType* node_type2 = clone_node_type(node_type);
    node_type2->mPointerNum++;
    node_type2->mHeap = FALSE;

    if(info->pinfo->mGenericsType) {
        if(!solve_generics(&node_type2, info->pinfo->mGenericsType)) {
            compile_err_msg(info, "Can't solve generics types");
            show_node_type(node_type2);
            show_node_type(info->pinfo->mGenericsType);
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }
    }

    Type* llvm_var_type;
    if(!create_llvm_type_from_node_type(&llvm_var_type, node_type, info))
    {
        compile_err_msg(info, "Getting llvm type failed(10)");
        show_node_type(node_type);
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }

    unsigned int left_node = gNodes[node].mLeft;

    Value* object_num;
    if(left_node == 0) {
        object_num = NULL;
    }
    else {
        if(!compile(left_node, info)) {
            return FALSE;
        }

        if(!is_number_type(info->type)) {
            compile_err_msg(info, "Require number value for []");
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }

        LVALUE llvm_value = *get_value_from_stack(-1);
        dec_stack_ptr(1, info);

        object_num = llvm_value.value;
    }

    LVALUE llvm_value;
    llvm_value.value = Builder.CreateAlloca(llvm_var_type, object_num, "stack_object");
    llvm_value.type = node_type2;
    llvm_value.address = nullptr;
    llvm_value.var = nullptr;

    push_value_to_stack_ptr(&llvm_value, info);

    info->type = node_type2;

    return TRUE;
}

unsigned int sNodeTree_create_store_field(char* var_name, unsigned int left_node, unsigned int right_node, sParserInfo* info)
{
    unsigned int node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeStoreField;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    xstrncpy(gNodes[node].uValue.sStoreField.mVarName, var_name, VAR_NAME_MAX);

    gNodes[node].mLeft = left_node;
    gNodes[node].mRight = right_node;
    gNodes[node].mMiddle = 0;

    return node;
}

static BOOL compile_store_field(unsigned int node, sCompileInfo* info)
{
    char var_name[VAR_NAME_MAX];
    xstrncpy(var_name, gNodes[node].uValue.sStoreField.mVarName, VAR_NAME_MAX);

    /// compile left node ///
    unsigned int lnode = gNodes[node].mLeft;

    if(!compile(lnode, info)) {
        return FALSE;
    }

    sNodeType* left_type = info->type;

    if(!(left_type->mClass->mFlags & CLASS_FLAGS_STRUCT) && !(left_type->mClass->mFlags & CLASS_FLAGS_UNION)) {
        compile_err_msg(info, "This is not struct type");
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }

    LVALUE lvalue = *get_value_from_stack(-1);

    /// compile right node ///
    unsigned int rnode = gNodes[node].mRight;

    if(!compile(rnode, info)) {
        return FALSE;
    }

    sNodeType* right_type = info->type;

    LVALUE rvalue = *get_value_from_stack(-1);

    int parent_field_index = -1;
    int field_index = get_field_index(left_type->mClass, var_name, &parent_field_index);

    if(field_index == -1) {
        compile_err_msg(info, "The field(%s) is not found", var_name);
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }

    sNodeType* field_type;
    if(parent_field_index != -1) {
        sNodeType* parent_field_type = clone_node_type(left_type->mClass->mFields[parent_field_index]);
        sCLClass* parent_field_class = parent_field_type->mClass;

        field_type = clone_node_type(parent_field_class->mFields[field_index]);

        if(!solve_generics(&parent_field_type, left_type)) {
            compile_err_msg(info, "Can't solve generics types");
            show_node_type(field_type);
            show_node_type(left_type);
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }

        if(field_type->mHeap != right_type->mHeap) {
            compile_err_msg(info, "Require heap attribute for field.");
            show_node_type(field_type);
            show_node_type(right_type);
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }

        if(auto_cast_posibility(field_type, right_type)) {
            if(!cast_right_type_to_left_type(field_type, &right_type, &rvalue, info))
            {
                compile_err_msg(info, "Cast failed");
                info->err_num++;

                info->type = create_node_type_with_class_name("int"); // dummy

                return TRUE;
            }
        }
        
        if(!substitution_posibility(field_type, right_type, info)) {
            compile_err_msg(info, "The different type between left type and right type.");
            show_node_type(field_type);
            show_node_type(right_type);
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }

        sNodeType* left_type2 = clone_node_type(left_type);
        left_type2->mPointerNum = 0;

        Type* llvm_struct_type;
        if(!create_llvm_type_from_node_type(&llvm_struct_type, left_type2, info))
        {
            compile_err_msg(info, "Getting llvm type failed(11)");
            show_node_type(left_type2);
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }

        Type* llvm_field_type;
        if(!create_llvm_type_from_node_type(&llvm_field_type, parent_field_type, info))
        {
            compile_err_msg(info, "Getting llvm type failed(12)");
            show_node_type(field_type);
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }

        int alignment = get_llvm_alignment_from_node_type(parent_field_type);

        Value* field_address;

        if(left_type->mClass->mFlags & CLASS_FLAGS_UNION) {
            if(left_type->mPointerNum == 0) {
                field_address = Builder.CreateCast(Instruction::BitCast, lvalue.address, PointerType::get(llvm_field_type, 0));
            }
            else {
                field_address = Builder.CreateCast(Instruction::BitCast, lvalue.value, PointerType::get(llvm_field_type, 0));
            }
        }
        else {
            if(left_type->mPointerNum == 0) {
#if LLVM_VERSION_MAJOR >= 7
                field_address = Builder.CreateStructGEP(lvalue.address, parent_field_index);
#else
                field_address = Builder.CreateStructGEP(llvm_struct_type, lvalue.address, parent_field_index);
#endif
            }
            else {
#if LLVM_VERSION_MAJOR >= 7
                field_address = Builder.CreateStructGEP(lvalue.value, parent_field_index);
#else
                field_address = Builder.CreateStructGEP(llvm_struct_type, lvalue.value, parent_field_index);
#endif
            }
        }

        left_type = parent_field_type;
        lvalue.address = field_address;
    }
    else {
        field_type = clone_node_type(left_type->mClass->mFields[field_index]);

        if(!solve_generics(&field_type, left_type)) {
            compile_err_msg(info, "Can't solve generics types");
            show_node_type(field_type);
            show_node_type(left_type);
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }

        if(field_type->mHeap != right_type->mHeap) {
            compile_err_msg(info, "Require heap attribute for field.");
            show_node_type(field_type);
            show_node_type(right_type);
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }

        if(auto_cast_posibility(field_type, right_type)) {
            if(!cast_right_type_to_left_type(field_type, &right_type, &rvalue, info))
            {
                compile_err_msg(info, "Cast failed");
                info->err_num++;

                info->type = create_node_type_with_class_name("int"); // dummy

                return TRUE;
            }
        }
        
        if(!substitution_posibility(field_type, right_type, info)) {
            compile_err_msg(info, "The different type between left type and right type.");
            show_node_type(field_type);
            show_node_type(right_type);
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }
    }

    sNodeType* left_type2 = clone_node_type(left_type);
    left_type2->mPointerNum = 0;

    Type* llvm_struct_type;
    if(!create_llvm_type_from_node_type(&llvm_struct_type, left_type2, info))
    {
        compile_err_msg(info, "Getting llvm type failed(11)");
        show_node_type(left_type2);
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }

    Type* llvm_field_type;
    if(!create_llvm_type_from_node_type(&llvm_field_type, field_type, info))
    {
        compile_err_msg(info, "Getting llvm type failed(12)");
        show_node_type(field_type);
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }

    int alignment = get_llvm_alignment_from_node_type(field_type);

    Value* field_address;

    if(left_type->mClass->mFlags & CLASS_FLAGS_UNION) {
        if(left_type->mPointerNum == 0) {
            field_address = Builder.CreateCast(Instruction::BitCast, lvalue.address, PointerType::get(llvm_field_type, 0));
        }
        else {
            field_address = Builder.CreateCast(Instruction::BitCast, lvalue.value, PointerType::get(llvm_field_type, 0));
        }
    }
    else {
        if(left_type->mPointerNum == 0) {
#if LLVM_VERSION_MAJOR >= 7
            field_address = Builder.CreateStructGEP(lvalue.address, field_index);
#else
            field_address = Builder.CreateStructGEP(llvm_struct_type, lvalue.address, field_index);
#endif
        }
        else {
#if LLVM_VERSION_MAJOR >= 7
            field_address = Builder.CreateStructGEP(lvalue.value, field_index);
#else
            field_address = Builder.CreateStructGEP(llvm_struct_type, lvalue.value, field_index);
#endif
        }
    }

    Value* rvalue2 = rvalue.value;

    std_move(field_address, right_type, &rvalue, FALSE, info);

    Builder.CreateAlignedStore(rvalue2, field_address, alignment);

    info->type = right_type;

    dec_stack_ptr(2, info);
    push_value_to_stack_ptr(&rvalue, info);

    return TRUE;
}

unsigned int sNodeTree_create_load_field(char* name, unsigned int left_node, sParserInfo* info)
{
    unsigned int node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeLoadField;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    xstrncpy(gNodes[node].uValue.sLoadField.mVarName, name, VAR_NAME_MAX);

    gNodes[node].mLeft = left_node;
    gNodes[node].mRight = 0;
    gNodes[node].mMiddle = 0;

    return node;
}

static BOOL compile_load_field(unsigned int node, sCompileInfo* info)
{
    char var_name[VAR_NAME_MAX]; 
    xstrncpy(var_name, gNodes[node].uValue.sLoadField.mVarName, VAR_NAME_MAX);

    /// compile left node ///
    unsigned int lnode = gNodes[node].mLeft;

    if(!compile(lnode, info)) {
        return FALSE;
    }

    sNodeType* left_type = info->type;

    if(!(left_type->mClass->mFlags & CLASS_FLAGS_STRUCT) && !(left_type->mClass->mFlags & CLASS_FLAGS_UNION)) {
        compile_err_msg(info, "This is not struct type");
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }

    if(left_type->mPointerNum > 1) {
        compile_err_msg(info, "This is pointer of pointer type");
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }

    int parent_field_index = -1;
    int field_index = get_field_index(left_type->mClass, var_name, &parent_field_index);

    if(field_index == -1) {
        compile_err_msg(info, "The field(%s) is not found", var_name);
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }

    sNodeType* field_type;
    if(parent_field_index != -1) {
        sNodeType* parent_field_type = clone_node_type(left_type->mClass->mFields[parent_field_index]);
        sCLClass* parent_field_class = parent_field_type->mClass;

        field_type = clone_node_type(parent_field_class->mFields[field_index]);

        if(!solve_generics(&parent_field_type, left_type)) {
            compile_err_msg(info, "Can't solve generics types");
            show_node_type(parent_field_type);
            show_node_type(left_type);
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }

        Type* llvm_field_type;
        if(!create_llvm_type_from_node_type(&llvm_field_type, parent_field_type, info))
        {
            compile_err_msg(info, "Getting llvm type failed(13)");
            show_node_type(parent_field_type);
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }

        LVALUE lvalue = *get_value_from_stack(-1);

        sNodeType* left_type2 = clone_node_type(left_type);
        left_type2->mPointerNum = 0;

        Type* llvm_struct_type;
        if(!create_llvm_type_from_node_type(&llvm_struct_type, left_type2, info))
        {
            compile_err_msg(info, "Getting llvm type failed(14)");
            show_node_type(left_type2);
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }

        Value* field_address;
        if(left_type->mClass->mFlags & CLASS_FLAGS_UNION) {
            if(left_type->mPointerNum == 0) {
                field_address = Builder.CreateCast(Instruction::BitCast, lvalue.address, PointerType::get(llvm_field_type, 0));
            }
            else {
                field_address = Builder.CreateCast(Instruction::BitCast, lvalue.value, PointerType::get(llvm_field_type, 0));
            }
        }
        else {
            if(left_type->mPointerNum == 0) {
#if LLVM_VERSION_MAJOR >= 7
                field_address = Builder.CreateStructGEP(lvalue.address, parent_field_index);
#else
                field_address = Builder.CreateStructGEP(llvm_struct_type, lvalue.address, parent_field_index);
#endif
            }
            else {
#if LLVM_VERSION_MAJOR >= 7
                field_address = Builder.CreateStructGEP(lvalue.value, parent_field_index);
#else
                field_address = Builder.CreateStructGEP(llvm_struct_type, lvalue.value, parent_field_index);
#endif
            }
        }

        int alignment = get_llvm_alignment_from_node_type(parent_field_type);

        Value* field_address2 = Builder.CreateCast(Instruction::BitCast, field_address, PointerType::get(llvm_field_type, 0));

        LVALUE llvm_value;
        llvm_value.value = Builder.CreateAlignedLoad(field_address2, alignment);
        llvm_value.type = field_type;
        llvm_value.address = field_address2;
        llvm_value.var = nullptr;

        dec_stack_ptr(1, info);
        push_value_to_stack_ptr(&llvm_value, info);

        left_type = parent_field_type;
    }
    else {
        field_type = clone_node_type(left_type->mClass->mFields[field_index]);
    }

    if(!solve_generics(&field_type, left_type)) {
        compile_err_msg(info, "Can't solve generics types");
        show_node_type(field_type);
        show_node_type(left_type);
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }

    Type* llvm_field_type;
    if(!create_llvm_type_from_node_type(&llvm_field_type, field_type, info))
    {
        compile_err_msg(info, "Getting llvm type failed(13)");
        show_node_type(field_type);
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }

    LVALUE lvalue = *get_value_from_stack(-1);

    sNodeType* left_type2 = clone_node_type(left_type);
    left_type2->mPointerNum = 0;

    Type* llvm_struct_type;
    if(!create_llvm_type_from_node_type(&llvm_struct_type, left_type2, info))
    {
        compile_err_msg(info, "Getting llvm type failed(14)");
        show_node_type(left_type2);
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }

    Value* field_address;
    if(left_type->mClass->mFlags & CLASS_FLAGS_UNION) {
        if(left_type->mPointerNum == 0) {
            field_address = Builder.CreateCast(Instruction::BitCast, lvalue.address, PointerType::get(llvm_field_type, 0));
        }
        else {
            field_address = Builder.CreateCast(Instruction::BitCast, lvalue.value, PointerType::get(llvm_field_type, 0));
        }
    }
    else {
        if(left_type->mPointerNum == 0) {
#if LLVM_VERSION_MAJOR >= 7
            field_address = Builder.CreateStructGEP(lvalue.address, field_index);
#else
            field_address = Builder.CreateStructGEP(llvm_struct_type, lvalue.address, field_index);
#endif
        }
        else {
#if LLVM_VERSION_MAJOR >= 7
            field_address = Builder.CreateStructGEP(lvalue.value, field_index);
#else
            field_address = Builder.CreateStructGEP(llvm_struct_type, lvalue.value, field_index);
#endif
        }
    }

    int alignment = get_llvm_alignment_from_node_type(field_type);


    Value* field_address2 = Builder.CreateCast(Instruction::BitCast, field_address, PointerType::get(llvm_field_type, 0));

    LVALUE llvm_value;
    llvm_value.value = Builder.CreateAlignedLoad(field_address2, alignment);
    llvm_value.type = field_type;
    llvm_value.address = field_address2;
    llvm_value.var = nullptr;

    info->type = field_type;

    dec_stack_ptr(1, info);
    push_value_to_stack_ptr(&llvm_value, info);

    return TRUE;
}

unsigned int sNodeTree_while_expression(unsigned int expression_node, MANAGED struct sNodeBlockStruct* while_node_block, sParserInfo* info)
{
    unsigned node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeWhile;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    gNodes[node].uValue.sWhile.mExpressionNode = expression_node;
    gNodes[node].uValue.sWhile.mWhileNodeBlock = MANAGED while_node_block;

    gNodes[node].mLeft = 0;
    gNodes[node].mRight = 0;
    gNodes[node].mMiddle = 0;

    return node;
}

static BOOL compile_while_expression(unsigned int node, sCompileInfo* info)
{
    sNodeBlock* while_node_block = gNodes[node].uValue.sWhile.mWhileNodeBlock;

    BasicBlock* loop_top_block = BasicBlock::Create(TheContext, "loop_top_block", gFunction);

    free_right_value_objects(info);
    Builder.CreateBr(loop_top_block);

    BasicBlock* current_block_before;
    llvm_change_block(loop_top_block, &current_block_before, info, FALSE);

    /// compile expression ///
    unsigned int expression_node = gNodes[node].uValue.sWhile.mExpressionNode;

    if(!compile(expression_node, info)) {
        return FALSE;
    }

    sNodeType* conditional_type = info->type;

    LVALUE conditional_value = *get_value_from_stack(-1);
    dec_stack_ptr(1, info);

    sNodeType* bool_type = create_node_type_with_class_name("bool");

    if(auto_cast_posibility(bool_type, conditional_type)) {
        if(!cast_right_type_to_left_type(bool_type, &conditional_type, &conditional_value, info))
        {
            compile_err_msg(info, "Cast failed");
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy
            return TRUE;
        }
    }

    if(!type_identify_with_class_name(conditional_type, "bool")) {
        compile_err_msg(info, "This conditional type is not bool");
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy
        return TRUE;
    }

    BasicBlock* cond_then_block = BasicBlock::Create(TheContext, "cond_then_block", gFunction);

    BasicBlock* cond_end_block = BasicBlock::Create(TheContext, "cond_end_block", gFunction);

    info->loop_end_block[info->num_loop] = cond_end_block;
    info->num_loop++;

    if(info->num_loop >= LOOP_NEST_MAX) {
        compile_err_msg(info, "Over flow loop number");
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }

    info->loop_begin_block[info->num_loop2] = cond_then_block;
    info->num_loop2++;

    if(info->num_loop2 >= LOOP_NEST_MAX) {
        compile_err_msg(info, "Over flow loop number");
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }

    free_right_value_objects(info);
    Builder.CreateCondBr(conditional_value.value, cond_then_block, cond_end_block);

    BasicBlock* current_block_before2;
    llvm_change_block(cond_then_block, &current_block_before2, info, FALSE);

    BOOL last_expression_is_return_before = info->last_expression_is_return;
    info->last_expression_is_return = FALSE;

    sNodeType* result_type = create_node_type_with_class_name("void");
    if(!compile_block(while_node_block, info, result_type)) {
        return FALSE;
    }

    if(!info->last_expression_is_return) {
        free_right_value_objects(info);
        Builder.CreateBr(loop_top_block);
    }

    info->last_expression_is_return = last_expression_is_return_before;

    BasicBlock* current_block_before3;
    llvm_change_block(cond_end_block, &current_block_before3, info, FALSE);

    return TRUE;
}

unsigned int sNodeTree_do_while_expression(unsigned int expression_node, MANAGED struct sNodeBlockStruct* while_node_block, sParserInfo* info)
{
    unsigned node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeDoWhile;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    gNodes[node].uValue.sWhile.mExpressionNode = expression_node;
    gNodes[node].uValue.sWhile.mWhileNodeBlock = MANAGED while_node_block;

    gNodes[node].mLeft = 0;
    gNodes[node].mRight = 0;
    gNodes[node].mMiddle = 0;

    return node;
}

static BOOL compile_do_while_expression(unsigned int node, sCompileInfo* info)
{
    sNodeBlock* while_node_block = gNodes[node].uValue.sWhile.mWhileNodeBlock;

    BasicBlock* loop_top_block = BasicBlock::Create(TheContext, "loop_top_block", gFunction);

    free_right_value_objects(info);
    Builder.CreateBr(loop_top_block);

    BasicBlock* current_block_before;
    llvm_change_block(loop_top_block, &current_block_before, info, FALSE);

    info->loop_begin_block[info->num_loop2] = loop_top_block;
    info->num_loop2++;

    if(info->num_loop2 >= LOOP_NEST_MAX) {
        compile_err_msg(info, "Over flow loop number");
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }

    BasicBlock* cond_end_block = BasicBlock::Create(TheContext, "cond_end_block", gFunction);

    info->loop_end_block[info->num_loop] = cond_end_block;
    info->num_loop++;

    if(info->num_loop >= LOOP_NEST_MAX) {
        compile_err_msg(info, "Over flow loop number");
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }

    BOOL last_expression_is_return_before = info->last_expression_is_return;
    info->last_expression_is_return = FALSE;

    sNodeType* result_type = create_node_type_with_class_name("void");
    if(!compile_block(while_node_block, info, result_type)) {
        return FALSE;
    }

    /// compile expression ///
    unsigned int expression_node = gNodes[node].uValue.sWhile.mExpressionNode;

    if(!compile(expression_node, info)) {
        return FALSE;
    }

    sNodeType* conditional_type = info->type;

    LVALUE conditional_value = *get_value_from_stack(-1);
    dec_stack_ptr(1, info);

    free_right_value_objects(info);
    Builder.CreateCondBr(conditional_value.value, loop_top_block, cond_end_block);

    sNodeType* bool_type = create_node_type_with_class_name("bool");

    if(auto_cast_posibility(bool_type, conditional_type)) {
        if(!cast_right_type_to_left_type(bool_type, &conditional_type, &conditional_value, info))
        {
            compile_err_msg(info, "Cast failed");
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy
            return TRUE;
        }
    }

    if(!type_identify_with_class_name(conditional_type, "bool")) {
        compile_err_msg(info, "This conditional type is not bool");
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy
        return TRUE;
    }

    BasicBlock* current_block_before2;
    llvm_change_block(cond_end_block, &current_block_before2, info, FALSE);

/*
    if(!info->last_expression_is_return) {
        free_right_value_objects(info);
        Builder.CreateBr(loop_top_block);
    }

    info->last_expression_is_return = last_expression_is_return_before;
*/

    return TRUE;
}

unsigned int sNodeTree_create_true(sParserInfo* info)
{
    unsigned node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeTrue;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    gNodes[node].mLeft = 0;
    gNodes[node].mRight = 0;
    gNodes[node].mMiddle = 0;

    return node;
}

static BOOL compile_true(unsigned int node, sCompileInfo* info)
{
    LVALUE llvm_value;
    llvm_value.value = ConstantInt::get(Type::getInt1Ty(TheContext), 1);
    llvm_value.type = create_node_type_with_class_name("bool");
    llvm_value.address = nullptr;
    llvm_value.var = nullptr;

    push_value_to_stack_ptr(&llvm_value, info);

    info->type = create_node_type_with_class_name("bool");

    return TRUE;
}

unsigned int sNodeTree_create_null(sParserInfo* info)
{
    unsigned node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeNull;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    gNodes[node].mLeft = 0;
    gNodes[node].mRight = 0;
    gNodes[node].mMiddle = 0;

    return node;
}

static BOOL compile_null(unsigned int node, sCompileInfo* info)
{
    LVALUE llvm_value;
    llvm_value.value = ConstantInt::get(Type::getInt1Ty(TheContext), 0);
    llvm_value.type = create_node_type_with_class_name("void*");
    llvm_value.address = nullptr;
    llvm_value.var = nullptr;

    push_value_to_stack_ptr(&llvm_value, info);

    info->type = create_node_type_with_class_name("void*");

    return TRUE;
}

unsigned int sNodeTree_create_false(sParserInfo* info)
{
    unsigned node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeFalse;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    gNodes[node].mLeft = 0;
    gNodes[node].mRight = 0;
    gNodes[node].mMiddle = 0;

    return node;
}

static BOOL compile_false(unsigned int node, sCompileInfo* info)
{
    LVALUE llvm_value;
    llvm_value.value = ConstantInt::get(Type::getInt1Ty(TheContext), 0);
    llvm_value.type = create_node_type_with_class_name("bool");
    llvm_value.address = nullptr;
    llvm_value.var = nullptr;

    push_value_to_stack_ptr(&llvm_value, info);

    info->type = create_node_type_with_class_name("bool");

    return TRUE;
}

unsigned int sNodeTree_create_and_and(unsigned int left_node, unsigned int right_node, sParserInfo* info)
{
    unsigned node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeAndAnd;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    gNodes[node].mLeft = left_node;
    gNodes[node].mRight = right_node;
    gNodes[node].mMiddle = 0;

    return node;
}

static BOOL compile_and_and(unsigned int node, sCompileInfo* info)
{
    Value* result_var = Builder.CreateAlloca(IntegerType::get(TheContext, 1), 0, "andand_result_var");

    /// compile expression ///
    unsigned int left_node = gNodes[node].mLeft;

    if(!compile(left_node, info)) {
        return FALSE;
    }

    sNodeType* left_type = info->type;

    LVALUE conditional_value = *get_value_from_stack(-1);

    sNodeType* bool_type = create_node_type_with_class_name("bool");

    if(auto_cast_posibility(bool_type, left_type)) {
        if(!cast_right_type_to_left_type(bool_type, &left_type, &conditional_value, info))
        {
            compile_err_msg(info, "Cast failed");
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy
            return TRUE;
        }
    }

    if(!type_identify_with_class_name(left_type, "bool")) {
        compile_err_msg(info, "Left expression is not bool type");
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }

    Builder.CreateAlignedStore(conditional_value.value, result_var, 1);

    BasicBlock* cond_then_block = BasicBlock::Create(TheContext, "cond_jump_then", gFunction);

    BasicBlock* cond_end_block = BasicBlock::Create(TheContext, "cond_jump_end", gFunction);;

    free_right_value_objects(info);

    Builder.CreateCondBr(conditional_value.value, cond_then_block, cond_end_block);

    BasicBlock* current_block_before;
    llvm_change_block(cond_then_block, &current_block_before, info, FALSE);

    /// compile right expression ///
    unsigned int right_node = gNodes[node].mRight;

    if(!compile(right_node, info)) {
        return FALSE;
    }

    sNodeType* right_type = info->type;

    LVALUE conditional_value2 = *get_value_from_stack(-1);

    if(auto_cast_posibility(bool_type, right_type)) {
        if(!cast_right_type_to_left_type(bool_type, &right_type, &conditional_value2, info))
        {
            compile_err_msg(info, "Cast failed");
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy
            return TRUE;
        }
    }

    if(!type_identify_with_class_name(right_type, "bool")) {
        compile_err_msg(info, "Right expression is not bool type");
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }

    Value* andand_value = Builder.CreateAnd(conditional_value.value, conditional_value2.value, "andand");

    Builder.CreateAlignedStore(andand_value, result_var, 1);

    free_right_value_objects(info);
    Builder.CreateBr(cond_end_block);

    BasicBlock* current_block_before2;
    llvm_change_block(cond_end_block, &current_block_before2, info, FALSE);

    dec_stack_ptr(2, info);

    LVALUE llvm_value;
    llvm_value.value = Builder.CreateAlignedLoad(result_var, 1, "andand_result_value");
    llvm_value.type = create_node_type_with_class_name("bool");
    llvm_value.address = result_var;
    llvm_value.var = nullptr;

    push_value_to_stack_ptr(&llvm_value, info);

    info->type = create_node_type_with_class_name("bool");

    return TRUE;
}

unsigned int sNodeTree_create_or_or(unsigned int left_node, unsigned int right_node, sParserInfo* info)
{
    unsigned node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeOrOr;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    gNodes[node].mLeft = left_node;
    gNodes[node].mRight = right_node;
    gNodes[node].mMiddle = 0;

    return node;
}

static BOOL compile_or_or(unsigned int node, sCompileInfo* info)
{
    Value* result_var = Builder.CreateAlloca(IntegerType::get(TheContext, 1), 0, "oror_result_var");

    /// compile expression ///
    unsigned int left_node = gNodes[node].mLeft;

    if(!compile(left_node, info)) {
        return FALSE;
    }

    sNodeType* left_type = info->type;

    LVALUE conditional_value = *get_value_from_stack(-1);

    sNodeType* bool_type = create_node_type_with_class_name("bool");

    if(auto_cast_posibility(bool_type, left_type)) {
        if(!cast_right_type_to_left_type(bool_type, &left_type, &conditional_value, info))
        {
            compile_err_msg(info, "Cast failed");
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy
            return TRUE;
        }
    }

    if(!type_identify_with_class_name(left_type, "bool")) {
        compile_err_msg(info, "Right expression is not bool type");
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }

    Builder.CreateAlignedStore(conditional_value.value, result_var, 1);

    BasicBlock* cond_then_block = BasicBlock::Create(TheContext, "cond_jump_then", gFunction);

    BasicBlock* cond_end_block = BasicBlock::Create(TheContext, "cond_jump_end", gFunction);;

    free_right_value_objects(info);

    Builder.CreateCondBr(conditional_value.value, cond_end_block, cond_then_block);

    BasicBlock* current_block_before;
    llvm_change_block(cond_then_block, &current_block_before, info, FALSE);

    /// compile right expression ///
    unsigned int right_node = gNodes[node].mRight;

    if(!compile(right_node, info)) {
        return FALSE;
    }

    sNodeType* right_type = info->type;

    LVALUE conditional_value2 = *get_value_from_stack(-1);

    if(auto_cast_posibility(bool_type, right_type)) {
        if(!cast_right_type_to_left_type(bool_type, &right_type, &conditional_value2, info))
        {
            compile_err_msg(info, "Cast failed");
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy
            return TRUE;
        }
    }

    if(!type_identify_with_class_name(right_type, "bool")) {
        compile_err_msg(info, "Right expression is not bool type");
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }

    Value* oror_value = Builder.CreateOr(conditional_value.value, conditional_value2.value, "oror");

    Builder.CreateAlignedStore(oror_value, result_var, 1);

    free_right_value_objects(info);
    Builder.CreateBr(cond_end_block);

    BasicBlock* current_block_before2;
    llvm_change_block(cond_end_block, &current_block_before2, info, FALSE);

    dec_stack_ptr(2, info);

    LVALUE llvm_value;
    llvm_value.value = Builder.CreateAlignedLoad(result_var, 1, "oror_result_value");
    llvm_value.type = create_node_type_with_class_name("bool");
    llvm_value.address = result_var;
    llvm_value.var = nullptr;

    push_value_to_stack_ptr(&llvm_value, info);

    info->type = create_node_type_with_class_name("bool");

    return TRUE;
}

unsigned int sNodeTree_for_expression(unsigned int expression_node1, unsigned int expression_node2, unsigned int expression_node3, MANAGED sNodeBlock* for_node_block, sParserInfo* info)
{
    unsigned node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeFor;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    gNodes[node].uValue.sFor.mExpressionNode = expression_node1;
    gNodes[node].uValue.sFor.mExpressionNode2 = expression_node2;
    gNodes[node].uValue.sFor.mExpressionNode3 = expression_node3;
    gNodes[node].uValue.sFor.mForNodeBlock = MANAGED for_node_block;

    gNodes[node].mLeft = 0;
    gNodes[node].mRight = 0;
    gNodes[node].mMiddle = 0;

    return node;
}

static BOOL compile_for_expression(unsigned int node, sCompileInfo* info)
{
    sNodeBlock* for_block = gNodes[node].uValue.sFor.mForNodeBlock;

    sVarTable* lv_table_before = info->pinfo->lv_table;
    info->pinfo->lv_table = for_block->mLVTable;

    /// compile expression ///
    unsigned int expression_node = gNodes[node].uValue.sFor.mExpressionNode;

    if(!compile(expression_node, info)) {
        info->pinfo->lv_table = lv_table_before;
        return FALSE;
    }

    /// compile expression ///
    BasicBlock* loop_top_block = BasicBlock::Create(TheContext, "loop_top_block", gFunction);

    free_right_value_objects(info);
    Builder.CreateBr(loop_top_block);

    BasicBlock* current_block_before;
    llvm_change_block(loop_top_block, &current_block_before, info, FALSE);

    unsigned int expression_node2 = gNodes[node].uValue.sFor.mExpressionNode2;

    if(!compile(expression_node2, info)) {
        info->pinfo->lv_table = lv_table_before;
        return FALSE;
    }

    sNodeType* conditional_type = info->type;

    LVALUE conditional_value = *get_value_from_stack(-1);
    dec_stack_ptr(1, info);

    sNodeType* bool_type = create_node_type_with_class_name("bool");

    if(auto_cast_posibility(bool_type, conditional_type)) {
        if(!cast_right_type_to_left_type(bool_type, &conditional_type, &conditional_value, info))
        {
            compile_err_msg(info, "Cast failed");
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            info->pinfo->lv_table = lv_table_before;
            return TRUE;
        }
    }

    if(!type_identify_with_class_name(conditional_type, "bool")) {
        compile_err_msg(info, "This conditional type is not bool");
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        info->pinfo->lv_table = lv_table_before;
        return TRUE;
    }

    BasicBlock* cond_then_block = BasicBlock::Create(TheContext, "cond_then_block", gFunction);

    BasicBlock* cond_end_block = BasicBlock::Create(TheContext, "cond_end_block", gFunction);

    info->loop_end_block[info->num_loop] = cond_end_block;
    info->num_loop++;

    if(info->num_loop >= LOOP_NEST_MAX) {
        compile_err_msg(info, "Over flow loop number");
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }

    info->loop_begin_block[info->num_loop2] = cond_then_block;
    info->num_loop2++;

    if(info->num_loop2 >= LOOP_NEST_MAX) {
        compile_err_msg(info, "Over flow loop number");
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }

    free_right_value_objects(info);
    Builder.CreateCondBr(conditional_value.value, cond_then_block, cond_end_block);

    BasicBlock* current_block_before2;
    llvm_change_block(cond_then_block, &current_block_before2, info, FALSE);

    /// block of for expression ///
    sNodeType* result_type = create_node_type_with_class_name("void");
    if(!compile_block(for_block, info, result_type)) 
    {
        info->num_loop--;
        info->pinfo->lv_table = lv_table_before;
        return FALSE;
    }

    /// expression 3 ///
    unsigned int expression_node3 = gNodes[node].uValue.sFor.mExpressionNode3;

    BOOL last_expression_is_return_before = info->last_expression_is_return;
    info->last_expression_is_return = FALSE;

    if(!compile(expression_node3, info)) {
        info->pinfo->lv_table = lv_table_before;
        return FALSE;
    }

    if(!info->last_expression_is_return) {
        free_right_value_objects(info);
        Builder.CreateBr(loop_top_block);
    }

    info->last_expression_is_return = last_expression_is_return_before;

    BasicBlock* current_block_before3;
    llvm_change_block(cond_end_block, &current_block_before3, info, FALSE);
    info->num_loop--;

    info->pinfo->lv_table = lv_table_before;

    return TRUE;
}

unsigned int sNodeTree_create_lambda_call(unsigned int lambda_node, unsigned int* params, int num_params, sParserInfo* info)
{
    unsigned int node = alloc_node();

    gNodes[node].uValue.sFunctionCall.mNumParams = num_params;

    int i;
    for(i=0; i<num_params; i++) {
        gNodes[node].uValue.sFunctionCall.mParams[i] = params[i];
    }
    
    gNodes[node].mNodeType = kNodeTypeLambdaCall;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    gNodes[node].mLeft = lambda_node;
    gNodes[node].mRight = 0;
    gNodes[node].mMiddle = 0;

    return node;
}

BOOL compile_lambda_call(unsigned int node, sCompileInfo* info)
{
    /// rename variables ///
    int num_params = gNodes[node].uValue.sFunctionCall.mNumParams;
    unsigned int params[PARAMS_MAX];

    unsigned int lambda_node = gNodes[node].mLeft;

    /// go ///
    if(!compile(lambda_node, info)) {
        return FALSE;
    }

    sNodeType* lambda_type = info->type;

/*
    if(info->generics_type) {
        if(!solve_generics(&lambda_type, info->generics_type))
        {
            compile_err_msg(info, "Can't solve generics types");
            show_node_type(lambda_type);
            show_node_type(info->generics_type);
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }
    }
*/

    LVALUE lambda_value = *get_value_from_stack(-1);
    dec_stack_ptr(1, info);

    sNodeType* param_types[PARAMS_MAX];

    int i;
    for(i=0; i<num_params; i++) {
        params[i] = gNodes[node].uValue.sFunctionCall.mParams[i];
        
        if(!compile(params[i], info)) {
            return FALSE;
        }

        param_types[i] = info->type;
    }

    /// convert param type ///
    std::vector<Value*> llvm_params;
    LVALUE* lvalue_params[PARAMS_MAX];

    for(i=0; i<num_params; i++) {
        sNodeType* left_type = lambda_type->mParamTypes[i];
        sNodeType* right_type = param_types[i];

        LVALUE* param = get_value_from_stack(-num_params+i);

        lvalue_params[i] = param;

        if(auto_cast_posibility(left_type, right_type)) 
        {
            if(!cast_right_type_to_left_type(left_type, &right_type, param, info))
            {
                compile_err_msg(info, "Cast failed");
                info->err_num++;

                info->type = create_node_type_with_class_name("int"); // dummy

                return TRUE;
            }
        }

        llvm_params.push_back(param->value);
    }

/*
    /// lvar table ///
    Type* lvar_table_type = ArrayType::get(PointerType::get(IntegerType::get(TheContext, 8), 0), LOCAL_VARIABLE_MAX);

    Value* lvar_table_value = Builder.CreateAlloca(lvar_table_type, 0, "lvar_table_array");
    llvm_params.push_back(lvar_table_value);
*/

    dec_stack_ptr(num_params, info);

    if(type_identify_with_class_name(lambda_type->mResultType, "void"))
    {
        Builder.CreateCall(lambda_value.value, llvm_params);

        info->type = lambda_type->mResultType;
    }
    else {
        LVALUE llvm_value;
        llvm_value.value = Builder.CreateCall(lambda_value.value, llvm_params);
        llvm_value.type = lambda_type->mResultType;
        llvm_value.address = nullptr;
        llvm_value.var = nullptr;

        push_value_to_stack_ptr(&llvm_value, info);

        info->type = lambda_type->mResultType;
    }

    return TRUE;
}

unsigned int sNodeTree_create_simple_lambda_param(char* buf, char* sname, int sline, sParserInfo* info)
{
    unsigned int node = alloc_node();

    gNodes[node].uValue.sSimpleLambdaParam.mBuf = MANAGED buf;
    xstrncpy(gNodes[node].uValue.sSimpleLambdaParam.mSName, sname, PATH_MAX);
    gNodes[node].uValue.sSimpleLambdaParam.mSLine = sline;
    
    gNodes[node].mNodeType = kNodeTypeSimpleLambdaParam;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    gNodes[node].mLeft = 0;
    gNodes[node].mRight = 0;
    gNodes[node].mMiddle = 0;

    return node;
}

static BOOL compile_simple_lambda_param(unsigned int node, sCompileInfo* info)
{
    return TRUE;
}

unsigned int sNodeTree_create_dereffernce(unsigned int left_node, sParserInfo* info)
{
    unsigned int node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeDerefference;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    gNodes[node].mLeft = left_node;
    gNodes[node].mRight = 0;
    gNodes[node].mMiddle = 0;

    return node;
}

static BOOL compile_dereffernce(unsigned int node, sCompileInfo* info)
{
    unsigned int left_node = gNodes[node].mLeft;

    if(!compile(left_node, info)) {
        return FALSE;
    }

    sNodeType* left_type = info->type;

    sNodeType* derefference_type = clone_node_type(left_type);

    if(derefference_type->mPointerNum == 0) {
        compile_err_msg(info, "This is not pointer type");
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy
        return TRUE;
    }

    derefference_type->mPointerNum--;

    int alignment = get_llvm_alignment_from_node_type(derefference_type);

    LVALUE lvalue = *get_value_from_stack(-1);
    dec_stack_ptr(1, info);

    LVALUE llvm_value;
    llvm_value.value = Builder.CreateAlignedLoad(lvalue.value, alignment, "derefference_value");
    llvm_value.type = derefference_type;
    llvm_value.address = lvalue.value;
    llvm_value.var = nullptr;

    push_value_to_stack_ptr(&llvm_value, info);

    info->type = derefference_type;

    return TRUE;
}

unsigned int sNodeTree_create_reffernce(unsigned int left_node, sParserInfo* info)
{
    unsigned int node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeRefference;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    gNodes[node].mLeft = left_node;
    gNodes[node].mRight = 0;
    gNodes[node].mMiddle = 0;

    return node;
}

static BOOL compile_reffernce(unsigned int node, sCompileInfo* info)
{
    unsigned int left_node = gNodes[node].mLeft;

    if(!compile(left_node, info)) {
        return FALSE;
    }

    LVALUE lvalue = *get_value_from_stack(-1);
    dec_stack_ptr(1, info);

    if(lvalue.address == nullptr) {
        compile_err_msg(info, "Can't get address of this value");
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy
        return TRUE;
    }

    sNodeType* left_type = info->type;

    sNodeType* refference_type = clone_node_type(left_type);

    refference_type->mPointerNum++;

    LVALUE llvm_value;
    llvm_value.value = lvalue.address;
    llvm_value.type = refference_type;
    llvm_value.address = nullptr;
    llvm_value.var = nullptr;

    push_value_to_stack_ptr(&llvm_value, info);

    info->type = refference_type;

    return TRUE;
}

unsigned int sNodeTree_create_clone(unsigned int left, sParserInfo* info)
{
    unsigned int node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeClone;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    gNodes[node].mLeft = left;
    gNodes[node].mRight = 0;
    gNodes[node].mMiddle = 0;

    return node;
}

static BOOL compile_clone(unsigned int node, sCompileInfo* info)
{
    unsigned int left_node = gNodes[node].mLeft;

    if(!compile(left_node, info)) {
        return FALSE;
    }

    LVALUE lvalue = *get_value_from_stack(-1);
    dec_stack_ptr(1, info);

    if(lvalue.address == nullptr) {
        compile_err_msg(info, "Can't get address of this value");
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy
        return TRUE;
    }

    sNodeType* left_type = info->type;

    if(!left_type->mHeap) {
        compile_err_msg(info, "Can't clone this value");
        show_node_type(left_type);
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy
        return TRUE;
    }

    Value* obj = clone_object(left_type, lvalue.address, info);

    LVALUE llvm_value;
    llvm_value.value = obj;
    llvm_value.type = left_type;
    llvm_value.address = nullptr;
    llvm_value.var = nullptr;

    push_value_to_stack_ptr(&llvm_value, info);

    info->type = left_type;

    return TRUE;
}

unsigned int sNodeTree_create_load_array_element(unsigned int array, unsigned int index_node, sParserInfo* info)
{
    unsigned int node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeLoadElement;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    gNodes[node].mLeft = array;
    gNodes[node].mRight = 0;
    gNodes[node].mMiddle = index_node;

    return node;
}

static BOOL compile_load_element(unsigned int node, sCompileInfo* info)
{
    /// compile left node ///
    unsigned int lnode = gNodes[node].mLeft;

    if(!compile(lnode, info)) {
        return FALSE;
    }

    sNodeType* left_type = info->type;

    LVALUE lvalue = *get_value_from_stack(-1);

    sVar* var = lvalue.var;

    if(left_type->mArrayNum == 0 && left_type->mPointerNum == 0) 
    {
        compile_err_msg(info, "neo-c can't get an element from this type.");
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }

    /// compile middle node ///
    unsigned int mnode = gNodes[node].mMiddle;

    if(!compile(mnode, info)) {
        return FALSE;
    }

    sNodeType* middle_type = info->type;

    LVALUE rvalue = *get_value_from_stack(-1);

    sNodeType* int_type = create_node_type_with_class_name("int");

    if(!cast_right_type_to_left_type(int_type, &middle_type, &rvalue, info))
    {
        compile_err_msg(info, "Cast failed");
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }

    if(!type_identify_with_class_name(middle_type, "int")) {
        compile_err_msg(info, "Type of index should be number");
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }

    /// generate code ///
    sNodeType* var_type = clone_node_type(left_type);

    if(var_type->mArrayNum > 0) {
        var_type->mArrayNum = 0;
    }
    else {
        var_type->mPointerNum--;
    }

    /// go ///
    Value* element_value;
    if(left_type->mArrayNum > 0) {
        sNodeType* var_type2 = clone_node_type(var_type);
        var_type2->mPointerNum++;

        Type* llvm_var_type;
        if(!create_llvm_type_from_node_type(&llvm_var_type, var_type2, info))
        {
            compile_err_msg(info, "Getting llvm type failed(10)");
            show_node_type(var_type2);
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }

        Value* lvalue2 = Builder.CreateCast(Instruction::BitCast, lvalue.address, llvm_var_type);
        Value* load_element_addresss = Builder.CreateGEP(lvalue2, rvalue.value, "element_address");

        int alignment = get_llvm_alignment_from_node_type(var_type);

        element_value = Builder.CreateAlignedLoad(load_element_addresss, alignment, "element");

    }
    else {
        Value* lvalue2 = lvalue.value;

        Value* load_element_addresss = Builder.CreateGEP(lvalue2, rvalue.value, "element_address");

        int alignment = get_llvm_alignment_from_node_type(var_type);

        element_value = Builder.CreateAlignedLoad(load_element_addresss, alignment, "element");
    }

    LVALUE llvm_value;
    llvm_value.value = element_value;
    llvm_value.type = clone_node_type(var_type);
    llvm_value.address = nullptr;
    llvm_value.var = nullptr;

    dec_stack_ptr(2, info);
    push_value_to_stack_ptr(&llvm_value, info);

    info->type = var_type;

    return TRUE;
}

unsigned int sNodeTree_create_store_element(unsigned int array, unsigned int index_node, unsigned int right_node, sParserInfo* info)
{
    unsigned int node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeStoreElement;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    gNodes[node].mLeft = array;
    gNodes[node].mRight = right_node;
    gNodes[node].mMiddle = index_node;

    return node;
}

BOOL compile_store_element(unsigned int node, sCompileInfo* info)
{
    /// compile left node ///
    unsigned int lnode = gNodes[node].mLeft;

    if(!compile(lnode, info)) {
        return FALSE;
    }

    sNodeType* left_type = info->type;

    LVALUE lvalue = *get_value_from_stack(-1);

    if(left_type->mArrayNum == 0 && left_type->mPointerNum == 0) 
    {
        compile_err_msg(info, "neo-c can't get an element from this type.");
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }

    /// compile middle node ///
    unsigned int mnode = gNodes[node].mMiddle;

    if(!compile(mnode, info)) {
        return FALSE;
    }

    sNodeType* middle_type = info->type;

    LVALUE llvm_value = *get_value_from_stack(-1);

    sNodeType* int_type = create_node_type_with_class_name("int");

    if(!cast_right_type_to_left_type(int_type, &middle_type, &llvm_value, info))
    {
        compile_err_msg(info, "Cast failed");
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }

    if(!type_identify_with_class_name(middle_type, "int")) {
        compile_err_msg(info, "Type of index should be number");
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }

    LVALUE mvalue = *get_value_from_stack(-1);

    /// compile right node ///
    unsigned int rnode = gNodes[node].mRight;

    if(!compile(rnode, info)) {
        return FALSE;
    }

    sNodeType* right_type = info->type;

    LVALUE rvalue = *get_value_from_stack(-1);

    sNodeType* var_type = clone_node_type(left_type);

    if(var_type->mArrayNum > 0) {
        var_type->mArrayNum = 0;
    }
    else {
        var_type->mPointerNum--;
    }
    var_type->mHeap = right_type->mHeap;

    if(auto_cast_posibility(var_type, right_type)) {
        if(!cast_right_type_to_left_type(var_type, &right_type, &rvalue, info))
        {
            compile_err_msg(info, "Cast failed");
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }
    }

    if(!substitution_posibility(var_type, right_type, info)) 
    {
        compile_err_msg(info, "The different type between left type and right type");
        show_node_type(var_type);
        show_node_type(right_type);
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }

    /// generate code ///
    Value* lvalue2;
    if(left_type->mArrayNum > 0) {
        sNodeType* var_type2 = clone_node_type(var_type);
        var_type2->mPointerNum++;

        Type* llvm_var_type;
        if(!create_llvm_type_from_node_type(&llvm_var_type, var_type2, info))
        {
            compile_err_msg(info, "Getting llvm type failed(11)");
            show_node_type(var_type2);
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }

        Value* lvalue2 = Builder.CreateCast(Instruction::BitCast, lvalue.address, llvm_var_type);
        Value* load_element_addresss = Builder.CreateGEP(lvalue2, mvalue.value, "element_address");

        int alignment = get_llvm_alignment_from_node_type(var_type);

        Builder.CreateAlignedStore(rvalue.value, load_element_addresss, alignment);
    }
    else {
        Value* lvalue2 = lvalue.value;

        Value* element_address = Builder.CreateGEP(lvalue2, mvalue.value, "element_address");

        int alignment = get_llvm_alignment_from_node_type(var_type);

        std_move(element_address, var_type, &rvalue, FALSE, info);

        Builder.CreateAlignedStore(rvalue.value, element_address, alignment);
    }

    dec_stack_ptr(3, info);
    push_value_to_stack_ptr(&rvalue, info);

    info->type = clone_node_type(right_type);

    return TRUE;
}

unsigned int sNodeTree_create_character_value(char c, sParserInfo* info)
{
    unsigned int node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeChar;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    gNodes[node].mLeft = 0;
    gNodes[node].mRight = 0;
    gNodes[node].mMiddle = 0;

    gNodes[node].uValue.mCharValue = c;

    return node;
}

BOOL compile_char_value(unsigned int node, sCompileInfo* info)
{
    char c = gNodes[node].uValue.mCharValue;

    LVALUE llvm_value;
    llvm_value.value = ConstantInt::get(TheContext, llvm::APInt(8, c, false)); 
    llvm_value.type = create_node_type_with_class_name("char");
    llvm_value.address = nullptr;
    llvm_value.var = nullptr;

    push_value_to_stack_ptr(&llvm_value, info);

    info->type = create_node_type_with_class_name("char");


    return TRUE;
}

unsigned int sNodeTree_create_cast(sNodeType* left_type, unsigned int left_node, sParserInfo* info)
{
    unsigned int node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeCast;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    gNodes[node].mLeft = left_node;
    gNodes[node].mRight = 0;
    gNodes[node].mMiddle = 0;

    gNodes[node].uValue.mType = left_type;

    return node;
}

BOOL compile_cast(unsigned int node, sCompileInfo* info)
{
    sNodeType* right_type = gNodes[node].uValue.mType;

    int left_node = gNodes[node].mLeft;
    if(!compile(left_node, info)) {
        return FALSE;
    }
    sNodeType* left_type = info->type;

    LVALUE lvalue = *get_value_from_stack(-1);
    dec_stack_ptr(1, info);

    if(cast_posibility(left_type, right_type)) {
        if(!cast_right_type_to_left_type(right_type, &left_type, &lvalue, info))
        {
            compile_err_msg(info, "Cast failed");
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }
    }

    push_value_to_stack_ptr(&lvalue, info);

    info->type = clone_node_type(lvalue.type);

    return TRUE;
}

unsigned int sNodeTree_create_impl(unsigned int* nodes, int num_nodes, sParserInfo* info)
{
    unsigned int node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeImpl;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    gNodes[node].mLeft = 0;
    gNodes[node].mRight = 0;
    gNodes[node].mMiddle = 0;

    memcpy(gNodes[node].uValue.sImpl.mNodes, nodes, sizeof(unsigned int)*num_nodes);
    gNodes[node].uValue.sImpl.mNumNodes = num_nodes;

    return node;
}

static BOOL compile_impl(unsigned int node, sCompileInfo* info)
{
    unsigned int nodes[IMPL_DEF_MAX];
    int num_nodes = gNodes[node].uValue.sImpl.mNumNodes;

    memcpy(nodes, gNodes[node].uValue.sImpl.mNodes, sizeof(unsigned int)*num_nodes);

    int i;
    for(i=0; i<num_nodes; i++) {
        int node = nodes[i];
        if(!compile(node, info)) {
            return FALSE;
        }
    }

    info->type = create_node_type_with_class_name("void");

    return TRUE;
}

unsigned int sNodeTree_create_typedef(char* name, sNodeType* node_type, sParserInfo* info)
{
    unsigned int node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeTypeDef;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    gNodes[node].mLeft = 0;
    gNodes[node].mRight = 0;
    gNodes[node].mMiddle = 0;

    add_typedef(name, clone_node_type(node_type));

    return node;
}

static BOOL compile_typedef(unsigned int node, sCompileInfo* info)
{

    info->type = create_node_type_with_class_name("void");

    return TRUE;
}

unsigned int sNodeTree_create_left_shift(unsigned int left, unsigned int right, unsigned int middle, sParserInfo* info)
{
    unsigned node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeLeftShift;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    gNodes[node].mLeft = left;
    gNodes[node].mRight = right;
    gNodes[node].mMiddle = middle;

    return node;
}

static BOOL compile_left_shift(unsigned int node, sCompileInfo* info)
{
    int left_node = gNodes[node].mLeft;
    if(!compile(left_node, info)) {
        return FALSE;
    }
    sNodeType* left_type = info->type;

    LVALUE lvalue = *get_value_from_stack(-1);

    int right_node = gNodes[node].mRight;
    if(!compile(right_node, info)) {
        return FALSE;
    }

    sNodeType* right_type = info->type;

    LVALUE rvalue = *get_value_from_stack(-1);

    if(auto_cast_posibility(left_type, right_type)) {
        if(!cast_right_type_to_left_type(left_type, &right_type, &rvalue, info))
        {
            compile_err_msg(info, "Cast failed");
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }
    }

    if(is_number_type(left_type) && is_number_type(right_type))
    {
        LVALUE llvm_value;
        llvm_value.value = Builder.CreateShl(lvalue.value, rvalue.value, "lshifttmp");
        llvm_value.type = clone_node_type(right_type);
        llvm_value.address = nullptr;
        llvm_value.var = nullptr;

        dec_stack_ptr(2, info);
        push_value_to_stack_ptr(&llvm_value, info);

        info->type = llvm_value.type;
    }
    else {
        int num_params = 2;

        sNodeType* param_types[PARAMS_MAX];

        param_types[0] = left_type;
        param_types[1] = right_type;

        Value* params[PARAMS_MAX];

        params[0] = lvalue.value;
        params[1] = rvalue.value;

        char real_fun_name[REAL_FUN_NAME_MAX];

        create_operator_fun_name(real_fun_name, REAL_FUN_NAME_MAX, "op_lshift", param_types, num_params);

        if(!call_function(real_fun_name, params, num_params, "", info))
        {
            compile_err_msg(info, "Not found found operator << for\n");
            show_node_type(left_type);
            show_node_type(right_type);
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy
            return TRUE;
        }
    }

    return TRUE;
}

unsigned int sNodeTree_create_right_shift(unsigned int left, unsigned int right, unsigned int middle, sParserInfo* info)
{
    unsigned node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeRightShift;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    gNodes[node].mLeft = left;
    gNodes[node].mRight = right;
    gNodes[node].mMiddle = middle;

    return node;
}

static BOOL compile_right_shift(unsigned int node, sCompileInfo* info)
{
    int left_node = gNodes[node].mLeft;
    if(!compile(left_node, info)) {
        return FALSE;
    }
    sNodeType* left_type = info->type;

    LVALUE lvalue = *get_value_from_stack(-1);

    int right_node = gNodes[node].mRight;
    if(!compile(right_node, info)) {
        return FALSE;
    }

    sNodeType* right_type = info->type;

    LVALUE rvalue = *get_value_from_stack(-1);

    if(auto_cast_posibility(left_type, right_type)) {
        if(!cast_right_type_to_left_type(left_type, &right_type, &rvalue, info))
        {
            compile_err_msg(info, "Cast failed");
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }
    }

    if(is_number_type(left_type) && is_number_type(right_type))
    {
        LVALUE llvm_value;
        llvm_value.value = Builder.CreateAShr(lvalue.value, rvalue.value, "rshifttmp");
        llvm_value.type = clone_node_type(right_type);
        llvm_value.address = nullptr;
        llvm_value.var = nullptr;

        dec_stack_ptr(2, info);
        push_value_to_stack_ptr(&llvm_value, info);

        info->type = llvm_value.type;
    }
    else {
        int num_params = 2;

        sNodeType* param_types[PARAMS_MAX];

        param_types[0] = left_type;
        param_types[1] = right_type;

        Value* params[PARAMS_MAX];

        params[0] = lvalue.value;
        params[1] = rvalue.value;

        char real_fun_name[REAL_FUN_NAME_MAX];

        create_operator_fun_name(real_fun_name, REAL_FUN_NAME_MAX, "op_rshift", param_types, num_params);

        if(!call_function(real_fun_name, params, num_params, "", info))
        {
            compile_err_msg(info, "Not found found operator >> for\n");
            show_node_type(left_type);
            show_node_type(right_type);
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy
            return TRUE;
        }
    }

    return TRUE;
}

unsigned int sNodeTree_create_and(unsigned int left, unsigned int right, unsigned int middle, sParserInfo* info)
{
    unsigned node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeAnd;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    gNodes[node].mLeft = left;
    gNodes[node].mRight = right;
    gNodes[node].mMiddle = middle;

    return node;
}

static BOOL compile_and(unsigned int node, sCompileInfo* info)
{
    int left_node = gNodes[node].mLeft;
    if(!compile(left_node, info)) {
        return FALSE;
    }
    sNodeType* left_type = info->type;

    LVALUE lvalue = *get_value_from_stack(-1);

    int right_node = gNodes[node].mRight;
    if(!compile(right_node, info)) {
        return FALSE;
    }

    sNodeType* right_type = info->type;

    LVALUE rvalue = *get_value_from_stack(-1);

    if(auto_cast_posibility(left_type, right_type)) {
        if(!cast_right_type_to_left_type(left_type, &right_type, &rvalue, info))
        {
            compile_err_msg(info, "Cast failed");
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }
    }

    if(is_number_type(left_type) && is_number_type(right_type))
    {
        LVALUE llvm_value;
        llvm_value.value = Builder.CreateAnd(lvalue.value, rvalue.value, "andtmp");
        llvm_value.type = clone_node_type(right_type);
        llvm_value.address = nullptr;
        llvm_value.var = nullptr;

        dec_stack_ptr(2, info);
        push_value_to_stack_ptr(&llvm_value, info);

        info->type = llvm_value.type;
    }
    else {
        int num_params = 2;

        sNodeType* param_types[PARAMS_MAX];

        param_types[0] = left_type;
        param_types[1] = right_type;

        Value* params[PARAMS_MAX];

        params[0] = lvalue.value;
        params[1] = rvalue.value;

        char real_fun_name[REAL_FUN_NAME_MAX];

        create_operator_fun_name(real_fun_name, REAL_FUN_NAME_MAX, "op_and", param_types, num_params);

        if(!call_function(real_fun_name, params, num_params, "", info))
        {
            compile_err_msg(info, "Not found found operator & for\n");
            show_node_type(left_type);
            show_node_type(right_type);
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy
            return TRUE;
        }
    }

    return TRUE;
}

unsigned int sNodeTree_create_xor(unsigned int left, unsigned int right, unsigned int middle, sParserInfo* info)
{
    unsigned node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeXor;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    gNodes[node].mLeft = left;
    gNodes[node].mRight = right;
    gNodes[node].mMiddle = middle;

    return node;
}

static BOOL compile_xor(unsigned int node, sCompileInfo* info)
{
    int left_node = gNodes[node].mLeft;
    if(!compile(left_node, info)) {
        return FALSE;
    }
    sNodeType* left_type = info->type;

    LVALUE lvalue = *get_value_from_stack(-1);

    int right_node = gNodes[node].mRight;
    if(!compile(right_node, info)) {
        return FALSE;
    }

    sNodeType* right_type = info->type;

    LVALUE rvalue = *get_value_from_stack(-1);

    if(auto_cast_posibility(left_type, right_type)) {
        if(!cast_right_type_to_left_type(left_type, &right_type, &rvalue, info))
        {
            compile_err_msg(info, "Cast failed");
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }
    }

    if(is_number_type(left_type) && is_number_type(right_type))
    {
        LVALUE llvm_value;
        llvm_value.value = Builder.CreateXor(lvalue.value, rvalue.value, "xortmp");
        llvm_value.type = clone_node_type(right_type);
        llvm_value.address = nullptr;
        llvm_value.var = nullptr;

        dec_stack_ptr(2, info);
        push_value_to_stack_ptr(&llvm_value, info);

        info->type = llvm_value.type;
    }
    else {
        int num_params = 2;

        sNodeType* param_types[PARAMS_MAX];

        param_types[0] = left_type;
        param_types[1] = right_type;

        Value* params[PARAMS_MAX];

        params[0] = lvalue.value;
        params[1] = rvalue.value;

        char real_fun_name[REAL_FUN_NAME_MAX];

        create_operator_fun_name(real_fun_name, REAL_FUN_NAME_MAX, "op_xor", param_types, num_params);

        if(!call_function(real_fun_name, params, num_params, "", info))
        {
            compile_err_msg(info, "Not found found operator ^ for\n");
            show_node_type(left_type);
            show_node_type(right_type);
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy
            return TRUE;
        }
    }

    return TRUE;
}

unsigned int sNodeTree_create_or(unsigned int left, unsigned int right, unsigned int middle, sParserInfo* info)
{
    unsigned node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeOr;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    gNodes[node].mLeft = left;
    gNodes[node].mRight = right;
    gNodes[node].mMiddle = middle;

    return node;
}

static BOOL compile_or(unsigned int node, sCompileInfo* info)
{
    int left_node = gNodes[node].mLeft;
    if(!compile(left_node, info)) {
        return FALSE;
    }
    sNodeType* left_type = info->type;

    LVALUE lvalue = *get_value_from_stack(-1);

    int right_node = gNodes[node].mRight;
    if(!compile(right_node, info)) {
        return FALSE;
    }

    sNodeType* right_type = info->type;

    LVALUE rvalue = *get_value_from_stack(-1);

    if(auto_cast_posibility(left_type, right_type)) {
        if(!cast_right_type_to_left_type(left_type, &right_type, &rvalue, info))
        {
            compile_err_msg(info, "Cast failed");
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }
    }

    if(is_number_type(left_type) && is_number_type(right_type))
    {
        LVALUE llvm_value;
        llvm_value.value = Builder.CreateOr(lvalue.value, rvalue.value, "ortmp");
        llvm_value.type = clone_node_type(right_type);
        llvm_value.address = nullptr;
        llvm_value.var = nullptr;

        dec_stack_ptr(2, info);
        push_value_to_stack_ptr(&llvm_value, info);

        info->type = llvm_value.type;
    }
    else {
        int num_params = 2;

        sNodeType* param_types[PARAMS_MAX];

        param_types[0] = left_type;
        param_types[1] = right_type;

        Value* params[PARAMS_MAX];

        params[0] = lvalue.value;
        params[1] = rvalue.value;

        char real_fun_name[REAL_FUN_NAME_MAX];

        create_operator_fun_name(real_fun_name, REAL_FUN_NAME_MAX, "op_or", param_types, num_params);

        if(!call_function(real_fun_name, params, num_params, "", info))
        {
            compile_err_msg(info, "Not found found operator | for\n");
            show_node_type(left_type);
            show_node_type(right_type);
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy
            return TRUE;
        }
    }

    return TRUE;
}

unsigned int sNodeTree_create_return(unsigned int left, sParserInfo* info)
{
    unsigned node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeReturn;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    gNodes[node].mLeft = left;
    gNodes[node].mRight = 0;
    gNodes[node].mMiddle = 0;

    return node;
}

static BOOL compile_return(unsigned int node, sCompileInfo* info)
{
    sNodeType* result_type = info->result_type;

    if(result_type == NULL) {
        compile_err_msg(info, "No result type");
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }

    int left_node = gNodes[node].mLeft;

    if(left_node != 0) {
        if(!compile(left_node, info)) {
            return FALSE;
        }

        LVALUE llvm_value = *get_value_from_stack(-1);

        if(auto_cast_posibility(result_type, llvm_value.type))
        {
            cast_right_type_to_left_type(result_type, &llvm_value.type, &llvm_value, info);
        }

        if(!substitution_posibility(result_type, llvm_value.type, info)) {
            compile_err_msg(info, "The different type between left type and right type.(1)");
            show_node_type(result_type);
            show_node_type(llvm_value.type);
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }

        std_move(NULL, result_type, &llvm_value, FALSE, info);

        restore_lvtable((Value*)info->function_lvtable);

        free_right_value_objects(info);
        free_objects(info->pinfo->lv_table, info);

        if(info->inline_func_end) {
            int alignment = get_llvm_alignment_from_node_type(llvm_value.type);

            Builder.CreateAlignedStore(llvm_value.value, (Value*)info->result_variable, alignment);

            dec_stack_ptr(1, info);

            free_right_value_objects(info);
            Builder.CreateBr((BasicBlock*)info->inline_func_end);
        }
        else {
            Builder.CreateRet(llvm_value.value);

            dec_stack_ptr(1, info);
        }

        info->type = create_node_type_with_class_name("void");
    }
    else {
        if(!type_identify_with_class_name(result_type, "void"))
        {
            compile_err_msg(info, "Require result value");
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }

        restore_lvtable((Value*)info->function_lvtable);

        free_right_value_objects(info);
        free_objects(info->pinfo->lv_table, info);

        if(info->inline_func_end) {
            free_right_value_objects(info);
            Builder.CreateBr((BasicBlock*)info->inline_func_end);
        }
        else {
            Builder.CreateRet(nullptr);
        }

        info->type = create_node_type_with_class_name("void");
    }

    return TRUE;
}

unsigned int sNodeTree_create_sizeof(sNodeType* node_type, sParserInfo* info)
{
    unsigned node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeSizeOf;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    gNodes[node].uValue.sSizeOf.mType = clone_node_type(node_type);

    gNodes[node].mLeft = 0;
    gNodes[node].mRight = 0;
    gNodes[node].mMiddle = 0;

    return node;
}

static BOOL compile_sizeof(unsigned int node, sCompileInfo* info)
{
    sNodeType* node_type = gNodes[node].uValue.sSizeOf.mType;
    sNodeType* node_type2 = clone_node_type(node_type);

    uint64_t alloc_size = 0;
    if(!get_size_from_node_type(&alloc_size, node_type2, info))
    {
        return FALSE;
    }

    /// result ///
    LVALUE llvm_value;
    llvm_value.value = ConstantInt::get(TheContext, llvm::APInt(64, alloc_size, false)); 
    llvm_value.type = create_node_type_with_class_name("long");
    llvm_value.address = nullptr;
    llvm_value.var = nullptr;

    push_value_to_stack_ptr(&llvm_value, info);

    info->type = create_node_type_with_class_name("long");

    return TRUE;
}

unsigned int sNodeTree_create_sizeof_expression(unsigned int lnode, sParserInfo* info)
{
    unsigned int node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeSizeOfExpression;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    gNodes[node].mLeft = lnode;
    gNodes[node].mRight = 0;
    gNodes[node].mMiddle = 0;

    return node;
}

BOOL compile_sizeof_expression(unsigned int node, sCompileInfo* info)
{
    unsigned int lnode = gNodes[node].mLeft;

    if(!compile(lnode, info)) {
        return FALSE;
    }

    sNodeType* node_type = clone_node_type(info->type);

    dec_stack_ptr(1, info);

    long long int value = sizeof(node_type);

    LVALUE llvm_value;
    llvm_value.value = ConstantInt::get(TheContext, llvm::APInt(64, value, true)); 
    llvm_value.type = create_node_type_with_class_name("bool");
    llvm_value.address = nullptr;
    llvm_value.var = nullptr;

    push_value_to_stack_ptr(&llvm_value, info);

    info->type = create_node_type_with_class_name("bool");

    return TRUE;
}


unsigned int sNodeTree_create_define_variables(unsigned int* nodes, int num_nodes, BOOL extern_, sParserInfo* info)
{
    unsigned node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeDefineVariables;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    memcpy(gNodes[node].uValue.sDefineVariables.mNodes, nodes, sizeof(unsigned int)*IMPL_DEF_MAX);
    gNodes[node].uValue.sDefineVariables.mNumNodes = num_nodes;
    gNodes[node].uValue.sDefineVariables.mGlobal = info->mBlockLevel == 0;
    gNodes[node].uValue.sDefineVariables.mExtern = extern_;

    gNodes[node].mLeft = 0;
    gNodes[node].mRight = 0;
    gNodes[node].mMiddle = 0;

    return node;
}

static BOOL compile_define_variables(unsigned int node, sCompileInfo* info)
{
    unsigned int* nodes = gNodes[node].uValue.sDefineVariables.mNodes;
    int num_nodes = gNodes[node].uValue.sDefineVariables.mNumNodes;
    BOOL global = gNodes[node].uValue.sDefineVariables.mGlobal;
    BOOL extern_ = gNodes[node].uValue.sDefineVariables.mExtern ;

    int i;
    for(i=0; i<num_nodes; i++) {
        unsigned int node = nodes[i];

        if(!compile(node, info)) {
            return FALSE;
        }
    }

    info->type = create_node_type_with_class_name("void");

    return TRUE;
}

unsigned int sNodeTree_create_load_function(char* fun_name, sParserInfo* info)
{
    unsigned node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeLoadFunction;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    xstrncpy(gNodes[node].uValue.sLoadFunction.mFunName, fun_name, VAR_NAME_MAX);

    gNodes[node].mLeft = 0;
    gNodes[node].mRight = 0;
    gNodes[node].mMiddle = 0;

    return node;
}

static BOOL compile_load_function(unsigned int node, sCompileInfo* info)
{
    char* fun_name = gNodes[node].uValue.sLoadFunction.mFunName;

    sFunction sfun = gFuncs[fun_name];
    Function* fun = TheModule->getFunction(fun_name);

    if(sfun.mResultType == nullptr || fun == nullptr) {
        compile_err_msg(info, "Undeclared %s\n", fun_name);
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }
    
    sNodeType* lambda_type = create_node_type_with_class_name("lambda");

    int num_params = sfun.mNumParams;

    int i;
    for(i=0; i<num_params; i++) {
        sNodeType* param_type = sfun.mParamTypes[i];

        lambda_type->mParamTypes[i] = param_type;
    }

    lambda_type->mResultType = clone_node_type(sfun.mResultType);
    lambda_type->mNumParams = num_params;

    LVALUE llvm_value;
    llvm_value.value = fun;
    llvm_value.type = lambda_type;
    llvm_value.address = nullptr;
    llvm_value.var = nullptr;

    push_value_to_stack_ptr(&llvm_value, info);

    info->type = lambda_type;

    return TRUE;
}

unsigned int sNodeTree_create_array_with_initialization(char* name, int num_initialize_array_value, unsigned int* initialize_array_value, unsigned int left_node, sParserInfo* info)
{
    unsigned int node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeArrayWithInitialization;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    xstrncpy(gNodes[node].uValue.sArrayWithInitialization.mVarName, name, VAR_NAME_MAX);
    gNodes[node].uValue.sArrayWithInitialization.mNumInitializeArrayValue = num_initialize_array_value;
    memcpy(gNodes[node].uValue.sArrayWithInitialization.mInitializeArrayValue, initialize_array_value, sizeof(unsigned int)*INIT_ARRAY_MAX);

    gNodes[node].mLeft = left_node;
    gNodes[node].mRight = 0;
    gNodes[node].mMiddle = 0;

    return node;
}

BOOL compile_array_with_initialization(unsigned int node, sCompileInfo* info)
{
    char* var_name = gNodes[node].uValue.sArrayWithInitialization.mVarName;
    int num_initialize_array_value = gNodes[node].uValue.sArrayWithInitialization.mNumInitializeArrayValue;
    unsigned int* initialize_array_value = gNodes[node].uValue.sArrayWithInitialization.mInitializeArrayValue;

    /// compile node ///
    unsigned int lnode = gNodes[node].mLeft;

    if(gNodes[lnode].uValue.sDefineVariable.mGlobal && !gNodes[lnode].uValue.sDefineVariable.mExtern) {
        char var_name[VAR_NAME_MAX];
        xstrncpy(var_name, gNodes[lnode].uValue.sStoreVariable.mVarName, VAR_NAME_MAX);
        BOOL global = gNodes[lnode].uValue.sDefineVariable.mGlobal;
        BOOL extern_ = gNodes[lnode].uValue.sDefineVariable.mExtern;

        sVar* var = get_variable_from_table(info->pinfo->lv_table, var_name);

        if(var == NULL) {
            compile_err_msg(info, "undeclared variable %s", var_name);
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy
            return TRUE;
        }

        sNodeType* var_type = var->mType;

        Type* llvm_var_type;
        if(!create_llvm_type_from_node_type(&llvm_var_type, var_type, info))
        {
            compile_err_msg(info, "Getting llvm type failed(1)");
            show_node_type(var_type);
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }

        int alignment = get_llvm_alignment_from_node_type(var_type);

        if(global) {
            if(extern_) {
                assert(0);
            }
            else {
                if(type_identify_with_class_name(var_type, "char*"))
                {
                    sNodeType* var_element_type = clone_node_type(var_type);
                    var_element_type->mPointerNum--;

                    GlobalVariable* address = new GlobalVariable(*TheModule, llvm_var_type, false, GlobalValue::ExternalLinkage, 0, var_name, nullptr, GlobalValue::NotThreadLocal, 0, false);

                    unsigned int element_node = initialize_array_value[0];

                    if(gNodes[element_node].mNodeType != kNodeTypeCString)
                    {
                        compile_err_msg(info, "Require char* type");
                        info->err_num++;

                        info->type = create_node_type_with_class_name("int"); // dummy

                        return TRUE;
                    }

                    char* str = gNodes[element_node].uValue.sString.mString;

                    int len = strlen(str);

                    std::vector<Constant *> init_data(len+1);

                    int i;
                    for(i=0; i<len; i++) {
                        init_data[i] = ConstantInt::get(Type::getInt8Ty(TheContext), str[i]);
                    }
                    init_data[i] = ConstantInt::get(Type::getInt8Ty(TheContext), 0);

                    Type* var_llvm_element_type;
                    if(!create_llvm_type_from_node_type(&var_llvm_element_type, var_element_type, info))
                    {
                        compile_err_msg(info, "Getting llvm type failed(12)");
                        show_node_type(var_element_type);
                        info->err_num++;

                        info->type = create_node_type_with_class_name("int"); // dummy

                        return TRUE;
                    }

                    Constant* constant_array = ConstantArray::get(ArrayType::get(var_llvm_element_type, len), init_data);
                    address->setAlignment(alignment);

                    ConstantAggregateZero* initializer = ConstantAggregateZero::get(llvm_var_type);

                    address->setInitializer(constant_array);

                    var->mLLVMValue = address;

                    BOOL parent = FALSE;
                    int index = get_variable_index(info->pinfo->lv_table, var_name, &parent);

                    store_address_to_lvtable(index, address);
                }
                else {
                    sNodeType* var_element_type = clone_node_type(var_type);
                    var_element_type->mPointerNum--;

                    GlobalVariable* address = new GlobalVariable(*TheModule, llvm_var_type, false, GlobalValue::ExternalLinkage, 0, var_name, nullptr, GlobalValue::NotThreadLocal, 0, false);

                    std::vector<Constant *> init_data(num_initialize_array_value);

                    int i;
                    for(i=0; i<num_initialize_array_value; i++) {
                        /// compile node ///
                        unsigned int element_node = initialize_array_value[i];

                        if(!compile(element_node, info)) {
                            return FALSE;
                        }

                        sNodeType* right_type = info->type;

                        if(!type_identify(var_element_type, right_type))
                        {
                            compile_err_msg(info, "The different type between left type and right type.");
                            show_node_type(var_element_type);
                            show_node_type(right_type);
                            info->err_num++;

                            info->type = create_node_type_with_class_name("int"); // dummy

                            return TRUE;
                        }

                        LVALUE rvalue = *get_value_from_stack(-1);

                        if(dyn_cast<Constant>(rvalue.value)) 
                        {
                            init_data[i] = dyn_cast<Constant>(rvalue.value);
                        }
                        else {
                            compile_err_msg(info, "Require Constant Value");
                            info->err_num++;

                            info->type = create_node_type_with_class_name("int"); // dummy

                            return TRUE;
                        }

                        dec_stack_ptr(1, info);
                    }

                    Type* var_llvm_element_type;
                    if(!create_llvm_type_from_node_type(&var_llvm_element_type, var_element_type, info))
                    {
                        compile_err_msg(info, "Getting llvm type failed(13)");
                        show_node_type(var_element_type);
                        info->err_num++;

                        info->type = create_node_type_with_class_name("int"); // dummy

                        return TRUE;
                    }

                    Constant* constant_array = ConstantArray::get(ArrayType::get(var_llvm_element_type, num_initialize_array_value), init_data);
                    address->setAlignment(alignment);

                    ConstantAggregateZero* initializer = ConstantAggregateZero::get(llvm_var_type);

                    address->setInitializer(constant_array);

                    var->mLLVMValue = address;

                    BOOL parent = FALSE;
                    int index = get_variable_index(info->pinfo->lv_table, var_name, &parent);

                    store_address_to_lvtable(index, address);
                }
            }
        }
        else {
            assert(0);
        }

        info->type = var_type;
    }
    else if(gNodes[lnode].mNodeType == kNodeTypeObject) {
        if(!compile(lnode, info)) {
            return FALSE;
        }

        LVALUE llvm_value = *get_value_from_stack(-1);

        dec_stack_ptr(1, info);

        sNodeType* var_type = clone_node_type(info->type);

        int alignment = get_llvm_alignment_from_node_type(var_type);

        Value* var_address = llvm_value.value;
        //Value* var_address = Builder.CreateAlignedLoad(var_address, alignment);

        sNodeType* var_element_type = clone_node_type(var_type);
        var_element_type->mPointerNum--;

        int i;
        for(i=0; i<num_initialize_array_value; i++) {
            /// compile node ///
            unsigned int element_node = initialize_array_value[i];

            if(!compile(element_node, info)) {
                return FALSE;
            }

            sNodeType* right_type = info->type;

            if(!type_identify(var_element_type, right_type))
            {
                compile_err_msg(info, "The different type between left type and right type.");
                show_node_type(var_element_type);
                show_node_type(right_type);
                info->err_num++;

                info->type = create_node_type_with_class_name("int"); // dummy

                return TRUE;
            }

            LVALUE rvalue = *get_value_from_stack(-1);

            Value* index_value = ConstantInt::get(TheContext, llvm::APInt(32, i, true)); 

            Value* element_address = Builder.CreateGEP(var_address, index_value, "element_address");

            int alignment = get_llvm_alignment_from_node_type(var_element_type);

            Builder.CreateAlignedStore(rvalue.value, element_address, alignment);

            dec_stack_ptr(1, info);
        }

        push_value_to_stack_ptr(&llvm_value, info);
        info->type = var_type;
    }
    else {
        if(!compile(lnode, info)) {
            return FALSE;
        }

        sVar* var = get_variable_from_table(info->pinfo->lv_table, var_name);

        if(var == NULL) {
            compile_err_msg(info, "undeclared variable %s", var_name);
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy
            return TRUE;
        }

        sNodeType* var_type = var->mType;

        if(var_type == NULL || var_type->mClass == NULL) 
        {
            compile_err_msg(info, "null type %s", var_name);
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy
            return TRUE;
        }

        BOOL parent = FALSE;
        int index = get_variable_index(info->pinfo->lv_table, var_name, &parent);

        Value* var_address;
        if(parent && !var->mGlobal) {
            var_address = load_address_to_lvtable(index, var_type, info);
        }
        else {
            var_address = (Value*)var->mLLVMValue;
        }

        if(var_address == nullptr) {
            compile_err_msg(info, "Invalid variable. %s", var_name);
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }

        if(type_identify_with_class_name(var_type, "char*"))
        {
            int alignment = get_llvm_alignment_from_node_type(var_type);

            var_address = Builder.CreateAlignedLoad(var_address, alignment);

            unsigned int element_node = initialize_array_value[0];

            if(!compile(element_node, info)) {
                return FALSE;
            }

            sNodeType* right_type = info->type;

            if(!type_identify(var_type, right_type))
            {
                compile_err_msg(info, "The different type between left type and right type.");
                show_node_type(var_type);
                show_node_type(right_type);
                info->err_num++;

                info->type = create_node_type_with_class_name("int"); // dummy

                return TRUE;
            }

            LVALUE rvalue = *get_value_from_stack(-1);

            Function* fun = TheModule->getFunction("xmemcpy");

            if(fun == nullptr) {
                fprintf(stderr, "require xmemcpy\n");
                exit(2);
            }

            std::vector<Value*> params2;

            Value* param = var_address;
            params2.push_back(param);

            Value* param2 = rvalue.value;
            params2.push_back(param2);

            Value* param3;
            unsigned int node = var_type->mDynamicArrayNum;

            if(!compile(node, info)) {
                return FALSE;
            }

            sNodeType* index_type = info->type;

            if(!type_identify_with_class_name(index_type, "int"))
            {
                compile_err_msg(info, "Invalid index type");

                show_node_type(index_type);
                info->err_num++;

                info->type = create_node_type_with_class_name("int"); // dummy

                return TRUE;
            }

            LVALUE llvm_value = *get_value_from_stack(-1);

            param3 = llvm_value.value;
            param3 = Builder.CreateCast(Instruction::SExt, param3, IntegerType::get(TheContext, 64));

            dec_stack_ptr(1, info);

            params2.push_back(param3);

            Builder.CreateCall(fun, params2);

            dec_stack_ptr(1, info);
        }
        else {
            int alignment = get_llvm_alignment_from_node_type(var_type);

            var_address = Builder.CreateAlignedLoad(var_address, alignment);

            sNodeType* var_element_type = clone_node_type(var_type);
            var_element_type->mPointerNum--;

            int i;
            for(i=0; i<num_initialize_array_value; i++) {
                /// compile node ///
                unsigned int element_node = initialize_array_value[i];

                if(!compile(element_node, info)) {
                    return FALSE;
                }

                sNodeType* right_type = info->type;

                if(!type_identify(var_element_type, right_type))
                {
                    compile_err_msg(info, "The different type between left type and right type.");
                    show_node_type(var_element_type);
                    show_node_type(right_type);
                    info->err_num++;

                    info->type = create_node_type_with_class_name("int"); // dummy

                    return TRUE;
                }

                LVALUE rvalue = *get_value_from_stack(-1);

                Value* index_value = ConstantInt::get(TheContext, llvm::APInt(32, i, true)); 

                Value* element_address = Builder.CreateGEP(var_address, index_value, "element_address");

                int alignment = get_llvm_alignment_from_node_type(var_element_type);

                Builder.CreateAlignedStore(rvalue.value, element_address, alignment);

                dec_stack_ptr(1, info);
            }
        }

        info->type = create_node_type_with_class_name("void");
    }

    return TRUE;
}

unsigned int sNodeTree_create_struct_with_initialization(char* name, int num_initialize_array_value, unsigned int* initialize_array_value, unsigned int left_node, sParserInfo* info)
{
    unsigned int node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeStructWithInitialization;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    xstrncpy(gNodes[node].uValue.sArrayWithInitialization.mVarName, name, VAR_NAME_MAX);
    gNodes[node].uValue.sArrayWithInitialization.mNumInitializeArrayValue = num_initialize_array_value;
    memcpy(gNodes[node].uValue.sArrayWithInitialization.mInitializeArrayValue, initialize_array_value, sizeof(unsigned int)*INIT_ARRAY_MAX);

    gNodes[node].mLeft = left_node;
    gNodes[node].mRight = 0;
    gNodes[node].mMiddle = 0;

    return node;
}

BOOL compile_struct_with_initialization(unsigned int node, sCompileInfo* info)
{
    char* var_name = gNodes[node].uValue.sArrayWithInitialization.mVarName;
    int num_initialize_array_value = gNodes[node].uValue.sArrayWithInitialization.mNumInitializeArrayValue;
    unsigned int* initialize_array_value = gNodes[node].uValue.sArrayWithInitialization.mInitializeArrayValue;

    /// compile node ///
    unsigned int lnode = gNodes[node].mLeft;

    if(gNodes[lnode].uValue.sDefineVariable.mGlobal && !gNodes[lnode].uValue.sDefineVariable.mExtern) {
        char var_name[VAR_NAME_MAX];
        xstrncpy(var_name, gNodes[lnode].uValue.sStoreVariable.mVarName, VAR_NAME_MAX);
        BOOL global = gNodes[lnode].uValue.sDefineVariable.mGlobal;
        BOOL extern_ = gNodes[lnode].uValue.sDefineVariable.mExtern;

        sVar* var = get_variable_from_table(info->pinfo->lv_table, var_name);

        if(var == NULL) {
            compile_err_msg(info, "undeclared variable %s", var_name);
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy
            return TRUE;
        }

        sNodeType* var_type = var->mType;

        Type* llvm_var_type;
        if(!create_llvm_type_from_node_type(&llvm_var_type, var_type, info))
        {
            compile_err_msg(info, "Getting llvm type failed(2)");
            show_node_type(var_type);
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }

        int alignment = get_llvm_alignment_from_node_type(var_type);

        if(global) {
            if(extern_) {
                assert(0);
            }
            else {
                GlobalVariable* address = new GlobalVariable(*TheModule, llvm_var_type, false, GlobalValue::ExternalLinkage, 0, var_name, nullptr, GlobalValue::NotThreadLocal, 0, false);

                std::vector<Constant *> init_data(num_initialize_array_value);

                sCLClass* klass = var_type->mClass;

                int i;
                for(i=0; i<num_initialize_array_value; i++) {
                    /// compile node ///
                    unsigned int element_node = initialize_array_value[i];

                    if(!compile(element_node, info)) {
                        return FALSE;
                    }

                    sNodeType* right_type = info->type;

                    sNodeType* var_element_type = clone_node_type(klass->mFields[i]);

                    if(!type_identify(var_element_type, right_type))
                    {
                        compile_err_msg(info, "The different type between left type and right type.");
                        show_node_type(var_element_type);
                        show_node_type(right_type);
                        info->err_num++;

                        info->type = create_node_type_with_class_name("int"); // dummy

                        return TRUE;
                    }

                    LVALUE rvalue = *get_value_from_stack(-1);

                    if(dyn_cast<Constant>(rvalue.value)) {
                        init_data[i] = dyn_cast<Constant>(rvalue.value);
                    }
                    else {
                        compile_err_msg(info, "Require Constant Value");
                        info->err_num++;

                        info->type = create_node_type_with_class_name("int"); // dummy

                        return TRUE;
                    }

                    init_data[i] = (Constant*)rvalue.value;

                    dec_stack_ptr(1, info);
                }

                Constant* constant_struct = ConstantStruct::get((StructType*)llvm_var_type, init_data);
                address->setAlignment(alignment);

                ConstantAggregateZero* initializer = ConstantAggregateZero::get(llvm_var_type);

                address->setInitializer(constant_struct);

                var->mLLVMValue = address;

                BOOL parent = FALSE;
                int index = get_variable_index(info->pinfo->lv_table, var_name, &parent);

                store_address_to_lvtable(index, address);
            }
        }
        else {
            assert(0);
        }

        info->type = var_type;
    }
    else if(gNodes[lnode].mNodeType == kNodeTypeObject) {
        if(!compile(lnode, info)) {
            return FALSE;
        }

        LVALUE llvm_value = *get_value_from_stack(-1);

        dec_stack_ptr(1, info);

        sNodeType* var_type = clone_node_type(info->type);

        Value* var_address = llvm_value.value;

        if(var_address == nullptr) {
            compile_err_msg(info, "Invalid variable. %s", var_name);
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }

        int alignment = get_llvm_alignment_from_node_type(var_type);

        Value* var_value = Builder.CreateAlignedLoad(var_address, alignment);

        sCLClass* klass = var_type->mClass;

        sNodeType* left_type2 = clone_node_type(var_type);
        left_type2->mPointerNum = 0;

        Type* llvm_struct_type;
        if(!create_llvm_type_from_node_type(&llvm_struct_type, left_type2, info))
        {
            compile_err_msg(info, "Getting llvm type failed(15)");
            show_node_type(left_type2);
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }

        int i;
        for(i=0; i<num_initialize_array_value; i++) {
            /// compile node ///
            unsigned int element_node = initialize_array_value[i];

            if(!compile(element_node, info)) {
                return FALSE;
            }

            sNodeType* right_type = info->type;

            if(i >= klass->mNumFields) {
                compile_err_msg(info, "Over field number.");
                info->err_num++;

                info->type = create_node_type_with_class_name("int"); // dummy

                return TRUE;
            }

            sNodeType* field_type = klass->mFields[i];

            if(!type_identify(field_type, right_type))
            {
                compile_err_msg(info, "The different type between left type and right type.");
                show_node_type(field_type);
                show_node_type(right_type);
                info->err_num++;

                info->type = create_node_type_with_class_name("int"); // dummy

                return TRUE;
            }

            LVALUE lvalue = llvm_value;
            LVALUE rvalue = *get_value_from_stack(-1);

            Value* field_address;
            if(var_type->mPointerNum == 0) {
#if LLVM_VERSION_MAJOR >= 7
                field_address = Builder.CreateStructGEP(lvalue.address, i);
#else
                field_address = Builder.CreateStructGEP(llvm_struct_type, lvalue.address, i);
#endif
            }
            else {
#if LLVM_VERSION_MAJOR >= 7
                field_address = Builder.CreateStructGEP(lvalue.value, i);
#else
                field_address = Builder.CreateStructGEP(llvm_struct_type, lvalue.value, i);
#endif
            }

            int alignment = get_llvm_alignment_from_node_type(field_type);

            Builder.CreateAlignedStore(rvalue.value, field_address, alignment);

            dec_stack_ptr(1, info);
        }

        push_value_to_stack_ptr(&llvm_value, info);
        info->type = var_type;
    }
    else {
        if(!compile(lnode, info)) {
            return FALSE;
        }

        sVar* var = get_variable_from_table(info->pinfo->lv_table, var_name);

        if(var == NULL) {
            compile_err_msg(info, "undeclared variable %s", var_name);
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy
            return TRUE;
        }

        sNodeType* var_type = var->mType;

        if(var_type == NULL || var_type->mClass == NULL) 
        {
            compile_err_msg(info, "null type %s", var_name);
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy
            return TRUE;
        }

        BOOL parent = FALSE;
        int index = get_variable_index(info->pinfo->lv_table, var_name, &parent);

        Value* var_address;
        if(parent && !var->mGlobal) {
            var_address = load_address_to_lvtable(index, var_type, info);
        }
        else {
            var_address = (Value*)var->mLLVMValue;
        }

        if(var_address == nullptr) {
            compile_err_msg(info, "Invalid variable. %s", var_name);
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }

        int alignment = get_llvm_alignment_from_node_type(var_type);

        Value* var_value = Builder.CreateAlignedLoad(var_address, alignment);

        sCLClass* klass = var_type->mClass;

        Type* llvm_struct_type;
        if(!create_llvm_type_from_node_type(&llvm_struct_type, var_type, info))
        {
            compile_err_msg(info, "Getting llvm type failed(16)");
            show_node_type(var_type);
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }

        int i;
        for(i=0; i<num_initialize_array_value; i++) {
            /// compile node ///
            unsigned int element_node = initialize_array_value[i];

            if(!compile(element_node, info)) {
                return FALSE;
            }

            sNodeType* right_type = info->type;

            if(i >= klass->mNumFields) {
                compile_err_msg(info, "Over field number.");
                info->err_num++;

                info->type = create_node_type_with_class_name("int"); // dummy

                return TRUE;
            }

            sNodeType* field_type = klass->mFields[i];

            if(!type_identify(field_type, right_type))
            {
                compile_err_msg(info, "The different type between left type and right type.");
                show_node_type(field_type);
                show_node_type(right_type);
                info->err_num++;

                info->type = create_node_type_with_class_name("int"); // dummy

                return TRUE;
            }

            LVALUE rvalue = *get_value_from_stack(-1);

            Value* field_address;
            if(var_type->mPointerNum == 0) {
#if LLVM_VERSION_MAJOR >= 7
                field_address = Builder.CreateStructGEP(var_address, i, "element_adress");
#else
                field_address = Builder.CreateStructGEP(llvm_struct_type, var_address, i, "element_adress");
#endif
            }
            else {
#if LLVM_VERSION_MAJOR >= 7
                field_address = Builder.CreateStructGEP(var_value, i, "element_adress");
#else
                field_address = Builder.CreateStructGEP(llvm_struct_type, var_value, i, "element_adress");
#endif
            }

            int alignment = get_llvm_alignment_from_node_type(field_type);

            Builder.CreateAlignedStore(rvalue.value, field_address, alignment);

            dec_stack_ptr(1, info);
        }

        info->type = create_node_type_with_class_name("void");
    }

    return TRUE;
}

unsigned int sNodeTree_create_normal_block(struct sNodeBlockStruct* node_block, sParserInfo* info)
{
    unsigned int node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeNormalBlock;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    gNodes[node].uValue.sNormalBlock.mNodeBlock = node_block;

    gNodes[node].mLeft = 0;
    gNodes[node].mRight = 0;
    gNodes[node].mMiddle = 0;

    return node;
}

BOOL compile_normal_block(unsigned int node, sCompileInfo* info)
{
    struct sNodeBlockStruct* node_block = gNodes[node].uValue.sNormalBlock.mNodeBlock;

    sNodeType* result_type = create_node_type_with_class_name("void");

    if(!compile_block(node_block, info, result_type))
    {
        return FALSE;
    }

    info->type = create_node_type_with_class_name("void");

    return TRUE;
}

unsigned int sNodeTree_switch_expression(unsigned int expression_node, int num_switch_expression, MANAGED unsigned int* switch_expression, sParserInfo* info)
{
    unsigned int node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeSwitch;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    gNodes[node].uValue.sSwitch.mExpression = expression_node;
    gNodes[node].uValue.sSwitch.mSwitchExpression = MANAGED switch_expression;
    gNodes[node].uValue.sSwitch.mNumSwitchExpression = num_switch_expression;

    gNodes[node].mLeft = 0;
    gNodes[node].mRight = 0;
    gNodes[node].mMiddle = 0;

    return node;
}

BOOL compile_switch_expression(unsigned int node, sCompileInfo* info)
{
    unsigned int* switch_expression = gNodes[node].uValue.sSwitch.mSwitchExpression;
    int num_switch_expression = gNodes[node].uValue.sSwitch.mNumSwitchExpression;
    unsigned int expression_node = gNodes[node].uValue.sSwitch.mExpression;
    BasicBlock* loop_end_block = BasicBlock::Create(TheContext, "end_block", gFunction);

    info->loop_end_block[info->num_loop] = loop_end_block;
    info->num_loop++;

    if(info->num_loop >= LOOP_NEST_MAX) {
        compile_err_msg(info, "Over flow loop number");
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }

    if(!compile(expression_node, info)) {
        return FALSE;
    }

    void* switch_expression_before = info->switch_expression;
    info->switch_expression = get_value_from_stack(-1)->value;
    dec_stack_ptr(1, info);

    info->case_else_block = nullptr;

    int i;
    for(i=0; i<num_switch_expression; i++) {
        /// compile node ///
        unsigned int node = switch_expression[i];

        if(!compile(node, info)) {
            info->num_loop--;
            return FALSE;
        }
    }

    BasicBlock* case_else_block = (BasicBlock*)info->case_else_block;

    if(case_else_block) {
        free_right_value_objects(info);
        Builder.CreateBr(case_else_block);

        BasicBlock* current_block_before;
        llvm_change_block(case_else_block, &current_block_before, info, FALSE);
    }

    info->switch_expression = switch_expression_before;

    free_right_value_objects(info);
    Builder.CreateBr(loop_end_block);

    BasicBlock* current_block_before;
    llvm_change_block(loop_end_block, &current_block_before, info, FALSE);

    info->type = create_node_type_with_class_name("void");

    info->case_else_block = nullptr;

    info->num_loop--;

    return TRUE;
}

unsigned int sNodeTree_case_expression(unsigned int expression_node, BOOL last_case, sParserInfo* info)
{
    unsigned int node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeCase;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    gNodes[node].uValue.sCase.mExpression = expression_node;
    gNodes[node].uValue.sCase.mLastCase = last_case;
    gNodes[node].uValue.sCase.mFirstCase = FALSE;

    gNodes[node].mLeft = 0;
    gNodes[node].mRight = 0;
    gNodes[node].mMiddle = 0;

    return node;
}

BOOL compile_case_expression(unsigned int node, sCompileInfo* info)
{
    unsigned int expression_node = gNodes[node].uValue.sCase.mExpression;
    BOOL first_case = gNodes[node].uValue.sCase.mFirstCase;
    BOOL last_case = gNodes[node].uValue.sCase.mLastCase;

    BasicBlock* cond_then_block;
    if(first_case) {
        cond_then_block = BasicBlock::Create(TheContext, "cond_then_block", gFunction);
        info->case_then_block = cond_then_block;
    }
    else {
        cond_then_block = (BasicBlock*)info->case_then_block;
    }
    BasicBlock* cond_else_block = BasicBlock::Create(TheContext, "cond_else_block", gFunction);

    BasicBlock* case_else_block = (BasicBlock*)info->case_else_block;

    if(case_else_block) {
        if(first_case) {
            free_right_value_objects(info);
            Builder.CreateBr(case_else_block);
        }

        BasicBlock* current_block_before;
        llvm_change_block(case_else_block, &current_block_before, info, FALSE);
    }

    if(expression_node == 0) {
        free_right_value_objects(info);
        Builder.CreateBr(cond_then_block);
    }
    else {
        if(!compile(expression_node, info)) {
            return FALSE;
        }

        LVALUE rvalue = *get_value_from_stack(-1);

        dec_stack_ptr(1, info);
        Value* lvalue = (Value*)info->switch_expression;

        if(lvalue == nullptr) {
            compile_err_msg(info, "No in the switch.");
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }

        Value* conditional_value = Builder.CreateICmpEQ(lvalue, rvalue.value, "eqtmp");
        free_right_value_objects(info);
        Builder.CreateCondBr(conditional_value, cond_then_block, cond_else_block);
    }

    if(last_case) {
        BasicBlock* current_block_before;
        llvm_change_block(cond_then_block, &current_block_before, info, FALSE);
    }

    info->case_else_block = cond_else_block;

    info->type = create_node_type_with_class_name("void");

    return TRUE;
}

unsigned int sNodeTree_create_break_expression(sParserInfo* info)
{
    unsigned int node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeBreak;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    gNodes[node].mLeft = 0;
    gNodes[node].mRight = 0;
    gNodes[node].mMiddle = 0;

    return node;
}

BOOL compile_break_expression(unsigned int node, sCompileInfo* info)
{
    if(info->num_loop <= 0) {
        compile_err_msg(info, "No in the loop");
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }

    BasicBlock* loop_end_block = (BasicBlock*)info->loop_end_block[info->num_loop-1];
    //info->num_loop--;

    free_right_value_objects(info);
    Builder.CreateBr(loop_end_block);

    BasicBlock* after_break = BasicBlock::Create(TheContext, "after_break", gFunction);

    BasicBlock* current_block_before;
    llvm_change_block(after_break, &current_block_before, info, FALSE);

    info->type = create_node_type_with_class_name("void");

    return TRUE;
}

unsigned int sNodeTree_create_continue_expression(sParserInfo* info)
{
    unsigned int node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeContinue;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    gNodes[node].mLeft = 0;
    gNodes[node].mRight = 0;
    gNodes[node].mMiddle = 0;

    return node;
}

BOOL compile_continue_expression(unsigned int node, sCompileInfo* info)
{
    if(info->num_loop2 <= 0) {
        compile_err_msg(info, "No in the loop");
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }

    BasicBlock* loop_begin_block = (BasicBlock*)info->loop_begin_block[info->num_loop2-1];
    info->num_loop2--;

    free_right_value_objects(info);
    Builder.CreateBr(loop_begin_block);

    BasicBlock* after_continue = BasicBlock::Create(TheContext, "after_continue", gFunction);

    BasicBlock* current_block_before;
    llvm_change_block(after_continue, &current_block_before, info, FALSE);

    info->type = create_node_type_with_class_name("void");

    return TRUE;
}

unsigned int sNodeTree_label_expression(char* name, sParserInfo* info)
{
    unsigned int node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeLabel;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    xstrncpy(gNodes[node].uValue.sLabel.mName, name, PATH_MAX);

    gNodes[node].mLeft = 0;
    gNodes[node].mRight = 0;
    gNodes[node].mMiddle = 0;

    return node;
}

BOOL compile_label_expression(unsigned int node, sCompileInfo* info)
{
    char* label_name = gNodes[node].uValue.sLabel.mName;

    BasicBlock* block = gLabels[label_name];
    
    if(block == nullptr) {
        block = BasicBlock::Create(TheContext, label_name, gFunction);
        gLabels[label_name] = block;
    }

    free_right_value_objects(info);
    Builder.CreateBr(block);

    BasicBlock* current_block_before;
    llvm_change_block(block, &current_block_before, info, FALSE);

    info->type = create_node_type_with_class_name("void");

    return TRUE;
}

unsigned int sNodeTree_goto_expression(char* name, sParserInfo* info)
{
    unsigned int node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeGoto;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    xstrncpy(gNodes[node].uValue.sGoto.mName, name, PATH_MAX);

    gNodes[node].mLeft = 0;
    gNodes[node].mRight = 0;
    gNodes[node].mMiddle = 0;

    return node;
}

BOOL compile_goto_expression(unsigned int node, sCompileInfo* info)
{
    char* label_name = gNodes[node].uValue.sGoto.mName;

    BasicBlock* block = gLabels[label_name];
    
    if(block == nullptr) {
        block = BasicBlock::Create(TheContext, label_name, gFunction);
        gLabels[label_name] = block;
    }

    free_right_value_objects(info);
    Builder.CreateBr(block);

    BasicBlock* block2 = BasicBlock::Create(TheContext, "after goto", gFunction);

    BasicBlock* current_block_before;
    llvm_change_block(block2, &current_block_before, info, FALSE);

    return TRUE;
}

unsigned int sNodeTree_create_is_heap(unsigned int lnode, sParserInfo* info)
{
    unsigned int node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeIsHeap;

    xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);
    gNodes[node].mLine = info->sline;

    gNodes[node].mLeft = lnode;
    gNodes[node].mRight = 0;
    gNodes[node].mMiddle = 0;

    return node;
}

BOOL compile_is_heap(unsigned int node, sCompileInfo* info)
{
    unsigned int lnode = gNodes[node].mLeft;

    if(!compile(lnode, info)) {
        return FALSE;
    }

    sNodeType* node_type = clone_node_type(info->type);

    dec_stack_ptr(1, info);

    BOOL value = node_type->mHeap;

    LVALUE llvm_value;
    llvm_value.value = ConstantInt::get(TheContext, llvm::APInt(1, value, true)); 
    llvm_value.type = create_node_type_with_class_name("bool");
    llvm_value.address = nullptr;
    llvm_value.var = nullptr;

    push_value_to_stack_ptr(&llvm_value, info);

    info->type = create_node_type_with_class_name("bool");

    return TRUE;
}


BOOL compile(unsigned int node, sCompileInfo* info)
{
    if(node == 0) {
        return TRUE;
    }

    switch(gNodes[node].mNodeType) {
        case kNodeTypeFunction:
            if(!compile_function(node, info)) {
                return FALSE;
            }
            break;

        case kNodeTypeExternalFunction:
            if(!compile_external_function(node, info)) {
                return FALSE;
            }
            break;

        case kNodeTypeStruct:
            if(!compile_struct(node, info)) {
                return FALSE;
            }
            break;

        case kNodeTypeIntValue:
            if(!compile_int_value(node, info)) {
                return FALSE;
            }
            break;

        case kNodeTypeAdd:
            if(!compile_add(node, info)) {
                return FALSE;
            }
            break;

        case kNodeTypeSub:
            if(!compile_sub(node, info)) {
                return FALSE;
            }
            break;

        case kNodeTypeMult:
            if(!compile_mult(node, info)) {
                return FALSE;
            }
            break;

        case kNodeTypeDiv:
            if(!compile_div(node, info)) {
                return FALSE;
            }
            break;

        case kNodeTypeMod:
            if(!compile_mod(node, info)) {
                return FALSE;
            }
            break;

        case kNodeTypeEquals:
            if(!compile_equals(node, info)) {
                return FALSE;
            }
            break;

        case kNodeTypeNotEquals:
            if(!compile_not_equals(node, info)) {
                return FALSE;
            }
            break;

        case kNodeTypeCString:
            if(!compile_c_string_value(node, info)) 
            {
                return FALSE;
            }
            break;

        case kNodeTypeStoreVariable:
            if(!compile_store_variable(node, info)) {
                return FALSE;
            }
            break;

        case kNodeTypeDefineVariable:
            if(!compile_define_variable(node, info)) {
                return FALSE;
            }
            break;

        case kNodeTypeFunctionCall:
            if(!compile_function_call(node, info)) {
                return FALSE;
            }
            break;

        case kNodeTypeLoadVariable:
            if(!compile_load_variable(node, info)) {
                return FALSE;
            }
            break;

        case kNodeTypeIf:
            if(!compile_if_expression(node, info)) {
                return FALSE;
            }
            break;

        case kNodeTypeObject:
            if(!compile_object(node, info)) {
                return FALSE;
            }
            break;

        case kNodeTypeStackObject:
            if(!compile_stack_object(node, info)) {
                return FALSE;
            }
            break;

        case kNodeTypeStoreField:
            if(!compile_store_field(node, info)) {
                return FALSE;
            }
            break;

        case kNodeTypeLoadField:
            if(!compile_load_field(node, info)) {
                return FALSE;
            }
            break;

        case kNodeTypeWhile:
            if(!compile_while_expression(node, info)) {
                return FALSE;
            }
            break;

        case kNodeTypeGteq:
            if(!compile_gteq(node, info)) {
                return FALSE;
            }
            break;

        case kNodeTypeLeeq:
            if(!compile_leeq(node, info)) {
                return FALSE;
            }
            break;

        case kNodeTypeGt:
            if(!compile_gt(node, info)) {
                return FALSE;
            }
            break;

        case kNodeTypeLe:
            if(!compile_le(node, info)) {
                return FALSE;
            }
            break;

        case kNodeTypeLogicalDenial:
            if(!compile_logical_denial(node, info))
            {
                return FALSE;
            }
            break;

        case kNodeTypeTrue:
            if(!compile_true(node, info))
            {
                return FALSE;
            }
            break;

        case kNodeTypeFalse:
            if(!compile_false(node, info))
            {
                return FALSE;
            }
            break;

        case kNodeTypeAndAnd:
            if(!compile_and_and(node, info))
            {
                return FALSE;
            }
            break;

        case kNodeTypeOrOr:
            if(!compile_or_or(node, info))
            {
                return FALSE;
            }
            break;

        case kNodeTypeFor:
            if(!compile_for_expression(node, info))
            {
                return FALSE;
            }
            break;

        case kNodeTypeLambdaCall:
            if(!compile_lambda_call(node, info))
            {
                return FALSE;
            }
            break;

        case kNodeTypeSimpleLambdaParam:
            if(!compile_simple_lambda_param(node, info))
            {
                return FALSE;
            }
            break;

        case kNodeTypeDerefference:
            if(!compile_dereffernce(node, info))
            {
                return FALSE;
            }
            break;

        case kNodeTypeRefference:
            if(!compile_reffernce(node, info))
            {
                return FALSE;
            }
            break;

        case kNodeTypeNull:
            if(!compile_null(node, info))
            { 
                return FALSE;
            }
            break;

        case kNodeTypeClone:
            if(!compile_clone(node, info))
            { 
                return FALSE;
            }
            break;

        case kNodeTypeLoadElement:
            if(!compile_load_element(node, info))
            { 
                return FALSE;
            }
            break;

        case kNodeTypeStoreElement:
            if(!compile_store_element(node, info))
            {
                return FALSE;
            }
            break;

        case kNodeTypeChar:
            if(!compile_char_value(node, info)) {
                return FALSE;
            }
            break;

        case kNodeTypeCast:
            if(!compile_cast(node, info)) {
                return FALSE;
            }
            break;

        case kNodeTypeImpl:
            if(!compile_impl(node, info)) {
                return FALSE;
            }
            break;

        case kNodeTypeGenericsFunction:
            if(!compile_generics_function(node, info))
            {
                return FALSE;
            }
            break;

        case kNodeTypeInlineFunction:
            if(!compile_inline_function(node, info))
            {
                return FALSE;
            }
            break;

        case kNodeTypeTypeDef:
            if(!compile_typedef(node, info))
            {
                return FALSE;
            }
            break;

        case kNodeTypeUnion:
            if(!compile_union(node, info))
            {
                return FALSE;
            }
            break;

        case kNodeTypeLeftShift:
            if(!compile_left_shift(node, info)) {
                return FALSE;
            }
            break;

        case kNodeTypeRightShift:
            if(!compile_right_shift(node, info)) {
                return FALSE;
            }
            break;

        case kNodeTypeAnd:
            if(!compile_and(node, info)) {
                return FALSE;
            }
            break;

        case kNodeTypeXor:
            if(!compile_xor(node, info)) {
                return FALSE;
            }
            break;

        case kNodeTypeOr:
            if(!compile_or(node, info)) {
                return FALSE;
            }
            break;

        case kNodeTypeReturn:
            if(!compile_return(node, info)) {
                return FALSE;
            }
            break;
        
        case kNodeTypeSizeOf:
            if(!compile_sizeof(node, info)) {
                return FALSE;
            }
            break;
    
        case kNodeTypeDefineVariables:
            if(!compile_define_variables(node, info)) {
                return FALSE;
            }
            break;

        case kNodeTypeLoadFunction:
            if(!compile_load_function(node, info)) {
                return FALSE;
            }
            break;

        case kNodeTypeArrayWithInitialization:
            if(!compile_array_with_initialization(node, info))
            {
                return FALSE;
            }
            break;

        case kNodeTypeNormalBlock:
            if(!compile_normal_block(node, info)) {
                return FALSE;
            }
            break;

        case kNodeTypeStructWithInitialization:
            if(!compile_struct_with_initialization(node, info))
            {
                return FALSE;
            }
            break;

        case kNodeTypeSwitch:
            if(!compile_switch_expression(node, info))
            {
                return FALSE;
            }
            break;
        
        case kNodeTypeBreak:
            if(!compile_break_expression(node, info))
            {
                return FALSE;
            }
            break;
        
        case kNodeTypeContinue:
            if(!compile_continue_expression(node, info))
            {
                return FALSE;
            }
            break;

        case kNodeTypeDoWhile:
            if(!compile_do_while_expression(node, info))
            {
                return FALSE;
            }
            break;

        case kNodeTypeCase:
            if(!compile_case_expression(node, info))
            {
                return FALSE;
            }
            break;

        case kNodeTypeLabel:
            if(!compile_label_expression(node, info))
            {
                return FALSE;
            }
            break;

        case kNodeTypeGoto:
            if(!compile_goto_expression(node, info))
            {
                return FALSE;
            }
            break;

        case kNodeTypeIsHeap:
            if(!compile_is_heap(node, info))
            {
                return FALSE;
            }
            break;

        case kNodeTypeSizeOfExpression:
            if(!compile_sizeof_expression(node, info))
            {
                return FALSE;
            }
            break;
    }

    return node;
}

