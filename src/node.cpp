#include "llvm_common.hpp"

sNodeTree* gNodes;

static int gSizeNodes = 0;
int gUsedNodes = 0;

std::map<std::string, sFunction> gFuncs;

void init_nodes()
{
    const int node_size = 32;

    if(gUsedNodes == 0) {
        gNodes = (sNodeTree*)xcalloc(1, sizeof(sNodeTree)*node_size);
        gSizeNodes = node_size;
        gUsedNodes = 1;   // 0 of index means null
    }
}

void free_nodes()
{
    if(gUsedNodes > 0) {
        int i;
        for(i=1; i<gUsedNodes; i++) {
            switch(gNodes[i].mNodeType) {
                case kNodeTypeCString:
                    free(gNodes[i].uValue.sString.mString);
                    break;

                case kNodeTypeFunction:
                    sNodeBlock_free(gNodes[i].uValue.sFunction.mNodeBlock);
                    break;

                case kNodeTypeIf:
                    {
                    if(gNodes[i].uValue.sIf.mIfNodeBlock) {
                        sNodeBlock_free(gNodes[i].uValue.sIf.mIfNodeBlock);
                    }
                    int j;
                    for(j=0; j<gNodes[i].uValue.sIf.mElifNum; j++) {
                        sNodeBlock* node_block = gNodes[i].uValue.sIf.mElifNodeBlocks[j];
                        if(node_block) {
                            sNodeBlock_free(node_block);
                        }
                    }
                    if(gNodes[i].uValue.sIf.mElseNodeBlock) {
                        sNodeBlock_free(gNodes[i].uValue.sIf.mElseNodeBlock);
                    }
                    }
                    break;

                case kNodeTypeWhile:
                    {
                    if(gNodes[i].uValue.sWhile.mWhileNodeBlock) {
                        sNodeBlock_free(gNodes[i].uValue.sWhile.mWhileNodeBlock);
                    }
                    }
                    break;

                case kNodeTypeFor:
                    if(gNodes[i].uValue.sFor.mForNodeBlock) 
                    {
                        sNodeBlock_free(gNodes[i].uValue.sFor.mForNodeBlock);
                    }
                    break;

                case kNodeTypeSimpleLambdaParam:
                    if(gNodes[i].uValue.sSimpleLambdaParam.mBuf) 
                    {
                        free(gNodes[i].uValue.sSimpleLambdaParam.mBuf);
                    }
                    break;

                default:
                    break;
            }
        }

        free(gNodes);

        gSizeNodes = 0;
        gUsedNodes = 0;
    }
}

// return node index
static unsigned int alloc_node()
{
    if(gSizeNodes == gUsedNodes) {
        int new_size = (gSizeNodes+1) * 2;
        gNodes = (sNodeTree*)xrealloc(gNodes, sizeof(sNodeTree)*new_size);
        memset(gNodes + gSizeNodes, 0, sizeof(sNodeTree)*(new_size - gSizeNodes));

        gSizeNodes = new_size;
    }

    return gUsedNodes++;
}

static unsigned int clone_node(unsigned int node)
{
    unsigned int result = alloc_node();

    memcpy(gNodes + result, gNodes + node, sizeof(sNodeTree));

    switch(gNodes[node].mNodeType) {
        default:
            break;
    }

    return result;
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

static void compile_err_msg(sCompileInfo* info, const char* msg, ...)
{
    char msg2[1024];

    va_list args;
    va_start(args, msg);
    vsnprintf(msg2, 1024, msg, args);
    va_end(args);

    fprintf(stderr, "%s:%d: %s\n", info->sname, info->sline, msg2);
}

static void add_function(char* name, char* real_fun_name, sNodeType** param_types, int num_params, sNodeType* result_type, BOOL c_ffi_function)
{
    sFunction fun;
    xstrncpy(fun.mName, name, VAR_NAME_MAX);
    xstrncpy(fun.mRealName, real_fun_name, REAL_FUN_NAME_MAX);

    fun.mResultType = result_type;

    fun.mNumParams = num_params;

    int i;
    for(i=0; i<num_params; i++) {
        fun.mParamTypes[i] = param_types[i];
    }

    fun.mCFFIFunction = c_ffi_function;

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

    push_value_to_stack_ptr(&llvm_value, info);

    info->type = create_node_type_with_class_name("int");

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
//    IRBuilder<> builder(&gFunction->getEntryBlock());

    int left_node = gNodes[node].mLeft;
    if(!compile(left_node, info)) {
        return FALSE;
    }
    sNodeType* left_type = info->type;

    int right_node = gNodes[node].mRight;
    if(!compile(right_node, info)) {
        return FALSE;
    }

    sNodeType* right_type = info->type;

    LVALUE* lvalue = get_value_from_stack(-2);
    LVALUE* rvalue = get_value_from_stack(-1);

    LVALUE llvm_value;
    llvm_value.value = Builder.CreateAdd(lvalue->value, rvalue->value, "addttmp", false, true);
    llvm_value.type = create_node_type_with_class_name("int");
    llvm_value.address = nullptr;

    dec_stack_ptr(2, info);
    push_value_to_stack_ptr(&llvm_value, info);

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
//    IRBuilder<> builder(&gFunction->getEntryBlock());

    int left_node = gNodes[node].mLeft;
    if(!compile(left_node, info)) {
        return FALSE;
    }
    sNodeType* left_type = info->type;

    int right_node = gNodes[node].mRight;
    if(!compile(right_node, info)) {
        return FALSE;
    }

    sNodeType* right_type = info->type;

    LVALUE* lvalue = get_value_from_stack(-2);
    LVALUE* rvalue = get_value_from_stack(-1);

    LVALUE llvm_value;
    llvm_value.value = Builder.CreateSub(lvalue->value, rvalue->value, "addttmp", false, true);
    llvm_value.type = create_node_type_with_class_name("int");
    llvm_value.address = nullptr;

    dec_stack_ptr(2, info);
    push_value_to_stack_ptr(&llvm_value, info);

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

    int right_node = gNodes[node].mRight;
    if(!compile(right_node, info)) {
        return FALSE;
    }

    sNodeType* right_type = info->type;

    LVALUE* lvalue = get_value_from_stack(-2);
    LVALUE* rvalue = get_value_from_stack(-1);

    LVALUE llvm_value;
    llvm_value.value = Builder.CreateICmpEQ(lvalue->value, rvalue->value, "eqtmp");
    llvm_value.type = create_node_type_with_class_name("bool");
    llvm_value.address = nullptr;

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

    int right_node = gNodes[node].mRight;
    if(!compile(right_node, info)) {
        return FALSE;
    }

    sNodeType* right_type = info->type;

    LVALUE* lvalue = get_value_from_stack(-2);
    LVALUE* rvalue = get_value_from_stack(-1);

    LVALUE llvm_value;
    llvm_value.value = Builder.CreateICmpNE(lvalue->value, rvalue->value, "noteqtmp");
    llvm_value.type = create_node_type_with_class_name("bool");
    llvm_value.address = nullptr;

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

    int right_node = gNodes[node].mRight;
    if(!compile(right_node, info)) {
        return FALSE;
    }

    sNodeType* right_type = info->type;

    LVALUE* lvalue = get_value_from_stack(-2);
    LVALUE* rvalue = get_value_from_stack(-1);

    LVALUE llvm_value;
    llvm_value.value = Builder.CreateICmpSGE(lvalue->value, rvalue->value, "getmp");
    llvm_value.type = create_node_type_with_class_name("bool");
    llvm_value.address = nullptr;

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

    int right_node = gNodes[node].mRight;
    if(!compile(right_node, info)) {
        return FALSE;
    }

    sNodeType* right_type = info->type;

    LVALUE* lvalue = get_value_from_stack(-2);
    LVALUE* rvalue = get_value_from_stack(-1);

    LVALUE llvm_value;
    llvm_value.value = Builder.CreateICmpSLE(lvalue->value, rvalue->value, "letmp");
    llvm_value.type = create_node_type_with_class_name("bool");
    llvm_value.address = nullptr;

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

    int right_node = gNodes[node].mRight;
    if(!compile(right_node, info)) {
        return FALSE;
    }

    sNodeType* right_type = info->type;

    LVALUE* lvalue = get_value_from_stack(-2);
    LVALUE* rvalue = get_value_from_stack(-1);

    LVALUE llvm_value;
    llvm_value.value = Builder.CreateICmpSGT(lvalue->value, rvalue->value, "gttmp");
    llvm_value.type = create_node_type_with_class_name("bool");
    llvm_value.address = nullptr;

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

    int right_node = gNodes[node].mRight;
    if(!compile(right_node, info)) {
        return FALSE;
    }

    sNodeType* right_type = info->type;

    LVALUE* lvalue = get_value_from_stack(-2);
    LVALUE* rvalue = get_value_from_stack(-1);

    LVALUE llvm_value;
    llvm_value.value = Builder.CreateICmpSLT(lvalue->value, rvalue->value, "letmp");
    llvm_value.type = create_node_type_with_class_name("bool");
    llvm_value.address = nullptr;

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

    LVALUE* lvalue = get_value_from_stack(-1);

    LVALUE rvalue;
    rvalue.value = ConstantInt::get(Type::getInt1Ty(TheContext), 0);
    rvalue.type = nullptr;
    rvalue.address = nullptr;

    LVALUE llvm_value;
    llvm_value.value = Builder.CreateICmpEQ(lvalue->value, rvalue.value, "LOGICAL_DIANEAL");
    llvm_value.type = create_node_type_with_class_name("bool");
    llvm_value.address = nullptr;

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

    if(type_identify_with_class_name(right_type, "void"))
    {
        compile_err_msg(info, "Right value is void");
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }

    /// type inference ///
    sNodeType* left_type = NULL;
    if(var->mType == NULL) {
        left_type = right_type;
        var->mType = right_type;
    }
    else {
        left_type = var->mType;
    }

    LVALUE* rvalue = get_value_from_stack(-1);

    if(cast_posibility(left_type, right_type)) {
        cast_right_type_to_left_type(left_type, &right_type, rvalue, info);
    }

    if(!substitution_posibility(left_type, right_type)) {
        compile_err_msg(info, "The different type between left type and right type. Left type is %s. Right type is %s.", CLASS_NAME(left_type->mClass), CLASS_NAME(right_type->mClass));
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

    BOOL parent = FALSE;
    int index = get_variable_index(info->pinfo->lv_table, var_name, &parent);

    if(parent) {
        store_value_to_lvtable(rvalue->value, index, left_type);
    }
    else {
        Builder.CreateAlignedStore(rvalue->value, (Value*)var->mLLVMValue, alignment);
    }

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

    push_value_to_stack_ptr(&llvm_value, info);

    info->type = create_node_type_with_class_name("char*");

    return TRUE;
}

unsigned int sNodeTree_create_external_function(char* fun_name, sParserParam* params, int num_params, sNodeType* result_type, sParserInfo* info)
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

    return node;
}

static void create_real_fun_name(char* real_fun_name, size_t size_real_fun_name, char* fun_name, int num_params, sNodeType** param_types)
{
    xstrncpy(real_fun_name, fun_name, size_real_fun_name);

    if(num_params > 0) {
        xstrncat(real_fun_name, "_", size_real_fun_name);
    }

    int i;
    for(i=0; i<num_params; i++) {
        sNodeType* param_type = param_types[i];

        xstrncat(real_fun_name, CLASS_NAME(param_type->mClass), size_real_fun_name);
        int j;
        for(j=0; j<param_type->mPointerNum; j++) {
            xstrncat(real_fun_name, "p", size_real_fun_name);
        }

        if(i != num_params-1) {
            xstrncat(real_fun_name, "_", size_real_fun_name);
        }
    }
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

    FunctionType* function_type = FunctionType::get(llvm_result_type, llvm_param_types, false);
    Function::Create(function_type, Function::ExternalLinkage, func_name, TheModule);

    add_function(func_name, func_name, param_types, num_params, result_type, TRUE);

    return TRUE;
}

unsigned int sNodeTree_create_function_call(char* func_name, unsigned int* params, int num_params, sParserInfo* info)
{
    unsigned int node = alloc_node();

    xstrncpy(gNodes[node].uValue.sFunctionCall.mName, func_name, VAR_NAME_MAX);
    gNodes[node].uValue.sFunctionCall.mNumParams = num_params;

    int i;
    for(i=0; i<num_params; i++) {
        gNodes[node].uValue.sFunctionCall.mParams[i] = params[i];
    }
    
    gNodes[node].mNodeType = kNodeTypeFunctionCall;

    gNodes[node].mSName = info->sname;
    gNodes[node].mLine = info->sline;

    gNodes[node].mLeft = 0;
    gNodes[node].mRight = 0;
    gNodes[node].mMiddle = 0;

    return node;
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
    for(i=0; i<num_params; i++) {
        sParserParam* param = params + i;

        BOOL readonly = TRUE;
        BOOL param_var = TRUE;
        if(!add_variable_to_table(info2.lv_table, param->mName, param->mType, readonly, param_var))
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

    static int num_lambda = 0;
    char func_name[VAR_NAME_MAX];
    create_lambda_name(func_name, VAR_NAME_MAX, info2.module_name, num_lambda);
    num_lambda++;

    BOOL lambda = TRUE;
    *node = sNodeTree_create_function(func_name, params, num_params, result_type, MANAGED node_block, lambda, &info2);

    return TRUE;
}

BOOL compile_function_call(unsigned int node, sCompileInfo* info)
{
    /// rename variables ///
    char* func_name = gNodes[node].uValue.sFunctionCall.mName;
    int num_params = gNodes[node].uValue.sFunctionCall.mNumParams;
    unsigned int params[PARAMS_MAX];

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

    int i;
    for(i=0; i<num_params2; i++) {
        params[i] = gNodes[node].uValue.sFunctionCall.mParams[i];
        
        if(!compile(params[i], info)) {
            return FALSE;
        }

        param_types[i] = info->type;
    }

    /// get function ///
    char* real_fun_name = NULL;

    for(std::pair<std::string, sFunction> it: gFuncs) {
        sFunction fun = it.second;

        if(strcmp(fun.mName, func_name) == 0) {
            if(fun.mNumParams == num_params) {
                BOOL found = TRUE;
                int i;
                for(i=0; i<num_params2; i++) {
                    sNodeType* left_type = fun.mParamTypes[i];
                    sNodeType* right_type = param_types[i];

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
                            real_fun_name = fun.mRealName;
                        }
                    }
                    else {
                        real_fun_name = fun.mRealName;
                    }
                    break;
                }
            }
        }
    }

    if(real_fun_name == NULL) {
        compile_err_msg(info, "function not found %s or parametor type error\n", func_name);
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }

    sFunction fun = gFuncs[real_fun_name];

    /// convert param type ///
    std::vector<Value*> llvm_params;
    LVALUE* lvalue_params[PARAMS_MAX];

    for(i=0; i<num_params2; i++) {
        sNodeType* left_type = fun.mParamTypes[i];
        sNodeType* right_type = param_types[i];

        LVALUE* param = get_value_from_stack(-num_params2+i);

        lvalue_params[i] = param;

        if(cast_posibility(left_type, right_type)) 
        {
            cast_right_type_to_left_type(left_type, &right_type, param, info);
        }

        llvm_params.push_back(param->value);
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

        LVALUE* param = get_value_from_stack(-1);

        llvm_params.push_back(param->value);
    }

    dec_stack_ptr(num_params, info);

    if(type_identify_with_class_name(fun.mResultType, "void"))
    {
        Function* llvm_fun = TheModule->getFunction(real_fun_name);

        Builder.CreateCall(llvm_fun, llvm_params);

        info->type = fun.mResultType;
    }
    else {
        Function* llvm_fun = TheModule->getFunction(real_fun_name);

        LVALUE llvm_value;
        llvm_value.value = Builder.CreateCall(llvm_fun, llvm_params);
        llvm_value.type = fun.mResultType;
        llvm_value.address = nullptr;

        push_value_to_stack_ptr(&llvm_value, info);

        info->type = fun.mResultType;
    }

    return TRUE;
}

unsigned int sNodeTree_create_function(char* fun_name, sParserParam* params, int num_params, sNodeType* result_type, MANAGED struct sNodeBlockStruct* node_block, BOOL lambda, sParserInfo* info)
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

    return node;
}

BOOL compile_function(unsigned int node, sCompileInfo* info)
{
    /// rename variables ///
    char* func_name = gNodes[node].uValue.sFunction.mName;
    int num_params = gNodes[node].uValue.sFunction.mNumParams;
    sParserParam* params[PARAMS_MAX];
    BOOL lambda = gNodes[node].uValue.sFunction.mLambda;

    int i;
    for(i=0; i<num_params; i++) {
        params[i] = gNodes[node].uValue.sFunction.mParams + i;
    }

    sNodeType* result_type = gNodes[node].uValue.sFunction.mResultType;

    sNodeBlock* node_block = gNodes[node].uValue.sFunction.mNodeBlock;

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
    create_real_fun_name(real_fun_name, REAL_FUN_NAME_MAX, func_name, num_params, param_types);

    add_function(func_name, real_fun_name, param_types, num_params, result_type, FALSE);

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

    BasicBlock* current_block_before = (BasicBlock*)info->current_block;
    Function* function_before = gFunction;
    gFunction = fun;

    info->current_block = BasicBlock::Create(TheContext, "entry", fun);
    Builder.SetInsertPoint((BasicBlock*)info->current_block);

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
        int index = get_variable_index(info->pinfo->lv_table, var_name, &parent);
        store_address_to_lvtable(index, address);

        Builder.CreateAlignedStore(llvm_params[i], (Value*)var->mLLVMValue, alignment);
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
        LVALUE* ret_value = get_value_from_stack(-1);

        Builder.CreateRet(ret_value->value);
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

    push_value_to_stack_ptr(&llvm_value, info);

    info->type = lambda_type;

    gFunction = function_before;

    info->current_block = current_block_before;

    Builder.SetInsertPoint((BasicBlock*)info->current_block);

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
//    IRBuilder<> builder(&gFunction->getEntryBlock());

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

    BOOL param = var->mParam;

/*
    if(param) {
        LVALUE llvm_value;
        llvm_value.value = (Value*)var->mLLVMValue;
        llvm_value.type = var_type;
        llvm_value.address = nullptr;

        push_value_to_stack_ptr(&llvm_value, info);
    }
    else {
*/
        BOOL parent = FALSE;
        int index = get_variable_index(info->pinfo->lv_table, var_name, &parent);

        if(parent) {
            LVALUE llvm_value;
            Value* address = nullptr;
            llvm_value.value = load_address_to_lvtable(index, var_type, &address);
            llvm_value.type = var_type;
            llvm_value.address = address;

            push_value_to_stack_ptr(&llvm_value, info);
        }
        else {
            int align = get_llvm_alignment_from_node_type(var_type);

            Value* var_address = (Value*)var->mLLVMValue;

            LVALUE llvm_value;
            llvm_value.value = Builder.CreateAlignedLoad(var_address, align, var_name);
            llvm_value.type = var_type;
            llvm_value.address = var_address;

            push_value_to_stack_ptr(&llvm_value, info);
        }
    //}

    sNodeType* result_type = var->mType;

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

#define LABEL_NAME_MAX 512

static void create_label_name(char* fun_name, char* prefix, char* result, size_t result_size, int num, int num2)
{
    xstrncpy(result, fun_name, result_size);
    xstrncat(result, prefix, result_size);

    int n = num;
    while(1) {
        if(n > 'z' - 'a') {
            xstrncat(result, "z", result_size);
            n -= 'z' - 'a';
        }
        else {
            char str[2];
            str[0] = n + 'a';
            str[1] = 0;
            xstrncat(result, str, result_size);
            break;
        }
    }

    char buf[128];
    snprintf(buf, 128, "%da", num2);

    xstrncat(result, buf, result_size);
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

    LVALUE* conditional_value = get_value_from_stack(-1);
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
        Builder.CreateCondBr(conditional_value->value, cond_then_block, cond_elif_block[0]);
    }
    else if(else_node_block) {
        Builder.CreateCondBr(conditional_value->value, cond_then_block, cond_else_block);
    }
    else {
        Builder.CreateCondBr(conditional_value->value, cond_then_block, cond_end_block);
    }

    Builder.SetInsertPoint(cond_then_block);
    info->current_block = cond_then_block;

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
            Builder.SetInsertPoint(cond_elif_block[i]);
            info->current_block = cond_elif_block[i];

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

            LVALUE* conditional_value = get_value_from_stack(-1);
            dec_stack_ptr(1, info);

            if(i == elif_num-1) {
                if(else_node_block) {
                    Builder.CreateCondBr(conditional_value->value, cond_elif_then_block[i], cond_else_block);
                }
                else {
                    Builder.CreateCondBr(conditional_value->value, cond_elif_then_block[i], cond_end_block);
                }
            }
            else {
                Builder.CreateCondBr(conditional_value->value, cond_elif_then_block[i], cond_elif_block[i+1]);
            }

            Builder.SetInsertPoint(cond_elif_then_block[i]);
            info->current_block = cond_elif_then_block[i];
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
        Builder.SetInsertPoint(cond_else_block);
        info->current_block = cond_else_block;

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

    Builder.SetInsertPoint(cond_end_block);
    info->current_block = cond_end_block;

    if(result_value) {
        LVALUE llvm_value;
        llvm_value.value = Builder.CreateAlignedLoad(result_value, result_value_alignment);
        llvm_value.type = result_value_type;
        llvm_value.address = nullptr;

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

    return node;
}

static BOOL compile_struct(unsigned int node, sCompileInfo* info)
{
    sNodeType* struct_type = gNodes[node].uValue.sStruct.mType;

    Type* llvm_struct_type = create_llvm_type_from_node_type(struct_type);

    return TRUE;
}

unsigned int sNodeTree_create_object(sNodeType* node_type, char* sname, int sline)
{
    unsigned node = alloc_node();

    gNodes[node].mNodeType = kNodeTypeObject;

    gNodes[node].mSName = sname;
    gNodes[node].mLine = sline;

    gNodes[node].uValue.sObject.mType = node_type;

    gNodes[node].mLeft = 0;
    gNodes[node].mRight = 0;
    gNodes[node].mMiddle = 0;

    return node;
}

static BOOL compile_object(unsigned int node, sCompileInfo* info)
{
    sNodeType* node_type = gNodes[node].uValue.sObject.mType;
    sNodeType* node_type2 = clone_node_type(node_type);
    node_type2->mPointerNum = 1;

    /// malloc ///
    uint64_t size = get_size_from_node_type(node_type);

    Function* fun = TheModule->getFunction("malloc");

    std::vector<Value*> params2;

    Value* param = ConstantInt::get(Type::getInt64Ty(TheContext), (uint64_t)size);
    params2.push_back(param);

    Value* address = Builder.CreateCall(fun, params2);

    Type* llvm_type = create_llvm_type_from_node_type(node_type2);

    address = Builder.CreateCast(Instruction::BitCast, address, llvm_type);

    /// result ///
    LVALUE llvm_value;
    llvm_value.value = address;
    llvm_value.type = node_type2;
    llvm_value.address = nullptr;

    push_value_to_stack_ptr(&llvm_value, info);

    info->type = node_type2;

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

    LVALUE llvm_value;
    llvm_value.value = Builder.CreateAlloca(llvm_var_type, 0, "object");
    llvm_value.type = node_type;
    llvm_value.address = nullptr;

    push_value_to_stack_ptr(&llvm_value, info);

    info->type = node_type;

    return TRUE;

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

    /// compile right node ///
    unsigned int rnode = gNodes[node].mRight;

    if(!compile(rnode, info)) {
        return FALSE;
    }

    sNodeType* right_type = info->type;

    if(type_identify_with_class_name(right_type, "void"))
    {
        compile_err_msg(info, "Right value is void");
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

    sNodeType* field_type = left_type->mClass->mFields[field_index];

    LVALUE* lvalue = get_value_from_stack(-2);
    LVALUE* rvalue = get_value_from_stack(-1);

    if(cast_posibility(field_type, right_type)) {
        cast_right_type_to_left_type(field_type, &right_type, rvalue, info);
    }

    if(!substitution_posibility(field_type, right_type)) {
        compile_err_msg(info, "The different type between left type and right type. Left type is %s. Right type is %s.", CLASS_NAME(field_type->mClass), CLASS_NAME(right_type->mClass));
        info->err_num++;

        info->type = create_node_type_with_class_name("int"); // dummy

        return TRUE;
    }

    Type* llvm_field_type = create_llvm_type_from_node_type(field_type);

    int alignment = get_llvm_alignment_from_node_type(field_type);

#if LLVM_VERSION_MAJOR >= 7
    Value* field_address = Builder.CreateStructGEP(lvalue->value, field_index);
#else
    Value* field_address = Builder.CreateStructGEP(llvm_field_type, lvalue->value, field_index);
#endif

    Builder.CreateAlignedStore(rvalue->value, field_address, alignment);

    info->type = right_type;

    dec_stack_ptr(2, info);
    push_value_to_stack_ptr(rvalue, info);

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

    sNodeType* field_type = left_type->mClass->mFields[field_index];

    Type* llvm_field_type = create_llvm_type_from_node_type(field_type);

    int alignment = get_llvm_alignment_from_node_type(field_type);

    LVALUE* lvalue = get_value_from_stack(-1);

    Value* field_address;
    if(left_type->mPointerNum == 0) {
#if LLVM_VERSION_MAJOR >= 7
        field_address = Builder.CreateStructGEP(lvalue->address, field_index);
#else
        field_address = Builder.CreateStructGEP(llvm_field_type, lvalue->address, field_index);
#endif
    }
    else {
#if LLVM_VERSION_MAJOR >= 7
        field_address = Builder.CreateStructGEP(lvalue->value, field_index);
#else
        field_address = Builder.CreateStructGEP(llvm_field_type, lvalue->value, field_index);
#endif
    }

    LVALUE llvm_value;
    llvm_value.value = Builder.CreateAlignedLoad(field_address, alignment);
    llvm_value.type = field_type;
    llvm_value.address = field_address;

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

    Builder.SetInsertPoint(loop_top_block);
    info->current_block = loop_top_block;

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

    LVALUE* conditional_value = get_value_from_stack(-1);
    dec_stack_ptr(1, info);

    BasicBlock* cond_then_block = BasicBlock::Create(TheContext, "cond_then_block", gFunction);

    BasicBlock* cond_end_block = BasicBlock::Create(TheContext, "cond_end_block", gFunction);

    Builder.CreateCondBr(conditional_value->value, cond_then_block, cond_end_block);

    Builder.SetInsertPoint(cond_then_block);
    info->current_block = cond_then_block;

    sNodeType* result_type = create_node_type_with_class_name("void");
    if(!compile_block(while_node_block, info, result_type)) {
        return FALSE;
    }

    Builder.CreateBr(loop_top_block);

    Builder.SetInsertPoint(cond_end_block);
    info->current_block = cond_end_block;

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

    push_value_to_stack_ptr(&llvm_value, info);

    info->type = create_node_type_with_class_name("bool");

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

    LVALUE* conditional_value = get_value_from_stack(-1);
    Builder.CreateAlignedStore(conditional_value->value, result_var, 1);

    BasicBlock* cond_then_block = BasicBlock::Create(TheContext, "cond_jump_then", gFunction);

    BasicBlock* cond_end_block = BasicBlock::Create(TheContext, "cond_jump_end", gFunction);;

    Builder.CreateCondBr(conditional_value->value, cond_then_block, cond_end_block);

    Builder.SetInsertPoint(cond_then_block);
    info->current_block = cond_then_block;

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

    LVALUE* conditional_value2 = get_value_from_stack(-1);

    Value* andand_value = Builder.CreateAnd(conditional_value->value, conditional_value2->value, "andand");

    Builder.CreateAlignedStore(andand_value, result_var, 1);

    Builder.CreateBr(cond_end_block);

    Builder.SetInsertPoint(cond_end_block);
    info->current_block = cond_end_block;

    dec_stack_ptr(2, info);

    LVALUE llvm_value;
    llvm_value.value = Builder.CreateAlignedLoad(result_var, 1, "andand_result_value");
    llvm_value.type = create_node_type_with_class_name("bool");
    llvm_value.address = result_var;

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

    LVALUE* conditional_value = get_value_from_stack(-1);
    Builder.CreateAlignedStore(conditional_value->value, result_var, 1);

    BasicBlock* cond_then_block = BasicBlock::Create(TheContext, "cond_jump_then", gFunction);

    BasicBlock* cond_end_block = BasicBlock::Create(TheContext, "cond_jump_end", gFunction);;

    Builder.CreateCondBr(conditional_value->value, cond_end_block, cond_then_block);

    Builder.SetInsertPoint(cond_then_block);
    info->current_block = cond_then_block;

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

    LVALUE* conditional_value2 = get_value_from_stack(-1);

    Value* oror_value = Builder.CreateOr(conditional_value->value, conditional_value2->value, "oror");

    Builder.CreateAlignedStore(oror_value, result_var, 1);

    Builder.CreateBr(cond_end_block);

    Builder.SetInsertPoint(cond_end_block);
    info->current_block = cond_end_block;

    dec_stack_ptr(2, info);

    LVALUE llvm_value;
    llvm_value.value = Builder.CreateAlignedLoad(result_var, 1, "oror_result_value");
    llvm_value.type = create_node_type_with_class_name("bool");
    llvm_value.address = result_var;

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

    Builder.SetInsertPoint(loop_top_block);
    info->current_block = loop_top_block;

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

    LVALUE* conditional_value = get_value_from_stack(-1);
    dec_stack_ptr(1, info);

    BasicBlock* cond_then_block = BasicBlock::Create(TheContext, "cond_then_block", gFunction);

    BasicBlock* cond_end_block = BasicBlock::Create(TheContext, "cond_end_block", gFunction);

    Builder.CreateCondBr(conditional_value->value, cond_then_block, cond_end_block);

    Builder.SetInsertPoint(cond_then_block);
    info->current_block = cond_then_block;

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

    Builder.SetInsertPoint(cond_end_block);
    info->current_block = cond_end_block;

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

    push_value_to_stack_ptr(&llvm_value, info);

    info->type = refference_type;

    return TRUE;
}

BOOL compile(unsigned int node, sCompileInfo* info)
{
    if(node == 0) {
        return TRUE;
    }

    info->sname = gNodes[node].mSName;
    info->sline = gNodes[node].mLine;

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
    }

    return node;
}

