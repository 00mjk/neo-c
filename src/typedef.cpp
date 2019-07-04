#include "llvm_common.hpp"

std::map<std::string, sNodeType*> gTypeDefs;

extern "C"
{

void add_typedef(char* name, sNodeType* node_type)
{
    gTypeDefs[name] = node_type;
}

sNodeType* get_typedef(char* name)
{
    return gTypeDefs[name];
}


}

