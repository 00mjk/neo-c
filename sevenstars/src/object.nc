#include "common.h"
#include <assert.h>

void mark_belong_objects(CLObject self, unsigned char* mark_flg, sVMInfo* info)
{
    sCLObject* object_data = CLOBJECT(self);
    sCLType* type = object_data->mType;
    int num_fields = object_data->mNumFields;
    
    if(num_fields == -1) {
    }
    else {
        int i;
        for(i=0; i<object_data->mNumFields; i++) {
            mark_object(object_data->uValue.mFields[i].mObjectValue, mark_flg, info);
        }
    }
}

bool free_object(CLObject self, sVMInfo* info)
{
/*
    sCLObject* object_data = CLOBJECT(self);
    sCLType* type = object_data->mType;


    if(type->mClass == gClasses.at("lambda", null)) {
    }

    if(!call_finalize_method_on_free_object(klass, self)) {
        return FALSE;
    }
*/

    return true;
}

static cllong object_size(sCLClass* klass)
{
    cllong size = sizeof(sCLObject) - sizeof(CLVALUE) * DUMMY_ARRAY_SIZE;

    int sum = 0;
    sCLClass* it = klass;
    while(it) {
        sum += it->mFields.length();
        it = it->mParent;
    }
    size += (unsigned int)sizeof(CLVALUE) * sum;

    unsigned int size2 = size;

    alignment((unsigned int*)&size2);

    size = size2;

    return size;
}

CLObject create_object(sCLType* type, sVMInfo* info)
{
    unsigned int size = (unsigned int)object_size(type->mClass);


    CLObject obj = alloc_heap_mem(size, type, type->mClass->mFields.length(), info);

    return obj;
}

CLObject create_null_object(sVMInfo* info)
{
    sCLType* int_type = create_type("void", info.cinfo.pinfo);
    
    int size = sizeof(sCLInt);

    alignment(&size);

    int value = 0;

    CLObject obj = alloc_heap_mem(size, int_type, -1, info);

    sCLInt* object_data = CLINT(obj);

    object_data->mValue = value;

    return obj;
}

CLObject create_int_object(int value, sVMInfo* info)
{
    sCLType* int_type = create_type("int", info.cinfo.pinfo);
    
    int size = sizeof(sCLInt);

    alignment(&size);

    CLObject obj = alloc_heap_mem(size, int_type, -1, info);

    sCLInt* object_data = CLINT(obj);

    object_data->mValue = value;

    return obj;
}

CLObject create_bool_object(int value, sVMInfo* info)
{
    sCLType* int_type = create_type("bool", info.cinfo.pinfo);
    
    int size = sizeof(sCLInt);

    alignment(&size);

    CLObject obj = alloc_heap_mem(size, int_type, -1, info);

    sCLInt* object_data = CLINT(obj);

    object_data->mValue = value;

    return obj;
}

CLObject create_string_object(char* str, sVMInfo* info)
{
    sCLType* string_type = create_type("string", info.cinfo.pinfo);
    
    cllong size = sizeof(sCLObject) - sizeof(CLVALUE) * DUMMY_ARRAY_SIZE;
    size += (unsigned int)sizeof(CLVALUE);

    unsigned int size2 = size;

    alignment((unsigned int*)&size2);

    size = size2;

    sCLStackFrame null_stack_frame;

    sCLStackFrame stack_frame = info.stack_frames.item(-1, null_stack_frame);
    CLVALUE** stack_ptr = stack_frame.stack_ptr;

    CLObject obj = alloc_heap_mem(size, string_type, 1, info);

    (*stack_ptr)->mObjectValue = obj;
    (*stack_ptr)++;

    int len = strlen(str);
    int size3 = sizeof(sCLObject) - sizeof(CLVALUE) * DUMMY_ARRAY_SIZE;
    size3 += len + 1;
    alignment(&size3);

    CLObject obj2 = alloc_heap_mem(size3, string_type, -1, info);

    sCLObject* object_data2 = CLOBJECT(obj2);

    strcpy(&object_data2.uValue.mMem, str);

    sCLObject* object_data = CLOBJECT(obj);
    object_data->uValue.mFields[0].mObjectValue = obj2;

    (*stack_ptr)--;

    return obj;
}

char* get_string_mem(CLObject obj)
{
    sCLObject* object_data = CLOBJECT(obj);

    CLObject obj2 = object_data->uValue.mFields[0].mObjectValue;

    sCLObject* object_data2 = CLOBJECT(obj2);

    return &object_data2->uValue.mMem;
}

CLObject create_string_data_object(char* str, sVMInfo* info)
{
    int len = strlen(str);
    int size = sizeof(sCLObject) - sizeof(CLVALUE) * DUMMY_ARRAY_SIZE;
    size += len + 1;
    alignment(&size);

    sCLType* string_type = create_type("string", info.cinfo.pinfo);

    CLObject obj = alloc_heap_mem(size, string_type, -1, info);

    sCLObject* object_data = CLOBJECT(obj);

    strcpy(&object_data.uValue.mMem, str);

    return obj;
}

CLObject create_command_object(char* output, int output_len, char* err_output, int err_output_len, int rcode, bool first_command, sVMInfo* info)
{
    sCLType* command_type = create_type("command", info.cinfo.pinfo);
    
    int size = sizeof(sCLCommand) - sizeof(char) * DUMMY_ARRAY_SIZE;
    size += output_len + 1 + err_output_len + 1;

    alignment(&size);

    CLObject obj = alloc_heap_mem(size, command_type, -1, info);

    sCLCommand* object_data = CLCOMMAND(obj);

    object_data.mRCode = rcode;
    object_data.mOutputLen = output_len;
    object_data.mErrOutputLen = err_output;
    memcpy(object_data.mOutput, output, output_len+1);
    memcpy(object_data.mOutput + output_len + 1, err_output, err_output_len+1);
    object_data.mFirstCommand = first_command;


    object_data.mErrData = object_data.mOutput + output_len + 1;

    return obj;
}

CLObject create_job_object(char* title, termios* tinfo, pid_t pgrp, sVMInfo* info)
{
    sCLType* job_type = create_type("job", info.cinfo.pinfo);
    
    int size = sizeof(sCLJob);

    alignment(&size);

    CLObject obj = alloc_heap_mem(size, job_type, -1, info);

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

CLObject create_block_object(char* type_name, int* codes, int codes_len, int var_num, sVMInfo* info)
{
    unsigned int size = (unsigned int)block_object_size();

    alignment(&size);

    sCLType* lambda_type = parse_type_runtime(type_name, info.cinfo.pinfo);

    CLObject obj = alloc_heap_mem(size, lambda_type, -1, info);

    sCLBlock* block_data = CLBLOCK(obj);

    block_data->codes = codes;
    block_data->codes_len = codes_len;
    block_data->var_num = var_num;

    return obj;
}

