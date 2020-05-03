#include "common.h"

void mark_belong_objects(CLObject self, unsigned char* mark_flg, sVMInfo* info)
{
    sCLObject* object = CLOBJECT(self);
    sCLType* type = object->mType;
    
    if(type_identify_with_class_name(type, "string", info.cinfo.pinfo)) {
    }
    else {
        int i;
        for(i=0; i<object->mNumFields; i++) {
            mark_object(object->mFields[i].mObjectValue, mark_flg, info);
        }
    }
}

bool free_object(CLObject self, sVMInfo* info)
{
    sCLObject* object_data = CLOBJECT(self);
    sCLType* type = object_data->mType;

    if(type_identify_with_class_name(type, "lambda", info.cinfo.pinfo)) {
    }

/*
    if(!call_finalize_method_on_free_object(klass, self)) {
        return FALSE;
    }
*/

    return true;
}

static cllong object_size(sCLClass* klass)
{
    cllong size = sizeof(sCLObject) - sizeof(CLVALUE) * DUMMY_ARRAY_SIZE;
    size += (unsigned int)sizeof(CLVALUE) * klass->mFields.length();

    unsigned int size2 = size;

    alignment((unsigned int*)&size2);

    size = size2;

    return size;
}

CLObject create_object(sCLClass* klass, sCLType* type, sVMInfo* info)
{
    unsigned int size = (unsigned int)object_size(klass);

    alignment(&size);

    CLObject obj = alloc_heap_mem(size, type, -1, info);

    return obj;
}

CLObject create_string_object(char* str, sVMInfo* info)
{
    int len = strlen(str);

    sCLType* string_type = create_type("string", info.cinfo.pinfo);
    
    int size = sizeof(sCLObject) - sizeof(CLVALUE) * DUMMY_ARRAY_SIZE;
    size += len + 1;

    alignment(&size);

    CLObject obj = alloc_heap_mem(size, string_type, -1, info);

    sCLObject* object_data = CLOBJECT(obj);

    strcpy(&object_data.mMem, str);

    return obj;
}
