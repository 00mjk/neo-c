#include "common.h"
#include <assert.h>

void vm_err_msg(sVMInfo* info, char* msg)
{
    fprintf(stderr, "%s %d: %s\n", info.sname, info.sline, msg);
}

void print_stack(CLVALUE* stack, CLVALUE* stack_ptr, int var_num)
{
    CLVALUE* p = stack;
    
    while(p < stack_ptr) {
        int index = (p-stack) / sizeof(CLVALUE);
        
        if(index < var_num) {
            fprintf(stderr, "v[%d] %d \n", index, p.mIntValue);
        }
        else {
            fprintf(stderr, " [%d] %d\n", index, p.mIntValue);
        }
        
        p++;
    }
}

void print_method(sCLClass* klass, sCLMethod* method, int num_params, int var_num)
{
    printf("invoke method %s.%s num_params %d var_num %d\n", klass.mName, method.mName, num_params, var_num);
}

void print_method_end(sCLClass* klass, sCLMethod* method, CLVALUE result)
{
    printf("invoked method %s.%s result %d\n", klass.mName, method.mName, result.mIntValue);
}

void print_block(int num_params, int var_num)
{
    printf("invoke block num_params %d var_num %d\n", num_params, var_num);
}

void print_block_end(CLVALUE result)
{
    printf("invoked block result %d\n", result.mIntValue);
}

void print_op(int op)
{
    switch(op) {
        case OP_POP:
            puts("OP_POP");
            break;
            
        case OP_INT_VALUE:
            puts("OP_INT_VALUE");
            break;
            
        case OP_STRING_VALUE:
            puts("OP_STRING_VALUE");
            break;
            
        case OP_IADD:
            puts("OP_IADD");
            break;

        case OP_STORE_VARIABLE:
            puts("OP_STORE_VARIABLE");
            break;
            
        case OP_LOAD_VARIABLE:
            puts("OP_LOAD_VARIABLE");
            break;

        case OP_IEQ:
            puts("OP_IEQ");
            break;
            
        case OP_INOTEQ:
            puts("OP_INOTEQ");
            break;
                
        case OP_COND_JUMP: 
            puts("OP_COND_JUMP");
            break;

        case OP_COND_NOT_JUMP: 
            puts("OP_COND_NOT_JUMP");
            break;

        case OP_GOTO: 
            puts("OP_GOTO");
            break;

        case OP_CREATE_OBJECT: 
            puts("OP_CREATE_OBJECT");
            break;

        case OP_INVOKE_METHOD: 
            puts("OP_INVOKE_METHOD");
            break;

        case OP_CREATE_BLOCK_OBJECT:
            puts("OP_CREATE_BLOCK_OBJECT");
            break;

        case OP_INVOKE_BLOCK_OBJECT:
            puts("OP_INVOKE_BLOCK_OBJECT");
            break;
            
        default:
            printf("OP %d\n", op);
            break;
    }
}

void ready_for_vm_stack(CLVALUE* stack, int head_params, int num_params, int var_num, int parent_stack_frame_index, bool enable_parent_stack, sVMInfo* info)
{
    sCLStackFrame null_paret_stack_frame;
    memset(&null_paret_stack_frame, 0, sizeof(sCLStackFrame));

    if(parent_stack_frame_index >= 0) {
        sCLStackFrame parent_stack_frame = info.stack_frames.item(parent_stack_frame_index, null_paret_stack_frame);


        if(enable_parent_stack) {
            memcpy(stack, parent_stack_frame.stack, sizeof(CLVALUE)*parent_stack_frame.var_num);
            sCLStackFrame parent_stack_frame2 = info.stack_frames.item(-2, null_paret_stack_frame);
            
            memcpy(stack + head_params, (*parent_stack_frame2.stack_ptr) - (num_params-1), sizeof(CLVALUE)*(num_params-1));
        }
        else {
            memcpy(stack, (*parent_stack_frame.stack_ptr) - num_params, sizeof(CLVALUE)*num_params);
        }
    }
}

void update_parent_stack(CLVALUE* stack, int head_params, int num_params, int var_num, int parent_stack_frame_index, bool enable_parent_stack, sVMInfo* info)
{
    sCLStackFrame null_paret_stack_frame;
    memset(&null_paret_stack_frame, 0, sizeof(sCLStackFrame));

    if(parent_stack_frame_index >= 0) {
        sCLStackFrame parent_stack_frame = info.stack_frames.item(parent_stack_frame_index, null_paret_stack_frame);


        if(enable_parent_stack) {
            memcpy(parent_stack_frame.stack, stack, sizeof(CLVALUE)*parent_stack_frame.var_num);
        }
    }
}

bool vm(buffer* codes, int head_params, int num_params, int var_num, int parent_stack_frame_index, bool enable_parent_stack, sVMInfo* info)
{
    sCLStackFrame null_paret_stack_frame;
    memset(&null_paret_stack_frame, 0, sizeof(sCLStackFrame));

    CLVALUE stack[VM_STACK_MAX];
    sCLStackFrame stack_frame;
    
    memset(stack, 0, sizeof(CLVALUE) * VM_STACK_MAX);
    
    CLVALUE* stack_ptr = (CLVALUE*)stack + var_num;

    int* head_codes = (int*)codes.buf;
    int* p = (int*)codes.buf;

    stack_frame.stack = stack;
    stack_frame.stack_ptr = &stack_ptr;
    stack_frame.var_num = var_num;
    stack_frame.index = info.stack_frames.length();

    info.stack_frames.push_back(stack_frame);

    ready_for_vm_stack(stack, head_params, num_params, var_num, parent_stack_frame_index, enable_parent_stack, info);
    
    while(p - head_codes < codes.len) {
        int op = *p;
        p++;
        
        switch(op) {
print_op(op);
            case OP_POP: {
                stack_ptr--;
                }
                break;
                
            case OP_INT_VALUE: {
                stack_ptr.mIntValue = *p;
                p++;
                
                stack_ptr++;
                }
                break;
                
            case OP_STRING_VALUE: {
                char* str = (char*)p;
                int len = strlen(str);
                alignment(&len);
                len = len / sizeof(int);

                p += len;

                int obj = create_string_object(str, info);
                
                stack_ptr.mObjectValue = obj;
                stack_ptr++;
                }
                break;

            case OP_CREATE_OBJECT: {
                char* name = (char*)p;

                int len = strlen(name);

                alignment(&len);

                len = len / sizeof(int);

                p += len;

                sCLClass* klass = gClasses.at(name, null);

                if(klass == null) {
                    vm_err_msg(info, xsprintf("class not found(%s)\n", name));
                    info.stack_frames.pop_back(null_paret_stack_frame);
                    update_parent_stack(stack, head_params, num_params, var_num, parent_stack_frame_index, enable_parent_stack, info);
                    return false;
                }

                int obj = create_object(klass, info);

                stack_ptr.mObjectValue = obj;
                stack_ptr++;
                }
                break;

            case OP_CREATE_BLOCK_OBJECT: {
                int head_params = *p;
                p++;

                int var_num = *p;
                p++;

                int codes_len = *p;
                p++;

                int* codes = p;

                p += codes_len / sizeof(int);

                int obj = create_block_object(codes, codes_len, head_params, var_num, info.stack_frames.length()-1, info);

                stack_ptr.mObjectValue = obj;
                stack_ptr++;
                }
                break;
                
            case OP_IADD: {
                int lvalue = (stack_ptr-2).mIntValue;
                int rvalue = (stack_ptr-1).mIntValue;
                stack_ptr -= 2;
                
                stack_ptr.mIntValue = lvalue + rvalue;
                stack_ptr++;
                }
                
                break;
                
            case OP_IEQ: {
                int lvalue = (stack_ptr-2).mIntValue;
                int rvalue = (stack_ptr-1).mIntValue;
                stack_ptr -= 2;
                
                stack_ptr.mIntValue = lvalue == rvalue;
                stack_ptr++;
                }
                
                break;
                
            case OP_INOTEQ: {
                int lvalue = (stack_ptr-2).mIntValue;
                int rvalue = (stack_ptr-1).mIntValue;
                stack_ptr -= 2;
                
                stack_ptr.mIntValue = lvalue != rvalue;
                stack_ptr++;
                }
                
                break;
                
            case OP_STORE_VARIABLE: {
                int var_index = *p;
                p++;
                
                stack[var_index] = *(stack_ptr-1);
                }
                break;
                
            case OP_LOAD_VARIABLE: {
                int var_index = *p;
                p++;

                *stack_ptr = stack[var_index];
                stack_ptr++;
                }

            case OP_COND_JUMP: {
                int jump_size = *p;
                p++;

                bool value = (stack_ptr-1).mIntValue;
                stack_ptr--;

                if(value) {
                    p += jump_size;
                }
                }
                break;

            case OP_COND_NOT_JUMP: {
                int jump_size = *p;
                p++;

                bool value = (stack_ptr-1).mIntValue;
                stack_ptr--;

                if(!value) {
                    p += jump_size;
                }
                }
                break;

            case OP_GOTO: {
                int goto_point = *p;
                p++;

                p = (int*)(((char*)head_codes) + goto_point);
                }
                break;

            case OP_INVOKE_METHOD: { 
                char* klass_name = (char*)p;

                int len = strlen(klass_name);

                alignment(&len);

                len = len / sizeof(int);

                p += len;

                char* method_name = (char*)p;

                len = strlen(method_name);

                alignment(&len);

                len = len / sizeof(int);

                p += len;

                int num_params = *p;
                p++;

                int var_num = *p;
                p++;

                int result_existance = *p
                p++;

                sCLClass* klass = gClasses.at(klass_name, null);

                if(klass == null) {
                    vm_err_msg(info, xsprintf("class not found(%s)\n", klass_name));
                    info.stack_frames.pop_back(null_paret_stack_frame);
                    update_parent_stack(stack, head_params, num_params, var_num, parent_stack_frame_index, enable_parent_stack, info);
                    return false;
                }
                

                sCLMethod* method = klass.mMethods.at(method_name, null);

                if(method == null) {
                    vm_err_msg(info, xsprintf("method not found(%s.%s)\n", klass_name, method_name));
                    info.stack_frames.pop_back(null_paret_stack_frame);
                    update_parent_stack(stack, head_params, num_params, var_num, parent_stack_frame_index, enable_parent_stack, info);
                    return false;
                }
print_method(klass, method, num_params, var_num);

                buffer* codes = method.mByteCodes;
                if(!vm(codes, 0, num_params, var_num, info.stack_frames.length()-1, false, info)) {
                    info.stack_frames.pop_back(null_paret_stack_frame);
                    update_parent_stack(stack, head_params, num_params, var_num, parent_stack_frame_index, enable_parent_stack, info);
                    return false;
                }

                stack_ptr -= num_params;

                if(result_existance) {
                    sCLStackFrame parent_stack_frame = info.stack_frames.pop_back(null_paret_stack_frame);

                    *stack_ptr = *(*parent_stack_frame.stack_ptr-1);
                    stack_ptr++;
                }
print_method_end(klass, method, *(stack_ptr-1));

                }
                break;

            case OP_INVOKE_BLOCK_OBJECT: {
                int var_num = *p;
                p++;

                int num_params = *p;
                p++;

                int result_existance = *p;
                p++;

                int block_object = (*(stack_ptr-num_params)).mObjectValue;

                sCLBlock* block_data = CLBLOCK(block_object);

                int* codes = block_data->codes;
                int codes_len = block_data->codes_len;
                int head_params = block_data->head_params;
                int parent_stack_frame_index = block_data->stack_frame_index;

                int var_num2 = block_data->var_num;

                buffer*% buffer = new buffer.initialize();

                buffer.append((char*)codes, codes_len);

print_block(num_params, var_num2);

                if(!vm(buffer, head_params, num_params, var_num2, parent_stack_frame_index, true, info)) {
                    info.stack_frames.pop_back(null_paret_stack_frame);
                    update_parent_stack(stack, head_params, num_params, var_num, parent_stack_frame_index, enable_parent_stack, info);
                    return false;
                }

                stack_ptr -= num_params;

                if(result_existance) {
                    sCLStackFrame parent_stack_frame = info.stack_frames.pop_back(null_paret_stack_frame);

                    *stack_ptr = *(*parent_stack_frame.stack_ptr-1);
                    stack_ptr++;
                }
print_block_end(*(stack_ptr-1));

                }
                break;
        }
print_stack(stack, stack_ptr, var_num);
    }

    update_parent_stack(stack, head_params, num_params, var_num, parent_stack_frame_index, enable_parent_stack, info);
    
    return true;
}

