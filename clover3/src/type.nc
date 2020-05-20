#include "common.h"
#include <assert.h>

sCLType* parse_type_runtime(char* type_name, sVMInfo* info)
{
    char* p_before = info.cinfo.pinfo.p;

    info.cinfo.pinfo.p = type_name;

    sCLType* result = null;
    if(!parse_type(&result, info.cinfo.pinfo)) {
        fprintf(stderr, "parse_type_name error.\n");
        exit(1);
    }

    info.cinfo.pinfo.p = p_before;

    return result;
}

string create_type_name(sCLType* type)
{
    buffer*% result = new buffer.initialize();

    result.append_str(type.mClass.mName);

    if(strcmp(type.mClass.mName, "lambda") == 0) {
        result.append_str("(");

        for(int i=0; i<type.mNumParams; i++) {
            result.append_str(type.mParams[i].mName);
            result.append_str(":");
            result.append_str(create_type_name(type.mParams[i].mType));

            if(i != type.mNumParams-1) {
                result.append_str(",");
            }
        }

        result.append_str(")");
        result.append_str(":");

        result.append_str(create_type_name(type.mResultType));
    }
    else {
        if(type.mNumGenericsTypes > 0) {
            result.append_str("<");

            for(int i=0; i<type.mNumGenericsTypes; i++) {
                result.append_str(create_type_name(type.mGenericsTypes[i]));

                if(i != type.mNumParams-1) {
                    result.append_str(",");
                }
            }

            result.append_str(">");
        }
    }

    return result.to_string();
}

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
