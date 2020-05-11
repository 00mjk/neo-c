#include "common.h"
#include <assert.h>

sCLType* create_type(char* type_name, sParserInfo* info)
{
    sCLType* result = borrow new sCLType;
    
    info.types.push_back(dummy_heap result);
    
    result.mClass = gClasses.at(type_name, null);
    
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

bool substitution_posibility(sCLType* left_type, sCLType* right_type)
{
    sCLClass* left_class = left_type.mClass;
    sCLClass* right_class = right_type.mClass;

    if(strcmp(left_class.mName, "lambda") == 0
        && strcmp(right_class.mName, "lambda") == 0)
    {
        if(!substitution_posibility(left_type.mResultType, right_type.mResultType))
        {
            return false;
        }

        if(left_type.mNumParams != right_type.mNumParams) {
            return false;
        }

        for(int i=0; i<left_type.mNumParams; i++) {
            if(!substitution_posibility(left_type.mParams[i].mType, right_type.mParams[i].mType))
            {
                return false;
            }
        }

        return true;
    }

    return type_identify(left_type, right_type);
}

bool type_identify_with_class_name(sCLType* left_type, char* right_class, sParserInfo* info)
{
    sCLType* right_type = create_type(right_class, info);
    
    return type_identify(left_type, right_type);
}


void show_type(sCLType* type)
{
    printf("class %s\n", type.mClass.mName);
}
