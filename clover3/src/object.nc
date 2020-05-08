#include "common.h"
#include <assert.h>

void mark_belong_objects(CLObject self, unsigned char* mark_flg, sVMInfo* info)
{
    sCLObject* object_data = CLOBJECT(self);
    sCLClass* type = object_data->mType;
    
    if(type == gClasses.at("string", null)) {
    }
    else {
        int i;
        for(i=0; i<object_data->mNumFields; i++) {
            mark_object(object_data->mFields[i].mObjectValue, mark_flg, info);
        }
    }
}

bool free_object(CLObject self, sVMInfo* info)
{
    sCLObject* object_data = CLOBJECT(self);
    sCLClass* type = object_data->mType;

    if(type == gClasses.at("lambda", null)) {
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

CLObject create_object(sCLClass* klass, sVMInfo* info)
{
    unsigned int size = (unsigned int)object_size(klass);

    alignment(&size);

    CLObject obj = alloc_heap_mem(size, klass, -1, info);

    return obj;
}

CLObject create_string_object(char* str, sVMInfo* info)
{
    int len = strlen(str);

    sCLClass* string_type = gClasses.at("string", null);
    
    int size = sizeof(sCLObject) - sizeof(CLVALUE) * DUMMY_ARRAY_SIZE;
    size += len + 1;

    alignment(&size);

    CLObject obj = alloc_heap_mem(size, string_type, -1, info);

    sCLObject* object_data = CLOBJECT(obj);

    strcpy(&object_data.mMem, str);

    return obj;
}

static cllong block_object_size()
{
    cllong size = sizeof(sCLBlock);

    unsigned int size2 = size;

    alignment((unsigned int*)&size2);

    size = size2;

    return size;
}

CLObject create_block_object(sCLNodeBlock* node_block, sVMInfo* info)
{
    unsigned int size = (unsigned int)block_object_size();

    alignment(&size);

    sCLClass* klass = gClasses.at("lambda", null);

    assert(klass != null);

    CLObject obj = alloc_heap_mem(size, klass, -1, info);

    sCLBlock* block_data = CLBLOCK(obj);

    block_data->mNodeBlock = node_block;

    return obj;
}
