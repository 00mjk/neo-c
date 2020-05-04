#include "common.h"

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

        case OP_CLASS: 
            puts("OP_CLASS");
            break;
            
        default:
            printf("OP %d\n", op);
            break;
    }
}

bool vm(buffer* codes, sVMInfo* info)
{
    CLVALUE stack[VM_STACK_MAX];
    
    memset(stack, 0, sizeof(CLVALUE) * VM_STACK_MAX);
    
    CLVALUE* stack_ptr = (CLVALUE*)stack + info.var_num;
    
    int* head_codes = (int*)codes.buf;
    int* p = (int*)codes.buf;
    
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

            case OP_CLASS: {
                char* source = (char*)p;

                int len = strlen(source);

                alignment(&len);

                len = len / sizeof(int);

                p += len;

                if(!eval_class(source, info)) {
                    return false;
                }
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
                
        }
print_stack(stack, stack_ptr, info.var_num);
    }
    
    return true;
}

