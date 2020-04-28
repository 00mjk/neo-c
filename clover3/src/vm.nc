#include "common.h"

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
            
        case OP_IADD:
            puts("OP_IADD");
            break;

        case OP_STORE_VARIABLE:
            puts("OP_STORE_VARIABLE");
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
            case OP_POP:
                stack_ptr--;
                break;
                
            case OP_INT_VALUE:
                stack_ptr.mIntValue = *p;
                p++;
                
                stack_ptr++;
                break;
                
            case OP_IADD:
                int lvalue = (stack_ptr-2).mIntValue;
                int rvalue = (stack_ptr-1).mIntValue;
                stack_ptr -= 2;
                
                stack_ptr.mIntValue = lvalue + rvalue;
                stack_ptr++;
                
                break;
                
            case OP_STORE_VARIABLE:
                int var_index = *p;
                p++;
                
                stack[var_index] = *(stack_ptr-1);
                
                break;
                
        }
print_stack(stack, stack_ptr, info.var_num);
    }
    
    return true;
}

