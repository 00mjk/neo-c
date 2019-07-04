#include "llvm_common.hpp"

std::map<std::string, sNodeType*> gTypeDefs;

extern "C"
{

void add_typedef(char* name, sNodeType* node_type)
{
    gTypeDefs[name] = clone_node_type(node_type);
}

sNodeType* get_typedef(char* name)
{
    sNodeType* result = gTypeDefs[name];

    if(result) {
        result = clone_node_type(result);
    }

    return result;
}


}

