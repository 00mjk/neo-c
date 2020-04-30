#include "common.h"

void object_mark_fun(CLObject self, unsigned char* mark_flg)
{
    sCLObject* object = CLOBJECT(self);
    sCLClass* klass = object->mClass;
    
    if(strcmp(klass->mName, "string") == 0) {
    }
    else {
        int i;
        for(i=0; i<object->mNumFields; i++) {
            mark_object(object->mFields[i].mObjectValue, mark_flg);
        }
    }
}

bool free_object(CLObject self)
{
    sCLObject* object_data = CLOBJECT(self);
    sCLClass* klass = object_data->mClass;

/*
    if(!call_finalize_method_on_free_object(klass, self)) {
        return FALSE;
    }
*/

    object_data = CLOBJECT(self);
    
    delete object_data->mType;
    
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

CLObject create_object(sCLClass* klass, char* type, sVMInfo* info)
{
    unsigned int size = (unsigned int)object_size(klass);

    alignment(&size);

    CLObject obj = alloc_heap_mem(size, klass, -1, info);

    sCLObject* object_data = CLOBJECT(obj);

    object_data->mType = borrow string(type);

    return obj;
}

CLObject create_string_object(char* str, sVMInfo* info)
{
    int len = strlen(str);

    sCLClass* string_class = gClasses.at("string", null);
    
    int size = sizeof(sCLObject) - sizeof(CLVALUE) * DUMMY_ARRAY_SIZE;
    size += len + 1;

    alignment(&size);

    CLObject obj = alloc_heap_mem(size, string_class, -1, info);

    sCLObject* object_data = CLOBJECT(obj);

    object_data->mType = borrow string("string");

    strcpy(&object_data.mMem, str);

    return obj;
}
