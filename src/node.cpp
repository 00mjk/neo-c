#include "llvm_common.hpp"

std::map<std::string, sFunction> gFuncs;
std::map<Value*, std::pair<sNodeType*, bool>> gHeapObjects;

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

static void add_function(char* name, char* real_fun_name, sNodeType** param_types, int num_params, sNodeType* result_type, int num_method_generics, BOOL c_ffi_function, BOOL var_arg)
{
    sFunction fun;
    xstrncpy(fun.mName, name, VAR_NAME_MAX);
    xstrncpy(fun.mRealName, real_fun_name, REAL_FUN_NAME_MAX);

    fun.mResultType = clone_node_type(result_type);

    fun.mNumParams = num_params;

    int i;
    for(i=0; i<num_params; i++) {
        fun.mParamTypes[i] = clone_node_type(param_types[i]);
    }

    fun.mCFFIFunction = c_ffi_function;

    fun.mVarArg = var_arg;

    fun.mNumMethodGenerics = num_method_generics;

    gFuncs[real_fun_name] = fun;
}

unsigned int sNodeTree_create_int_value(int value, sParserInfo* info)
{
    unsigned node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeIntValue;

    gNodes[node].mSName = info->sname;
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

static BOOL call_function(char* fun_name, Value** params, int num_params, char* struct_name, sCompileInfo* info)
{
    char real_fun_name[REAL_FUN_NAME_MAX];
    create_real_fun_name(real_fun_name, REAL_FUN_NAME_MAX, fun_name, struct_name);

    sFunction fun = gFuncs[real_fun_name];

    if(fun.mResultType == nullptr) {
        return FALSE;
    }

    Function* llvm_fun = TheModule->getFunction(real_fun_name);

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

        info->type = fun.mResultType;
    }
    else {
        LVALUE llvm_value;
        llvm_value.value = Builder.CreateCall(llvm_fun, llvm_params);
        llvm_value.type = fun.mResultType;
        llvm_value.address = nullptr;
        llvm_value.var = nullptr;

        push_value_to_stack_ptr(&llvm_value, info);

        info->type = fun.mResultType;
    }

    return TRUE;
}

unsigned int sNodeTree_create_add(unsigned int left, unsigned int right, unsigned int middle, sParserInfo* info)
{
    unsigned node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeAdd;

    gNodes[node].mSName = info->sname;
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

    if(is_number_type(left_type) && is_number_type(right_type))
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

        Value* params[PARAMS_MAX];

        params[0] = lvalue.value;
        params[1] = rvalue.value;

        char struct_name[VAR_NAME_MAX];
        xstrncpy(struct_name, CLASS_NAME(left_type->mClass), VAR_NAME_MAX);
        xstrncat(struct_name, "_", VAR_NAME_MAX);
        xstrncat(struct_name, CLASS_NAME(right_type->mClass), VAR_NAME_MAX);

        if(!call_function("op_add", params, num_params, struct_name, info))
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

    gNodes[node].mSName = info->sname;
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

    if(is_number_type(left_type) && is_number_type(right_type))
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

        Value* params[PARAMS_MAX];

        params[0] = lvalue.value;
        params[1] = rvalue.value;

        char struct_name[VAR_NAME_MAX];
        xstrncpy(struct_name, CLASS_NAME(left_type->mClass), VAR_NAME_MAX);
        xstrncat(struct_name, "_", VAR_NAME_MAX);
        xstrncat(struct_name, CLASS_NAME(right_type->mClass), VAR_NAME_MAX);

        if(!call_function("op_sub", params, num_params, struct_name, info))
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

unsigned int sNodeTree_create_mult(unsigned int left, unsigned int right, unsigned int middle, sParserInfo* info)
{
    unsigned node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeMult;

    gNodes[node].mSName = info->sname;
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

        Value* params[PARAMS_MAX];

        params[0] = lvalue.value;
        params[1] = rvalue.value;

        char struct_name[VAR_NAME_MAX];
        xstrncpy(struct_name, CLASS_NAME(left_type->mClass), VAR_NAME_MAX);
        xstrncat(struct_name, "_", VAR_NAME_MAX);
        xstrncat(struct_name, CLASS_NAME(right_type->mClass), VAR_NAME_MAX);

        if(!call_function("op_mult", params, num_params, struct_name, info))
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

unsigned int sNodeTree_create_div(unsigned int left, unsigned int right, unsigned int middle, sParserInfo* info)
{
    unsigned node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeDiv;

    gNodes[node].mSName = info->sname;
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

        Value* params[PARAMS_MAX];

        params[0] = lvalue.value;
        params[1] = rvalue.value;

        char struct_name[VAR_NAME_MAX];
        xstrncpy(struct_name, CLASS_NAME(left_type->mClass), VAR_NAME_MAX);
        xstrncat(struct_name, "_", VAR_NAME_MAX);
        xstrncat(struct_name, CLASS_NAME(right_type->mClass), VAR_NAME_MAX);

        if(!call_function("op_div", params, num_params, struct_name, info))
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

unsigned int sNodeTree_create_mod(unsigned int left, unsigned int right, unsigned int middle, sParserInfo* info)
{
    unsigned node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeMod;

    gNodes[node].mSName = info->sname;
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

        Value* params[PARAMS_MAX];

        params[0] = lvalue.value;
        params[1] = rvalue.value;

        char struct_name[VAR_NAME_MAX];
        xstrncpy(struct_name, CLASS_NAME(left_type->mClass), VAR_NAME_MAX);
        xstrncat(struct_name, "_", VAR_NAME_MAX);
        xstrncat(struct_name, CLASS_NAME(right_type->mClass), VAR_NAME_MAX);

        if(!call_function("op_mod", params, num_params, struct_name, info))
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

unsigned int sNodeTree_create_equals(unsigned int left, unsigned int right, unsigned int middle, sParserInfo* info)
{
    unsigned node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeEquals;

    gNodes[node].mSName = info->sname;
    gNodes[node].mLine = info->sline;

    gNodes[node].mLeft = left;
    gNodes[node].mRight = right;
    gNodes[node].mMiddle = middle;

    return node;
}

static BOOL compile_equals(unsigned int node, sCompileInfo* info)
{
//    IRBuilder<> builder(&gFunction->getEntryBlock());

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

    if(cast_posibility(left_type, right_type)) {
        cast_right_type_to_left_type(left_type, &right_type, &rvalue, info);
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

    gNodes[node].mSName = info->sname;
    gNodes[node].mLine = info->sline;

    gNodes[node].mLeft = left;
    gNodes[node].mRight = right;
    gNodes[node].mMiddle = middle;

    return node;
}

static BOOL compile_not_equals(unsigned int node, sCompileInfo* info)
{
//    IRBuilder<> builder(&gFunction->getEntryBlock());

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

    if(cast_posibility(left_type, right_type)) {
        cast_right_type_to_left_type(left_type, &right_type, &rvalue, info);
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

    gNodes[node].mSName = info->sname;
    gNodes[node].mLine = info->sline;

    gNodes[node].mLeft = left;
    gNodes[node].mRight = right;
    gNodes[node].mMiddle = middle;

    return node;
}

static BOOL compile_gteq(unsigned int node, sCompileInfo* info)
{
//    IRBuilder<> builder(&gFunction->getEntryBlock());

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

    gNodes[node].mSName = info->sname;
    gNodes[node].mLine = info->sline;

    gNodes[node].mLeft = left;
    gNodes[node].mRight = right;
    gNodes[node].mMiddle = middle;

    return node;
}

static BOOL compile_leeq(unsigned int node, sCompileInfo* info)
{
//    IRBuilder<> builder(&gFunction->getEntryBlock());

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

    gNodes[node].mSName = info->sname;
    gNodes[node].mLine = info->sline;

    gNodes[node].mLeft = left;
    gNodes[node].mRight = right;
    gNodes[node].mMiddle = middle;

    return node;
}

static BOOL compile_gt(unsigned int node, sCompileInfo* info)
{
//    IRBuilder<> builder(&gFunction->getEntryBlock());

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

    gNodes[node].mSName = info->sname;
    gNodes[node].mLine = info->sline;

    gNodes[node].mLeft = left;
    gNodes[node].mRight = right;
    gNodes[node].mMiddle = middle;

    return node;
}

static BOOL compile_le(unsigned int node, sCompileInfo* info)
{
//    IRBuilder<> builder(&gFunction->getEntryBlock());

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

    gNodes[node].mSName = info->sname;
    gNodes[node].mLine = info->sline;

    gNodes[node].mLeft = left;
    gNodes[node].mRight = right;
    gNodes[node].mMiddle = middle;

    return node;
}

static BOOL compile_logical_denial(unsigned int node, sCompileInfo* info)
{
//    IRBuilder<> builder(&gFunction->getEntryBlock());

    int left_node = gNodes[node].mLeft;
    if(!compile(left_node, info)) {
        return FALSE;
    }
    sNodeType* left_type = info->type;

    LVALUE lvalue = *get_value_from_stack(-1);

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

unsigned int sNodeTree_create_store_variable(char* var_name, int right, BOOL alloc, sParserInfo* info)
{
    unsigned node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeStoreVariable;

    gNodes[node].mSName = info->sname;
    gNodes[node].mLine = info->sline;

    xstrncpy(gNodes[node].uValue.sStoreVariable.mVarName, var_name, VAR_NAME_MAX);
    gNodes[node].uValue.sStoreVariable.mAlloc = alloc;

    gNodes[node].mLeft = 0;
    gNodes[node].mRight = right;
    gNodes[node].mMiddle = 0;

    return node;
}


static BOOL compile_store_variable(unsigned int node, sCompileInfo* info)
{
//    IRBuilder<> builder(&gFunction->getEntryBlock());

    char* var_name = gNodes[node].uValue.sStoreVariable.mVarName;
    BOOL alloc = gNodes[node].uValue.sStoreVariable.mAlloc;

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

    sNodeType* right_type = info->type;

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

    if(cast_posibility(left_type, right_type)) {
        cast_right_type_to_left_type(left_type, &right_type, &rvalue, info);
    }

    if(!substitution_posibility(left_type, right_type)) 
    {
        compile_err_msg(info, "The different type between left type and right type.");
        show_node_type(left_type);
        show_node_type(right_type);
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }

    Type* llvm_var_type = create_llvm_type_from_node_type(left_type);
    int alignment = get_llvm_alignment_from_node_type(left_type);

    if(alloc) {
        Value* address = Builder.CreateAlloca(llvm_var_type, 0, var_name);
        var->mLLVMValue = address;

        BOOL parent = FALSE;
        int index = get_variable_index(info->pinfo->lv_table, var_name, &parent);
        store_address_to_lvtable(index, address);
    }
    else {
        if(var->mReadOnly) {
            compile_err_msg(info, "Varible(%s) is readonly variable", var->mName);
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }
    }

    BOOL parent = FALSE;
    int index = get_variable_index(info->pinfo->lv_table, var_name, &parent);

    sNodeType* var_type = left_type;

    Value* var_address;
    if(parent) {
        var_address = load_address_to_lvtable(index, var_type);
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

    Builder.CreateAlignedStore(rvalue2, var_address, alignment);

    std_move(var->mType, &rvalue);

    info->type = left_type;

    return TRUE;
}

unsigned int sNodeTree_create_c_string_value(MANAGED char* value, int len, sParserInfo* info)
{
    unsigned int node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeCString;

    gNodes[node].mSName = info->sname;
    gNodes[node].mLine = info->sline;

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


unsigned int sNodeTree_create_external_function(char* fun_name, sParserParam* params, int num_params, BOOL var_arg, sNodeType* result_type, int num_method_generics, sParserInfo* info)
{
    unsigned int node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeExternalFunction;

    gNodes[node].mSName = info->sname;
    gNodes[node].mLine = info->sline;

    gNodes[node].mLeft = 0;
    gNodes[node].mRight = 0;
    gNodes[node].mMiddle = 0;

    xstrncpy(gNodes[node].uValue.sFunction.mName, fun_name, VAR_NAME_MAX);

    int i;
    for(i=0; i<num_params; i++) {
        gNodes[node].uValue.sFunction.mParams[i] = params[i]; // copy struct
    }

    gNodes[node].uValue.sFunction.mNumParams = num_params;
    gNodes[node].uValue.sFunction.mResultType = result_type;
    gNodes[node].uValue.sFunction.mVarArg = var_arg;
    gNodes[node].uValue.sFunction.mNumMethodGenerics = num_method_generics;

    return node;
}


static BOOL compile_external_function(unsigned int node, sCompileInfo* info)
{
    /// rename variables ///
    char* func_name = gNodes[node].uValue.sFunction.mName;
    int num_params = gNodes[node].uValue.sFunction.mNumParams;
    sParserParam* params[PARAMS_MAX];
    int i;
    for(i=0; i<num_params; i++) {
        params[i] = gNodes[node].uValue.sFunction.mParams + i;
    }

    sNodeType* result_type = gNodes[node].uValue.sFunction.mResultType;
    BOOL var_arg = gNodes[node].uValue.sFunction.mVarArg;
    int num_method_generics = gNodes[node].uValue.sFunction.mNumMethodGenerics;

    /// go ///
    Type* llvm_result_type = create_llvm_type_from_node_type(result_type);

    std::vector<Type *> llvm_param_types;
    sNodeType* param_types[PARAMS_MAX];

    for(i=0; i<num_params; i++) {
        sNodeType* param_type = params[i]->mType;

        Type* llvm_param_type = create_llvm_type_from_node_type(param_type);
        llvm_param_types.push_back(llvm_param_type);

        param_types[i] = param_type;
    }

    FunctionType* function_type = FunctionType::get(llvm_result_type, llvm_param_types, var_arg);
    Function::Create(function_type, Function::ExternalLinkage, func_name, TheModule);

    add_function(func_name, func_name, param_types, num_params, result_type, num_method_generics, TRUE, var_arg);

    return TRUE;
}

static BOOL parse_simple_lambda_param(unsigned int* node, char* buf, sFunction* fun, sParserInfo* info)
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

        param->mType = lambda_type->mParamTypes[i];
    }

    sParserInfo info2;

    memset(&info2, 0, sizeof(sParserInfo));

    info2.p = buf;
    info2.sname = info->sname;
    info2.source = buf;
    info2.module_name = info->module_name;
    info2.sline = info->sline;
    info2.parse_phase = info->parse_phase;
    info2.lv_table = info->lv_table;

    sNodeType* result_type = lambda_type->mResultType;

    sNodeBlock* node_block = ALLOC sNodeBlock_alloc();
    expect_next_character_with_one_forward("{", &info2);
    sVarTable* old_table = info2.lv_table;

    info2.lv_table = init_block_vtable(old_table);
    sVarTable* block_var_table = info2.lv_table;
    for(i=0; i<num_params; i++) {
        sParserParam* param = params + i;

        BOOL readonly = FALSE;
        if(!add_variable_to_table(info2.lv_table, param->mName, param->mType, readonly, NULL))
        {
            return FALSE;
        }
    }

    if(!parse_block(node_block, &info2)) {
        sNodeBlock_free(node_block);
        return FALSE;
    }

    expect_next_character_with_one_forward("}", &info2);
    info2.lv_table = old_table;

    char func_name[VAR_NAME_MAX];
    create_lambda_name(func_name, VAR_NAME_MAX, info2.module_name);

    BOOL lambda = TRUE;
    *node = sNodeTree_create_function(func_name, params, num_params, result_type, MANAGED node_block, lambda, block_var_table, 0, NULL, &info2);

    return TRUE;
}

unsigned int sNodeTree_create_function_call(char* func_name, unsigned int* params, int num_params, BOOL method, sParserInfo* info)
{
    unsigned int node = alloc_node();

    xstrncpy(gNodes[node].uValue.sFunctionCall.mName, func_name, VAR_NAME_MAX);
    gNodes[node].uValue.sFunctionCall.mNumParams = num_params;

    int i;
    for(i=0; i<num_params; i++) {
        gNodes[node].uValue.sFunctionCall.mParams[i] = params[i];
    }

    gNodes[node].uValue.sFunctionCall.mMethod = method;
    
    gNodes[node].mNodeType = kNodeTypeFunctionCall;

    gNodes[node].mSName = info->sname;
    gNodes[node].mLine = info->sline;

    gNodes[node].mLeft = 0;
    gNodes[node].mRight = 0;
    gNodes[node].mMiddle = 0;

    return node;
}

BOOL compile_function_call(unsigned int node, sCompileInfo* info)
{
    /// rename variables ///
    char* func_name = gNodes[node].uValue.sFunctionCall.mName;
    int num_params = gNodes[node].uValue.sFunctionCall.mNumParams;
    unsigned int params[PARAMS_MAX];
    BOOL method = gNodes[node].uValue.sFunctionCall.mMethod;

    /// go ///
    sNodeType* param_types[PARAMS_MAX];
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

    /// compile parametors ///
    sNodeType* generics_type = NULL;

    int i;
    for(i=0; i<num_params2; i++) {
        params[i] = gNodes[node].uValue.sFunctionCall.mParams[i];
        
        if(!compile(params[i], info)) {
            return FALSE;
        }

        param_types[i] = info->type;

        if(i == 0) {
            generics_type = info->type;
        }
    }

    char real_fun_name[REAL_FUN_NAME_MAX];

    if(num_params2 > 0) {
        if(method) {
            char* struct_name = CLASS_NAME(param_types[0]->mClass);

            create_real_fun_name(real_fun_name, REAL_FUN_NAME_MAX, func_name, struct_name);
        }
        else {
            create_real_fun_name(real_fun_name, REAL_FUN_NAME_MAX, func_name, "");
        }
    }
    else {
        create_real_fun_name(real_fun_name, REAL_FUN_NAME_MAX, func_name, "");
    }

    /// get function ///
    sFunction fun = gFuncs[real_fun_name];

    if(fun.mResultType == nullptr) {
        compile_err_msg(info, "function not found %s\n", real_fun_name);
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }

    /// check parametors ///
    BOOL invalid_parametor = TRUE;

    sNodeType* method_generics_types[GENERICS_TYPES_MAX];

    if(fun.mNumParams == num_params || (fun.mVarArg && num_params >= fun.mNumParams)) 
    {
        memset(method_generics_types, 0, sizeof(sNodeType*)*GENERICS_TYPES_MAX);

        int check_param_num;
        if(fun.mVarArg) {
            check_param_num = fun.mNumParams;
        }
        else {
            check_param_num = num_params2;
        }

        BOOL found = TRUE;
        int i;
        for(i=0; i<check_param_num; i++) {
            sNodeType* left_type = clone_node_type(fun.mParamTypes[i]);
            sNodeType* right_type = param_types[i];

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

            if(!substitution_posibility(left_type, right_type))
            {
                if(!cast_posibility(left_type, right_type)) 
                {
                    found = FALSE;
                }
            }
        }

        if(found) {
            if(simple_lambda_param) {
                if(fun.mParamTypes[num_params2]->mClass == get_class("lambda")) 
                {
                    invalid_parametor = FALSE;
                }
            }
            else {
                invalid_parametor = FALSE;
            }
        }
    }

    if(invalid_parametor) {
        compile_err_msg(info, "function parametor type error\n", real_fun_name);
        info->err_num++;

        int i;
        for(i=0; i<num_params2; i++) {
            printf("param #%d\n", i);
            show_node_type(param_types[i]);
        }

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }

    /// convert param type ///
    std::vector<Value*> llvm_params;
    LVALUE* lvalue_params[PARAMS_MAX];

    for(i=0; i<num_params2; i++) {
        if(i < fun.mNumParams) {
            sNodeType* left_type = clone_node_type(fun.mParamTypes[i]);
            sNodeType* right_type = clone_node_type(param_types[i]);
            LVALUE param = *get_value_from_stack(-num_params2+i);

            std_move(left_type, &param);

            lvalue_params[i] = &param;

            if(cast_posibility(left_type, right_type)) 
            {
                cast_right_type_to_left_type(left_type, &right_type, &param, info);
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

                cast_right_type_to_left_type(left_type, &right_type, &rvalue, info);

                param.value = rvalue.value;
            }

            llvm_params.push_back(param.value);
        }
        else {
            LVALUE param = *get_value_from_stack(-num_params2+i);
            llvm_params.push_back(param.value);
        }
    }

    /// compile simple lambda param ///
    if(simple_lambda_param) {
        params[num_params2] = gNodes[node].uValue.sFunctionCall.mParams[num_params2];

        char* buf = gNodes[params[num_params2]].uValue.sSimpleLambdaParam.mBuf;

        unsigned int node = 0;
        if(!parse_simple_lambda_param(&node, buf, &fun, info->pinfo))
        {
            return FALSE;
        }

        if(!compile(node, info)) {
            return FALSE;
        }

        LVALUE param = *get_value_from_stack(-1);

        llvm_params.push_back(param.value);
    }

    dec_stack_ptr(num_params, info);

    if(type_identify_with_class_name(fun.mResultType, "void"))
    {
        Function* llvm_fun = TheModule->getFunction(real_fun_name);

        Builder.CreateCall(llvm_fun, llvm_params);

        info->type = fun.mResultType;
    }
    else if(fun.mResultType->mClass->mFlags & CLASS_FLAGS_METHOD_GENERICS)
    {
        Function* llvm_fun = TheModule->getFunction(real_fun_name);

        sNodeType* result_type = clone_node_type(method_generics_types[fun.mResultType->mClass->mMethodGenericsNum]);

        if((result_type->mClass->mFlags & CLASS_FLAGS_METHOD_GENERICS) || (result_type->mClass->mFlags & CLASS_FLAGS_GENERICS))
        {
            compile_err_msg(info, "Not solve generics of result type");
            info->err_num++;

            info->type = create_node_type_with_class_name("int"); // dummy

            return TRUE;
        }

        sNodeType* right_type = create_node_type_with_class_name("long");

        LVALUE llvm_value;
        llvm_value.value = Builder.CreateCall(llvm_fun, llvm_params);
        llvm_value.type = right_type;
        llvm_value.address = nullptr;
        llvm_value.var = nullptr;

        cast_right_type_to_left_type(result_type, &right_type, &llvm_value, info);

        push_value_to_stack_ptr(&llvm_value, info);

        info->type = llvm_value.type;
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

                return TRUE;
            }
        }

        generics_type = info->type;
        Function* llvm_fun = TheModule->getFunction(real_fun_name);

        LVALUE llvm_value;
        llvm_value.value = Builder.CreateCall(llvm_fun, llvm_params);
        llvm_value.type = result_type;
        llvm_value.address = nullptr;
        llvm_value.var = nullptr;

        push_value_to_stack_ptr(&llvm_value, info);

        info->type = result_type;
    }

    return TRUE;
}

unsigned int sNodeTree_create_function(char* fun_name, sParserParam* params, int num_params, sNodeType* result_type, MANAGED struct sNodeBlockStruct* node_block, BOOL lambda, sVarTable* block_var_table, int num_method_generics, char* struct_name, sParserInfo* info)
{
    unsigned int node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeFunction;

    gNodes[node].mSName = info->sname;
    gNodes[node].mLine = info->sline;

    gNodes[node].mLeft = 0;
    gNodes[node].mRight = 0;
    gNodes[node].mMiddle = 0;

    xstrncpy(gNodes[node].uValue.sFunction.mName, fun_name, VAR_NAME_MAX);

    int i;
    for(i=0; i<num_params; i++) {
        gNodes[node].uValue.sFunction.mParams[i] = params[i]; // copy struct
    }

    gNodes[node].uValue.sFunction.mNumParams = num_params;
    gNodes[node].uValue.sFunction.mResultType = result_type;
    gNodes[node].uValue.sFunction.mNodeBlock = MANAGED node_block;
    gNodes[node].uValue.sFunction.mLambda = lambda;
    gNodes[node].uValue.sFunction.mVarTable = block_var_table;
    gNodes[node].uValue.sFunction.mNumMethodGenerics = num_method_generics;

    if(struct_name) {
        xstrncpy(gNodes[node].uValue.sFunction.mStructName, struct_name, VAR_NAME_MAX);
    }
    else {
        xstrncpy(gNodes[node].uValue.sFunction.mStructName, "", VAR_NAME_MAX);
    }

    return node;
}

BOOL compile_function(unsigned int node, sCompileInfo* info)
{
    /// rename variables ///
    char* func_name = gNodes[node].uValue.sFunction.mName;
    int num_params = gNodes[node].uValue.sFunction.mNumParams;
    sParserParam* params[PARAMS_MAX];
    BOOL lambda = gNodes[node].uValue.sFunction.mLambda;
    sVarTable* block_var_table = gNodes[node].uValue.sFunction.mVarTable;

    int i;
    for(i=0; i<num_params; i++) {
        params[i] = gNodes[node].uValue.sFunction.mParams + i;
    }

    sNodeType* result_type = gNodes[node].uValue.sFunction.mResultType;

    sNodeBlock* node_block = gNodes[node].uValue.sFunction.mNodeBlock;
    int num_method_generics = gNodes[node].uValue.sFunction.mNumMethodGenerics;
    char* struct_name = gNodes[node].uValue.sFunction.mStructName;

    /// go ///
    std::vector<Type *> llvm_param_types;
    sNodeType* param_types[PARAMS_MAX];

    Type* llvm_result_type = create_llvm_type_from_node_type(result_type);

    for(i=0; i<num_params; i++) {
        sNodeType* param_type = params[i]->mType;

        Type* llvm_param_type = create_llvm_type_from_node_type(param_type);
        llvm_param_types.push_back(llvm_param_type);

        param_types[i] = param_type;
    }

    char real_fun_name[REAL_FUN_NAME_MAX];
    create_real_fun_name(real_fun_name, REAL_FUN_NAME_MAX, func_name, struct_name);

    add_function(func_name, real_fun_name, param_types, num_params, result_type, num_method_generics, FALSE, FALSE);

    FunctionType* function_type = FunctionType::get(llvm_result_type, llvm_param_types, false);
    Function* fun = Function::Create(function_type, Function::ExternalLinkage, real_fun_name, TheModule);

    int n = 0;
    std::vector<Value *> llvm_params;
    for(auto &llvm_param : fun->args()) {
        sParserParam* param = params[n];
        char* var_name = param->mName;

        llvm_params.push_back(&llvm_param);
        llvm_param.setName(var_name);
        
        n++;
    }

    Function* function_before = gFunction;
    gFunction = fun;

    BasicBlock* current_block_before;
    BasicBlock* current_block = BasicBlock::Create(TheContext, "entry", fun);
    llvm_change_block(current_block, &current_block_before, info);

    for(i=0; i<num_params; i++) {
        sParserParam* param = params[i];
        char* var_name = param->mName;

        sVar* var = get_variable_from_table(node_block->mLVTable, (char*)var_name);

        sNodeType* var_type = var->mType;

        Type* llvm_type = create_llvm_type_from_node_type(var_type);

        int alignment = get_llvm_alignment_from_node_type(var_type);

        Value* address = Builder.CreateAlloca(llvm_type, 0, var_name);
        var->mLLVMValue = address;

        BOOL parent = FALSE;
        int index = get_variable_index(block_var_table, var_name, &parent);

        store_address_to_lvtable(index, address);

        Builder.CreateAlignedStore(llvm_params[i], address, alignment);
    }

    char func_name_before[VAR_NAME_MAX];
    xstrncpy(func_name_before, info->func_name, VAR_NAME_MAX);

    xstrncpy(info->func_name, func_name, VAR_NAME_MAX);

    if(!compile_block(node_block, info, result_type))
    {
        xstrncpy(info->func_name, func_name_before, VAR_NAME_MAX);
        return FALSE;
    }

//    IRBuilder<> builder(&gFunction->getEntryBlock());

    xstrncpy(info->func_name, func_name_before, VAR_NAME_MAX);

    // Finish off the function.
    if(type_identify_with_class_name(result_type, "void"))
    {
        Value* ret_value = nullptr;

        Builder.CreateRet(ret_value);
    }
    else {
        LVALUE ret_value = *get_value_from_stack(-1);

        Builder.CreateRet(ret_value.value);
    }

    verifyFunction(*fun);

    // Run the optimizer on the function.
    //TheFPM->run(*fun, TheFAM);
    
    sNodeType* lambda_type = create_node_type_with_class_name("lambda");

    for(i=0; i<num_params; i++) {
        sNodeType* param_type = param_types[i];

        lambda_type->mParamTypes[i] = param_type;
    }

    lambda_type->mResultType = result_type;
    lambda_type->mNumParams = num_params;

    LVALUE llvm_value;
    llvm_value.value = fun;
    llvm_value.type = lambda_type;
    llvm_value.address = nullptr;
    llvm_value.var = nullptr;

    push_value_to_stack_ptr(&llvm_value, info);

    info->type = lambda_type;

    gFunction = function_before;

    BasicBlock* current_block_before2;
    llvm_change_block(current_block_before, &current_block_before2, info);

    return TRUE;
}

unsigned int sNodeTree_create_load_variable(char* var_name, sParserInfo* info)
{
    unsigned node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeLoadVariable;

    gNodes[node].mSName = info->sname;
    gNodes[node].mLine = info->sline;

    xstrncpy(gNodes[node].uValue.sLoadVariable.mVarName, var_name, VAR_NAME_MAX);

    gNodes[node].mLeft = 0;
    gNodes[node].mRight = 0;
    gNodes[node].mMiddle = 0;

    return node;
}


static BOOL compile_load_variable(unsigned int node, sCompileInfo* info)
{
    char* var_name = gNodes[node].uValue.sLoadVariable.mVarName;

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
    if(parent) {
        var_address = load_address_to_lvtable(index, var_type);
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

    int alignment = get_llvm_alignment_from_node_type(var_type);

    LVALUE llvm_value;
    llvm_value.value = Builder.CreateAlignedLoad(var_address, alignment, var_name);
    llvm_value.type = var_type;
    llvm_value.address = var_address;
    llvm_value.var = var;

    push_value_to_stack_ptr(&llvm_value, info);

    sNodeType* result_type = var_type;

    info->type = result_type;

    return TRUE;
}

unsigned int sNodeTree_if_expression(unsigned int expression_node, MANAGED struct sNodeBlockStruct* if_node_block, unsigned int* elif_expression_nodes, MANAGED struct sNodeBlockStruct** elif_node_blocks, int elif_num, MANAGED struct sNodeBlockStruct* else_node_block, sParserInfo* info, char* sname, int sline)
{
    unsigned node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeIf;

    gNodes[node].mSName = sname;
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

    if(!type_identify_with_class_name(info->type, "bool")) {
        compile_err_msg(info, "This conditional type is not bool");
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }

    LVALUE conditional_value = *get_value_from_stack(-1);
    dec_stack_ptr(1, info);

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
        Builder.CreateCondBr(conditional_value.value, cond_then_block, cond_elif_block[0]);
    }
    else if(else_node_block) {
        Builder.CreateCondBr(conditional_value.value, cond_then_block, cond_else_block);
    }
    else {
        Builder.CreateCondBr(conditional_value.value, cond_then_block, cond_end_block);
    }

    BasicBlock* current_block_before;
    llvm_change_block(cond_then_block, &current_block_before, info);

    sNodeBlock* if_block = gNodes[node].uValue.sIf.mIfNodeBlock;
    sNodeType* result_type = create_node_type_with_class_name("any");

    if(!compile_block(if_block, info, result_type)) {
        return FALSE;
    }

    Value* result_value;
    int result_value_alignment;
    sNodeType* result_value_type = info->type;

    if(type_identify_with_class_name(info->type, "void"))
    {
        result_value = nullptr;
        result_value_alignment = 0;
    }
    else {
        LVALUE llvm_value = *get_value_from_stack(-1);

        Type* llvm_result_type = create_llvm_type_from_node_type(result_value_type);

        IRBuilder<> builder(&gFunction->getEntryBlock(), gFunction->getEntryBlock().begin());

        result_value = builder.CreateAlloca(llvm_result_type, 0, "if_result_value");

        result_value_alignment = get_llvm_alignment_from_node_type(info->type);

        Builder.CreateAlignedStore(llvm_value.value, result_value, result_value_alignment);
    }

    Builder.CreateBr(cond_end_block);

    //// elif ///
    if(elif_num > 0) {
        int i;
        for(i=0; i<elif_num; i++) {
            BasicBlock* current_block_before;
            llvm_change_block(cond_elif_block[i], &current_block_before, info);

            unsigned int expression_node = gNodes[node].uValue.sIf.mElifExpressionNodes[i];

            if(!compile(expression_node, info)) {
                return FALSE;
            }

            if(!type_identify_with_class_name(info->type, "bool")) 
            {
                compile_err_msg(info, "This conditional type is not bool");
                info->err_num++;

                info->type = create_node_type_with_class_name("int"); // dummy

                return TRUE;
            }

            LVALUE conditional_value = *get_value_from_stack(-1);
            dec_stack_ptr(1, info);

            if(i == elif_num-1) {
                if(else_node_block) {
                    Builder.CreateCondBr(conditional_value.value, cond_elif_then_block[i], cond_else_block);
                }
                else {
                    Builder.CreateCondBr(conditional_value.value, cond_elif_then_block[i], cond_end_block);
                }
            }
            else {
                Builder.CreateCondBr(conditional_value.value, cond_elif_then_block[i], cond_elif_block[i+1]);
            }

            BasicBlock* current_block_before2;
            llvm_change_block(cond_elif_then_block[i], &current_block_before2, info);

            sNodeBlock* elif_node_block = gNodes[node].uValue.sIf.mElifNodeBlocks[i];

            sNodeType* result_type = create_node_type_with_class_name("any");
            if(!compile_block(elif_node_block, info, result_type)) 
            {
                return FALSE;
            }

            if(result_value) {
                if(!type_identify(info->type, result_value_type))
                {
                    compile_err_msg(info, "Different result type for if/else block. If you avoid this and don't need result value for if expression, append ; at the end of block");
                    info->err_num++;

                    info->type = create_node_type_with_class_name("int"); // dummy

                    return TRUE;
                }

                LVALUE llvm_value = *get_value_from_stack(-1);

                Builder.CreateAlignedStore(llvm_value.value, result_value, result_value_alignment);
            }

            Builder.CreateBr(cond_end_block);
        }
    }

    if(else_node_block) {
        BasicBlock* current_block_before;
        llvm_change_block(cond_else_block, &current_block_before, info);

        sNodeType* result_type = create_node_type_with_class_name("any");
        if(!compile_block(else_node_block, info, result_type)) 
        {
            return FALSE;
        }

        if(result_value) {
            if(!type_identify(info->type, result_value_type))
            {
                compile_err_msg(info, "Different result type for if/else block. If you avoid this and don't need result value for if expression, append ; at the end of block");
                info->err_num++;

                info->type = create_node_type_with_class_name("int"); // dummy

                return TRUE;
            }

            LVALUE llvm_value = *get_value_from_stack(-1);

            Builder.CreateAlignedStore(llvm_value.value, result_value, result_value_alignment);
        }

        Builder.CreateBr(cond_end_block);
    }

    BasicBlock* current_block_before2;
    llvm_change_block(cond_end_block, &current_block_before2, info);

    if(result_value) {
        LVALUE llvm_value;
        llvm_value.value = Builder.CreateAlignedLoad(result_value, result_value_alignment);
        llvm_value.type = result_value_type;
        llvm_value.address = nullptr;
        llvm_value.var = nullptr;

        info->type = result_value_type;

        dec_stack_ptr(1, info);
        push_value_to_stack_ptr(&llvm_value, info);
    }
    else {
        info->type = create_node_type_with_class_name("void");
    }

    return TRUE;
}

unsigned int sNodeTree_struct(sNodeType* struct_type, sParserInfo* info, char* sname, int sline)
{
    unsigned node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeStruct;

    gNodes[node].mSName = sname;
    gNodes[node].mLine = sline;

    gNodes[node].uValue.sStruct.mType = struct_type;

    gNodes[node].mLeft = 0;
    gNodes[node].mRight = 0;
    gNodes[node].mMiddle = 0;

    Type* llvm_struct_type = create_llvm_type_from_node_type(struct_type);

    return node;
}

static BOOL compile_struct(unsigned int node, sCompileInfo* info)
{
    sNodeType* struct_type = gNodes[node].uValue.sStruct.mType;

    return TRUE;
}

unsigned int sNodeTree_create_object(sNodeType* node_type, unsigned int object_num, char* sname, int sline)
{
    unsigned node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeObject;

    gNodes[node].mSName = sname;
    gNodes[node].mLine = sline;

    gNodes[node].uValue.sObject.mType = node_type;

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

    unsigned int left_node = gNodes[node].mLeft;

    Value* object_num;
    if(left_node == 0) {
        object_num = ConstantInt::get(Type::getInt32Ty(TheContext), (uint32_t)1);
        node_type2->mPointerNum++;
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

        node_type2->mPointerNum++;
    }

    /// calloc ///
    uint64_t size = get_size_from_node_type(node_type);

    Function* fun = TheModule->getFunction("xcalloc");

    std::vector<Value*> params2;

    Value* param = object_num;
    params2.push_back(param);

    Value* param2 = ConstantInt::get(Type::getInt64Ty(TheContext), (uint64_t)size);
    params2.push_back(param2);

    Value* address = Builder.CreateCall(fun, params2);

    Type* llvm_type = create_llvm_type_from_node_type(node_type2);

    address = Builder.CreateCast(Instruction::BitCast, address, llvm_type);

    /// result ///
    LVALUE llvm_value;
    llvm_value.value = address;
    llvm_value.type = node_type2;
    llvm_value.address = nullptr;
    llvm_value.var = nullptr;

    push_value_to_stack_ptr(&llvm_value, info);

    std::pair<sNodeType*, bool> pair_value;
    pair_value.first = node_type2;
    pair_value.second = true;

    gHeapObjects[address] = pair_value;

    info->type = clone_node_type(node_type2);

    return TRUE;
}

unsigned int sNodeTree_create_struct_object(sNodeType* node_type, char* sname, int sline)
{
    unsigned node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeStructObject;

    gNodes[node].mSName = sname;
    gNodes[node].mLine = sline;

    gNodes[node].uValue.sObject.mType = node_type;

    gNodes[node].mLeft = 0;
    gNodes[node].mRight = 0;
    gNodes[node].mMiddle = 0;

    return node;
}

static BOOL compile_struct_object(unsigned int node, sCompileInfo* info)
{
    sNodeType* node_type = gNodes[node].uValue.sObject.mType;

    Type* llvm_var_type = create_llvm_type_from_node_type(node_type);

    node_type->mPointerNum = 1;
    node_type->mHeap = FALSE;

    LVALUE llvm_value;
    llvm_value.value = Builder.CreateAlloca(llvm_var_type, 0, "object");
    llvm_value.type = clone_node_type(node_type);
    llvm_value.address = nullptr;
    llvm_value.var = nullptr;

    push_value_to_stack_ptr(&llvm_value, info);

    info->type = node_type;

    return TRUE;
}

unsigned int sNodeTree_create_store_field(char* var_name, unsigned int left_node, unsigned int right_node, sParserInfo* info)
{
    unsigned int node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeStoreField;

    gNodes[node].mSName = info->sname;
    gNodes[node].mLine = info->sline;

    xstrncpy(gNodes[node].uValue.sStoreField.mVarName, var_name, VAR_NAME_MAX);

    gNodes[node].mLeft = left_node;
    gNodes[node].mRight = right_node;
    gNodes[node].mMiddle = 0;

    return node;
}

static BOOL compile_store_field(unsigned int node, sCompileInfo* info)
{
//    IRBuilder<> builder(&gFunction->getEntryBlock());

    char* var_name = gNodes[node].uValue.sStoreField.mVarName;

    /// compile left node ///
    unsigned int lnode = gNodes[node].mLeft;

    if(!compile(lnode, info)) {
        return FALSE;
    }

    sNodeType* left_type = info->type;

    LVALUE lvalue = *get_value_from_stack(-1);

    /// compile right node ///
    unsigned int rnode = gNodes[node].mRight;

    if(!compile(rnode, info)) {
        return FALSE;
    }

    sNodeType* right_type = info->type;

    LVALUE rvalue = *get_value_from_stack(-1);

    int field_index = get_field_index(left_type->mClass, var_name);

    if(field_index == -1) {
        compile_err_msg(info, "The field(%s) is not found", var_name);
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }

    sNodeType* field_type = clone_node_type(left_type->mClass->mFields[field_index]);

    if(!solve_generics(&field_type, left_type)) {
        compile_err_msg(info, "Can't solve generics types");
        show_node_type(field_type);
        show_node_type(left_type);
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }

    if(cast_posibility(field_type, right_type)) {
        cast_right_type_to_left_type(field_type, &right_type, &rvalue, info);
    }

    if(!substitution_posibility(field_type, right_type)) {
        compile_err_msg(info, "The different type between left type and right type.");
        show_node_type(field_type);
        show_node_type(right_type);
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }

    Value* field_address;
    if(left_type->mPointerNum == 0) {
#if LLVM_VERSION_MAJOR >= 7
        field_address = Builder.CreateStructGEP(lvalue.address, field_index);
#else
        field_address = Builder.CreateStructGEP(llvm_field_type, lvalue.address, field_index);
#endif
    }
    else {
#if LLVM_VERSION_MAJOR >= 7
        field_address = Builder.CreateStructGEP(lvalue.value, field_index);
#else
        field_address = Builder.CreateStructGEP(llvm_field_type, lvalue.value, field_index);
#endif
    }

    Type* llvm_field_type = create_llvm_type_from_node_type(field_type);

    int alignment = get_llvm_alignment_from_node_type(field_type);

    Value* rvalue2 = Builder.CreateCast(Instruction::BitCast, rvalue.value, llvm_field_type);

    Value* field_address2 = Builder.CreateCast(Instruction::BitCast, field_address, PointerType::get(llvm_field_type, 0));

    Builder.CreateAlignedStore(rvalue2, field_address2, alignment);

    info->type = right_type;

    std_move(field_type, &rvalue);

    dec_stack_ptr(2, info);
    push_value_to_stack_ptr(&rvalue, info);

    return TRUE;
}

unsigned int sNodeTree_create_load_field(char* name, unsigned int left_node, sParserInfo* info)
{
    unsigned int node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeLoadField;

    gNodes[node].mSName = info->sname;
    gNodes[node].mLine = info->sline;

    xstrncpy(gNodes[node].uValue.sLoadField.mVarName, name, VAR_NAME_MAX);

    gNodes[node].mLeft = left_node;
    gNodes[node].mRight = 0;
    gNodes[node].mMiddle = 0;

    return node;
}

static BOOL compile_load_field(unsigned int node, sCompileInfo* info)
{
//    IRBuilder<> builder(&gFunction->getEntryBlock());

    char* var_name = gNodes[node].uValue.sLoadField.mVarName;

    /// compile left node ///
    unsigned int lnode = gNodes[node].mLeft;

    if(!compile(lnode, info)) {
        return FALSE;
    }

    sNodeType* left_type = info->type;

    if(!(left_type->mClass->mFlags & CLASS_FLAGS_STRUCT)) {
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

    int field_index = get_field_index(left_type->mClass, var_name);

    if(field_index == -1) {
        compile_err_msg(info, "The field(%s) is not found", var_name);
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }

    sNodeType* field_type = clone_node_type(left_type->mClass->mFields[field_index]);

    if(!solve_generics(&field_type, left_type)) {
        compile_err_msg(info, "Can't solve generics types");
        show_node_type(field_type);
        show_node_type(left_type);
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }

    Type* llvm_field_type = create_llvm_type_from_node_type(field_type);

    int alignment = get_llvm_alignment_from_node_type(field_type);

    LVALUE lvalue = *get_value_from_stack(-1);

    Value* field_address;
    if(left_type->mPointerNum == 0) {
#if LLVM_VERSION_MAJOR >= 7
        field_address = Builder.CreateStructGEP(lvalue.address, field_index);
#else
        field_address = Builder.CreateStructGEP(llvm_field_type, lvalue.address, field_index);
#endif
    }
    else {
#if LLVM_VERSION_MAJOR >= 7
        field_address = Builder.CreateStructGEP(lvalue.value, field_index);
#else
        field_address = Builder.CreateStructGEP(llvm_field_type, lvalue.value, field_index);
#endif
    }

    Value* field_address2 = Builder.CreateCast(Instruction::BitCast, field_address, PointerType::get(llvm_field_type, 0));

    LVALUE llvm_value;
    llvm_value.value = Builder.CreateAlignedLoad(field_address2, alignment);
    llvm_value.type = field_type;
    llvm_value.address = field_address;
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

    gNodes[node].mSName = info->sname;
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
//    IRBuilder<> builder(&gFunction->getEntryBlock());
    sNodeBlock* while_node_block = gNodes[node].uValue.sWhile.mWhileNodeBlock;

    BasicBlock* loop_top_block = BasicBlock::Create(TheContext, "loop_top_block", gFunction);

    Builder.CreateBr(loop_top_block);

    BasicBlock* current_block_before;
    llvm_change_block(loop_top_block, &current_block_before, info);

    /// compile expression ///
    unsigned int expression_node = gNodes[node].uValue.sWhile.mExpressionNode;

    if(!compile(expression_node, info)) {
        return FALSE;
    }

    if(!type_identify_with_class_name(info->type, "bool")) {
        compile_err_msg(info, "This conditional type is not bool");
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }

    LVALUE conditional_value = *get_value_from_stack(-1);
    dec_stack_ptr(1, info);

    BasicBlock* cond_then_block = BasicBlock::Create(TheContext, "cond_then_block", gFunction);

    BasicBlock* cond_end_block = BasicBlock::Create(TheContext, "cond_end_block", gFunction);

    Builder.CreateCondBr(conditional_value.value, cond_then_block, cond_end_block);

    BasicBlock* current_block_before2;
    llvm_change_block(cond_then_block, &current_block_before2, info);

    sNodeType* result_type = create_node_type_with_class_name("void");
    if(!compile_block(while_node_block, info, result_type)) {
        return FALSE;
    }

    Builder.CreateBr(loop_top_block);

    BasicBlock* current_block_before3;
    llvm_change_block(cond_end_block, &current_block_before3, info);

    return TRUE;
}

unsigned int sNodeTree_create_true(sParserInfo* info)
{
    unsigned node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeTrue;

    gNodes[node].mSName = info->sname;
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

    gNodes[node].mSName = info->sname;
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

    gNodes[node].mSName = info->sname;
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

    gNodes[node].mSName = info->sname;
    gNodes[node].mLine = info->sline;

    gNodes[node].mLeft = left_node;
    gNodes[node].mRight = right_node;
    gNodes[node].mMiddle = 0;

    return node;
}

static BOOL compile_and_and(unsigned int node, sCompileInfo* info)
{
//    IRBuilder<> builder(&gFunction->getEntryBlock());

    Value* result_var = Builder.CreateAlloca(IntegerType::get(TheContext, 1), 0, "andand_result_var");

    /// compile expression ///
    unsigned int left_node = gNodes[node].mLeft;

    if(!compile(left_node, info)) {
        return FALSE;
    }

    sNodeType* left_type = info->type;

    if(!type_identify_with_class_name(left_type, "bool")) {
        compile_err_msg(info, "Left expression is not bool type");
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }

    LVALUE conditional_value = *get_value_from_stack(-1);
    Builder.CreateAlignedStore(conditional_value.value, result_var, 1);

    BasicBlock* cond_then_block = BasicBlock::Create(TheContext, "cond_jump_then", gFunction);

    BasicBlock* cond_end_block = BasicBlock::Create(TheContext, "cond_jump_end", gFunction);;

    Builder.CreateCondBr(conditional_value.value, cond_then_block, cond_end_block);

    BasicBlock* current_block_before;
    llvm_change_block(cond_then_block, &current_block_before, info);

    /// compile right expression ///
    unsigned int right_node = gNodes[node].mRight;

    if(!compile(right_node, info)) {
        return FALSE;
    }

    sNodeType* right_type = info->type;

    if(!type_identify_with_class_name(right_type, "bool")) {
        compile_err_msg(info, "Right expression is not bool type");
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }

    LVALUE conditional_value2 = *get_value_from_stack(-1);

    Value* andand_value = Builder.CreateAnd(conditional_value.value, conditional_value2.value, "andand");

    Builder.CreateAlignedStore(andand_value, result_var, 1);

    Builder.CreateBr(cond_end_block);

    BasicBlock* current_block_before2;
    llvm_change_block(cond_end_block, &current_block_before2, info);

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

    gNodes[node].mSName = info->sname;
    gNodes[node].mLine = info->sline;

    gNodes[node].mLeft = left_node;
    gNodes[node].mRight = right_node;
    gNodes[node].mMiddle = 0;

    return node;
}

static BOOL compile_or_or(unsigned int node, sCompileInfo* info)
{
//    IRBuilder<> builder(&gFunction->getEntryBlock(), gFunction->getEntryBlock().begin());

    Value* result_var = Builder.CreateAlloca(IntegerType::get(TheContext, 1), 0, "oror_result_var");

    /// compile expression ///
    unsigned int left_node = gNodes[node].mLeft;

    if(!compile(left_node, info)) {
        return FALSE;
    }

    sNodeType* left_type = info->type;

    if(!type_identify_with_class_name(left_type, "bool")) {
        compile_err_msg(info, "Left expression is not bool type");
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }

    LVALUE conditional_value = *get_value_from_stack(-1);
    Builder.CreateAlignedStore(conditional_value.value, result_var, 1);

    BasicBlock* cond_then_block = BasicBlock::Create(TheContext, "cond_jump_then", gFunction);

    BasicBlock* cond_end_block = BasicBlock::Create(TheContext, "cond_jump_end", gFunction);;

    Builder.CreateCondBr(conditional_value.value, cond_end_block, cond_then_block);

    BasicBlock* current_block_before;
    llvm_change_block(cond_then_block, &current_block_before, info);

    /// compile right expression ///
    unsigned int right_node = gNodes[node].mRight;

    if(!compile(right_node, info)) {
        return FALSE;
    }

    sNodeType* right_type = info->type;

    if(!type_identify_with_class_name(right_type, "bool")) {
        compile_err_msg(info, "Right expression is not bool type");
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }

    LVALUE conditional_value2 = *get_value_from_stack(-1);

    Value* oror_value = Builder.CreateOr(conditional_value.value, conditional_value2.value, "oror");

    Builder.CreateAlignedStore(oror_value, result_var, 1);

    Builder.CreateBr(cond_end_block);

    BasicBlock* current_block_before2;
    llvm_change_block(cond_end_block, &current_block_before2, info);

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

    gNodes[node].mSName = info->sname;
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

    Builder.CreateBr(loop_top_block);

    BasicBlock* current_block_before;
    llvm_change_block(loop_top_block, &current_block_before, info);

    unsigned int expression_node2 = gNodes[node].uValue.sFor.mExpressionNode2;

    if(!compile(expression_node2, info)) {
        info->pinfo->lv_table = lv_table_before;
        return FALSE;
    }

    if(!type_identify_with_class_name(info->type, "bool")) {
        compile_err_msg(info, "This conditional type is not bool");
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        info->pinfo->lv_table = lv_table_before;
        return TRUE;
    }

    LVALUE conditional_value = *get_value_from_stack(-1);
    dec_stack_ptr(1, info);

    BasicBlock* cond_then_block = BasicBlock::Create(TheContext, "cond_then_block", gFunction);

    BasicBlock* cond_end_block = BasicBlock::Create(TheContext, "cond_end_block", gFunction);

    Builder.CreateCondBr(conditional_value.value, cond_then_block, cond_end_block);

    BasicBlock* current_block_before2;
    llvm_change_block(cond_then_block, &current_block_before2, info);

    /// block of for expression ///
    sNodeType* result_type = create_node_type_with_class_name("void");
    if(!compile_block(for_block, info, result_type)) 
    {
        info->pinfo->lv_table = lv_table_before;
        return FALSE;
    }

    /// expression 3 ///
    unsigned int expression_node3 = gNodes[node].uValue.sFor.mExpressionNode3;

    if(!compile(expression_node3, info)) {
        info->pinfo->lv_table = lv_table_before;
        return FALSE;
    }

    Builder.CreateBr(loop_top_block);

    BasicBlock* current_block_before3;
    llvm_change_block(cond_end_block, &current_block_before3, info);

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

    gNodes[node].mSName = info->sname;
    gNodes[node].mLine = info->sline;

    gNodes[node].mLeft = lambda_node;
    gNodes[node].mRight = 0;
    gNodes[node].mMiddle = 0;

    return node;
}

BOOL compile_lambda_call(unsigned int node, sCompileInfo* info)
{
//    IRBuilder<> builder(&gFunction->getEntryBlock());

    /// rename variables ///
    int num_params = gNodes[node].uValue.sFunctionCall.mNumParams;
    unsigned int params[PARAMS_MAX];

    unsigned int lambda_node = gNodes[node].mLeft;

    /// go ///
    if(!compile(lambda_node, info)) {
        return FALSE;
    }

    sNodeType* lambda_type = info->type;

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

        if(cast_posibility(left_type, right_type)) 
        {
            cast_right_type_to_left_type(left_type, &right_type, param, info);
        }

        llvm_params.push_back(param->value);
    }

    /// lvar table ///
    Type* lvar_table_type = ArrayType::get(PointerType::get(IntegerType::get(TheContext, 8), 0), LOCAL_VARIABLE_MAX);

    Value* lvar_table_value = Builder.CreateAlloca(lvar_table_type, 0, "lvar_table_array");
    llvm_params.push_back(lvar_table_value);


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

unsigned int sNodeTree_create_simple_lambda_param(char* buf, sParserInfo* info)
{
    unsigned int node = alloc_node();

    gNodes[node].uValue.sSimpleLambdaParam.mBuf = MANAGED buf;
    
    gNodes[node].mNodeType = kNodeTypeSimpleLambdaParam;

    gNodes[node].mSName = info->sname;
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

    gNodes[node].mSName = info->sname;
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

    gNodes[node].mSName = info->sname;
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

    gNodes[node].mSName = info->sname;
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

    gNodes[node].mSName = info->sname;
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

    cast_right_type_to_left_type(int_type, &middle_type, &rvalue, info);

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
    int element_size = get_size_from_node_type(var_type);

    Value* lvalue2 = lvalue.value;

    Value* element_size_value = ConstantInt::get(TheContext, llvm::APInt(32, element_size, true)); 

    Value* rvalue2 = Builder.CreateMul(rvalue.value, element_size_value, "multmp", false, true);

    Value* load_element_addresss = Builder.CreateGEP(lvalue2, rvalue2, "element_address");

    int alignment = get_llvm_alignment_from_node_type(var_type);

    Value* element_value = Builder.CreateAlignedLoad(load_element_addresss, alignment, "element");

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

    gNodes[node].mSName = info->sname;
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

    cast_right_type_to_left_type(int_type, &middle_type, &llvm_value, info);

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

    if(cast_posibility(var_type, right_type)) {
        cast_right_type_to_left_type(var_type, &right_type, &rvalue, info);
    }

    if(!substitution_posibility(var_type, right_type)) 
    {
        compile_err_msg(info, "The different type between left type and right type");
        show_node_type(var_type);
        show_node_type(right_type);
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }

    /// generate code ///
    int element_size = get_size_from_node_type(var_type);

    Value* lvalue2 = lvalue.value;

    Value* element_size_value = ConstantInt::get(TheContext, llvm::APInt(32, element_size, true)); 

    Value* rvalue2 = Builder.CreateMul(mvalue.value, element_size_value, "multmp", false, true);

    Value* element_address = Builder.CreateGEP(lvalue2, rvalue2, "element_address");

    int alignment = get_llvm_alignment_from_node_type(var_type);

    Builder.CreateAlignedStore(rvalue.value, element_address, alignment);

    dec_stack_ptr(3, info);
    push_value_to_stack_ptr(&rvalue, info);

    info->type = clone_node_type(right_type);

    return TRUE;
}

unsigned int sNodeTree_create_character_value(char c, sParserInfo* info)
{
    unsigned int node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeChar;

    gNodes[node].mSName = info->sname;
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

    gNodes[node].mSName = info->sname;
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
        cast_right_type_to_left_type(right_type, &left_type, &lvalue, info);
    }

    push_value_to_stack_ptr(&lvalue, info);

    info->type = clone_node_type(lvalue.type);

    return TRUE;
}

unsigned int sNodeTree_create_impl(unsigned int* nodes, int num_nodes, sParserInfo* info)
{
    unsigned int node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeImpl;

    gNodes[node].mSName = info->sname;
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

        case kNodeTypeStructObject:
            if(!compile_struct_object(node, info)) {
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

    }

    return node;
}

