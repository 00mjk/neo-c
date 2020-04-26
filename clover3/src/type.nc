#include "common.h"
#include <assert.h>

sCLType* create_type(char* type_name, sCompileInfo* info)
{
    sCLType* result = borrow new sCLType;
    
    info.types.push_back(dummy_heap result);
    
    result.mClass = gClasses.at(string(type_name), null);
    
    assert(result.mClass != null);
    
    return result;
}

bool type_identify(sCLType* left_type, sCLType* right_type)
{
    sCLClass* left_class = left_type.mClass;
    sCLClass* right_class = right_type.mClass;
    
    if(left_class == right_class) {
        return true;
    }
    
    return false;
}

bool type_identify_with_class_name(sCLType* left_type, char* right_class, sCompileInfo* info)
{
    sCLType* right_type = create_type("int", info);
    
    return type_identify(left_type, right_type);
}


void show_type(sCLType* type)
{
    printf("class %s\n", type.mClass.name);
}
