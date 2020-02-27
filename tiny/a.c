#include <stdio.h>
#include <stdlib.h>

struct TinyNode {
    int type;

    union {
        int intValue;

        struct {
            char* value;
        } stringValue;

    
        struct {
            char* name;
            struct TinyNode* value;
        } varValue;

        struct {
            char* name;
            struct TinyNode** params;
            int num_params;
        } funValue;
    
        struct {
            char* name;
        } loadVarValue;

        struct {
            int num_expressions;
            struct TinyNode** expressions;
            void* blocks;
            void* else_block;
        } ifValue;
    };
    

    struct TinyNode* left;
    struct TinyNode* right;
    struct TinyNode* middle;

    int stackValue;

    int debug_runned_default;
};

int main()
{
    struct TinyNode node;

    printf("%p %p\n", &node, &node.stringValue.value);

    exit(0);
}
