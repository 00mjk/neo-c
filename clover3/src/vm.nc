#include "common.h"

void print_stack(CLVALUE* stack, CLVALUE* stack_ptr)
{
    CLVALUE* p = stack;
    
    while(p < stack_ptr) {
        fprintf(stderr, "[%d] %d\n", (stack_ptr-p) / sizeof(CLVALUE), p.mIntValue);
        
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
            
        default:
            printf("OP %d\n", op);
            break;
    }
}

bool vm(buffer* codes, sVMInfo* info)
{
    CLVALUE stack[VM_STACK_MAX];
    CLVALUE* stack_ptr = (CLVALUE*)stack;
    
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
        }
print_stack(stack, stack_ptr);
    }
    
    return true;
}

