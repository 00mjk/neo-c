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

CLObject create_command_object(char* output, int output_len, char* err_output, int err_output_len, int rcode, sVMInfo* info)
{
    sCLClass* command_class = gClasses.at("command", null);
    
    int size = sizeof(sCLCommand) - sizeof(char) * DUMMY_ARRAY_SIZE;
    size += output_len + 1 + err_output_len + 1;

    alignment(&size);

    CLObject obj = alloc_heap_mem(size, command_class, -1, info);

    sCLCommand* object_data = CLCOMMAND(obj);

    object_data.mRCode = rcode;
    object_data.mOutputLen = output_len;
    object_data.mErrOutputLen = err_output;
    memcpy(object_data.mOutput, output, output_len+1);
    memcpy(object_data.mOutput + output_len + 1, err_output, err_output_len+1);


    object_data.mErrData = object_data.mOutput + output_len + 1;

    return obj;
}

CLObject create_job_object(char* title, termios* tinfo, pid_t pgrp, sVMInfo* info)
{
    sCLClass* job_class = gClasses.at("job", null);
    
    int size = sizeof(sCLJob);

    alignment(&size);

    CLObject obj = alloc_heap_mem(size, job_class, -1, info);

    sCLJob* object_data = CLJOB(obj);

    xstrncpy(object_data.mTitle, title, JOB_TITLE_MAX);
    object_data.mTermInfo = *tinfo
    object_data.mPGrp = pgrp;

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

CLObject create_block_object(int* codes, int codes_len, int head_params , int var_num, int stack_frame_index, sVMInfo* info)
{
    unsigned int size = (unsigned int)block_object_size();

    alignment(&size);

    sCLClass* klass = gClasses.at("lambda", null);

    assert(klass != null);

    CLObject obj = alloc_heap_mem(size, klass, -1, info);

    sCLBlock* block_data = CLBLOCK(obj);

    block_data->codes = codes;
    block_data->codes_len = codes_len;
    block_data->head_params = head_params;
    block_data->stack_frame_index = stack_frame_index;
    block_data->var_num = var_num;

    return obj;
}

