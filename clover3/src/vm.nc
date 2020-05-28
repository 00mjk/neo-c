#include "common.h"
#include <assert.h>
#include <sys/types.h>
#include <sys/wait.h>

void vm_err_msg(CLVALUE** stack_ptr, sVMInfo* info, char* msg)
{
    char buf[128];
    snprintf(buf, 128, "%s %d: %s", info.sname, info.sline, msg);

    CLObject obj = create_string_object(buf, info);

    (*stack_ptr).mObjectValue = obj;
    (*stack_ptr)++;

    info->thrown_object.mObjectValue = obj;
}

void print_stack(CLVALUE* stack, CLVALUE* stack_ptr, int var_num)
{
    CLVALUE* p = stack;
    
    while(p < stack_ptr) {
        int index = (p-stack) / sizeof(CLVALUE);
        
        if(index < var_num) {
            fprintf(stderr, "v[%d] %d \n", index, p.mObjectValue);
            if(p.mObjectValue) {
                sCLObject* object_data = CLOBJECT(p.mObjectValue);
                show_type(object_data->mType);
            }
        }
        else {
            fprintf(stderr, " [%d] %d\n", index, p.mObjectValue);
            if(p.mObjectValue) {
                sCLObject* object_data = CLOBJECT(p.mObjectValue);
                show_type(object_data->mType);
            }
        }
        
        p++;
    }
}

void print_method(sCLClass* klass, sCLMethod* method, int num_params, int var_num)
{
    printf("invoke method %s.%s num_params %d var_num %d\n", klass.mName, method.mName, num_params, var_num);
}

void print_method_end(sCLClass* klass, sCLMethod* method, CLVALUE result)
{
    printf("invoked method %s.%s result %d\n", klass.mName, method.mName, result.mObjectValue);
}

void print_block(int num_params, int var_num)
{
    printf("invoke block num_params %d var_num %d\n", num_params, var_num);
}

void print_block_end(CLVALUE result)
{
    printf("invoked block result %d\n", result.mObjectValue);
}

void print_op(int op)
{
    switch(op) {
        case OP_NOTEQ: 
            puts("OP_NOTEQ");
            break;

        case OP_EQ: 
            puts("OP_EQ");
            break;
            
        case OP_POP:
            puts("OP_POP");
            break;

        case OP_THROW:
            puts("OP_THROW");
            break;

        case OP_RETURN:
            puts("OP_RETURN");
            break;
            
        case OP_INT_VALUE:
            puts("OP_INT_VALUE");
            break;
            
        case OP_STRING_VALUE:
            puts("OP_STRING_VALUE");
            break;
            
        case OP_IADD:
            puts("OP_IADD");
            break;

        case OP_STORE_VARIABLE:
            puts("OP_STORE_VARIABLE");
            break;
            
        case OP_LOAD_VARIABLE:
            puts("OP_LOAD_VARIABLE");
            break;

        case OP_TRY: 
            puts("OP_TRY");
            break;

        case OP_IEQ:
            puts("OP_IEQ");
            break;
            
        case OP_INOTEQ:
            puts("OP_INOTEQ");
            break;

        case OP_ILT:
            puts("OP_ILT");
            break;
            
        case OP_IGT:
            puts("OP_IGT");
            break;

        case OP_ILE:
            puts("OP_ILE");
            break;
            
        case OP_IGE:
            puts("OP_IGE");
            break;
                
        case OP_COND_JUMP: 
            puts("OP_COND_JUMP");
            break;

        case OP_COND_NOT_JUMP: 
            puts("OP_COND_NOT_JUMP");
            break;

        case OP_GOTO: 
            puts("OP_GOTO");
            break;

        case OP_CREATE_OBJECT: 
            puts("OP_CREATE_OBJECT");
            break;

        case OP_INVOKE_METHOD: 
            puts("OP_INVOKE_METHOD");
            break;

        case OP_EXIT: 
            puts("OP_EXIT");
            break;

        case OP_TRUE_VALUE: 
            puts("OP_TRUE_VALUE");
            break;

        case OP_FALSE_VALUE: 
            puts("OP_FALSE_VALUE");
            break;

        case OP_CREATE_BLOCK_OBJECT:
            puts("OP_CREATE_BLOCK_OBJECT");
            break;

        case OP_INVOKE_BLOCK_OBJECT:
            puts("OP_INVOKE_BLOCK_OBJECT");
            break;

        case OP_INVOKE_COMMAND:
            puts("OP_INVOKE_COMMAND");
            break;

        case OP_STORE_FIELD: 
            puts("OP_STORE_FIELD");
            break;

        case OP_LOAD_FIELD: 
            puts("OP_LOAD_FIELD");
            break;

        case OP_NULL_VALUE: 
            puts("OP_NULL_VALUE");
            break;
            
        default:
            printf("OP %d\n", op);
            break;
    }
}

bool invoke_command_with_control_terminal(char* name, char** argv, int num_params, CLVALUE** stack_ptr, sVMInfo* info)
{
    pid_t pid = fork();
    
    if(pid == 0) {
        pid = getpid();

        setpgid(0, 0);
        tcsetpgrp(0, pid);

        if(execvp(name, argv) < 0) {
           exit(64);
        }

        exit(0);
    }

    setpgid(pid, pid);
    tcsetpgrp(0, pid);

    int status = 0;

    pid_t pid2 = waitpid(pid, &status, WUNTRACED);

    if(WEXITSTATUS(status) == 64) {
        vm_err_msg(stack_ptr, info, xsprintf("command not found(%s)\n", name));
        return false;
    }

    if(WIFSTOPPED(status)) {
        int rcode = WSTOPSIG(status) +128;

        char title[JOB_TITLE_MAX];
        xstrncpy(title, name, JOB_TITLE_MAX);

        termios tinfo;
        if(tcgetattr(0, &tinfo) < 0) {
            return false;
        }

        int pgrp = pid;

        CLObject job = create_job_object(title, &tinfo, pgrp, info);

        gJobs.push_back(job);

        setpgid(getpid(), getpid());
        tcsetpgrp(0, getpid());

        int rcode2 = WEXITSTATUS(status);

        (*stack_ptr) -= num_params + 1;

        (*stack_ptr)->mObjectValue = create_command_object("", 1, "", 1, rcode2, info);
        (*stack_ptr)++;
    }
    else {
        setpgid(getpid(), getpid());
        tcsetpgrp(0, getpid());

        int rcode = WEXITSTATUS(status);

        (*stack_ptr) -= num_params + 1;

        (*stack_ptr)->mObjectValue = create_command_object("", 1, "", 1, rcode, info);
        (*stack_ptr)++;
    }

    return true;
}

bool invoke_command(char* name, char** argv, CLVALUE** stack_ptr, int num_params, sVMInfo* info)
{
    int child2parent_write_fd = 0;
    int child2parent_read_fd = 0;
    int parent2child_write_fd = 0;
    int parent2child_read_fd = 0;
    int child2parent_read_fd_err = 0;
    int child2parent_write_fd_err = 0;

    int pipes[2];

    pipe(pipes);
    child2parent_read_fd = pipes[0];
    child2parent_write_fd = pipes[1];
    pipe(pipes);
    parent2child_read_fd = pipes[0];
    parent2child_write_fd = pipes[1];
    pipe(pipes);
    child2parent_read_fd_err = pipes[0];
    child2parent_write_fd_err = pipes[1];

    pid_t pid = fork();
    
    if(pid == 0) {
        close(parent2child_write_fd);
        close(child2parent_read_fd);
        close(child2parent_read_fd_err);

        dup2(parent2child_read_fd, 0);
        dup2(child2parent_write_fd, 1);
        dup2(child2parent_write_fd_err, 2);

        close(parent2child_read_fd);
        close(child2parent_write_fd);
        close(child2parent_write_fd_err);

        if(execvp(name, argv) < 0) {
            exit(64);
        }

        exit(2);
    }

    close(parent2child_read_fd);
    close(child2parent_write_fd);
    close(child2parent_write_fd_err);
    close(parent2child_write_fd);

    buffer*% child_output = new buffer.initialize();
    buffer*% child_output_error = new buffer.initialize();
    
    while(true) {
        char pipe_data[128];
        int readed_byte = read(child2parent_read_fd, pipe_data, 128);

        char pipe_data_err[128];
        int readed_byte_err = read(child2parent_read_fd_err, pipe_data_err, 128);

        if(readed_byte == 0 && readed_byte_err == 0) {
            break;
        }

        child_output.append(pipe_data, readed_byte);
        child_output_error.append(pipe_data_err, readed_byte_err);
    }

    close(child2parent_read_fd);
    close(child2parent_read_fd_err);

    int status = 0;

    pid_t pid2 = waitpid(pid, &status, WUNTRACED);

    if(WEXITSTATUS(status) == 64) {
        vm_err_msg(stack_ptr, info, xsprintf("command not found(%s)\n", name));
        return false;
    }

    (*stack_ptr) -= num_params + 1;

    int rcode = WEXITSTATUS(status);

    (*stack_ptr)->mObjectValue = create_command_object(child_output.buf, child_output.len, child_output_error.buf, child_output_error.len, rcode, info);
    (*stack_ptr)++;

    return true;
}

bool invoke_command_with_control_terminal_and_pipe(CLObject parent_obj, char* name, char** argv, int num_params, CLVALUE** stack_ptr, sVMInfo* info)
{
    int parent2child_write_fd = 0;
    int parent2child_read_fd = 0;

    int pipes[2];

    if(pipe(pipes) < 0) {
        return false;
    }

    parent2child_read_fd = pipes[0];
    parent2child_write_fd = pipes[1];

    pid_t pid = fork() 
    
    if(pid == 0) {
        close(parent2child_write_fd);

        pid_t pid = getpid();

        setpgid(0, 0);
        tcsetpgrp(0, pid);

        if(dup2(parent2child_read_fd, 0) < 0) {
            fprintf(stderr, "dup2 error\n");
            exit(1);
        }
        close(parent2child_read_fd);

        if(execvp(name, argv) < 0) {
            exit(64);
        }

        exit(0);
    }

    setpgid(pid, pid);
    tcsetpgrp(0, pid);

    close(parent2child_read_fd);
    
    CLObject obj = (*stack_ptr-num_params-1)->mObjectValue;
    sCLCommand* command_data = CLCOMMAND(obj);

    if(write(parent2child_write_fd, command_data->mOutput, command_data->mOutputLen) < 0) {
        return false;
    }
    close(parent2child_write_fd);

    int status = 0;

    pid_t pid2 = waitpid(pid, &status, WUNTRACED);

    if(WEXITSTATUS(status) == 64) {
        vm_err_msg(stack_ptr, info, xsprintf("command not found(%s)\n", name));
        return false;
    }

    if(WIFSTOPPED(status)) {
        int rcode = WSTOPSIG(status) +128;

        char title[JOB_TITLE_MAX];
        xstrncpy(title, name, JOB_TITLE_MAX);

        termios tinfo;
        if(tcgetattr(0, &tinfo) < 0) {
            return false;
        }

        int pgrp = pid;

        CLObject job = create_job_object(title, &tinfo, pgrp, info);

        gJobs.push_back(job);

        setpgid(getpid(), getpid());
        tcsetpgrp(0, getpid());

        int rcode2 = WEXITSTATUS(status);

        (*stack_ptr) -= num_params + 1;

        (*stack_ptr)->mObjectValue = create_command_object("", 1, "", 1, rcode2, info);
        (*stack_ptr)++;
    }
    else {
        setpgid(getpid(), getpid());
        tcsetpgrp(0, getpid());

        int rcode = WEXITSTATUS(status);

        (*stack_ptr) -= num_params + 1;

        (*stack_ptr)->mObjectValue = create_command_object("", 1, "", 1, rcode, info);
        (*stack_ptr)++;
    }

    return true;
}

bool invoke_command_with_pipe(CLObject parent_obj, char* name, char** argv, CLVALUE** stack_ptr, int num_params, sVMInfo* info)
{
    int child2parent_write_fd = 0;
    int child2parent_read_fd = 0;
    int parent2child_write_fd = 0;
    int parent2child_read_fd = 0;
    int child2parent_read_fd_err = 0;
    int child2parent_write_fd_err = 0;

    int pipes[2];

    pipe(pipes);
    child2parent_read_fd = pipes[0];
    child2parent_write_fd = pipes[1];
    pipe(pipes);
    parent2child_read_fd = pipes[0];
    parent2child_write_fd = pipes[1];
    pipe(pipes);
    child2parent_read_fd_err = pipes[0];
    child2parent_write_fd_err = pipes[1];

    pid_t pid = fork();
    
    if(pid == 0) {
        close(parent2child_write_fd);
        close(child2parent_read_fd);
        close(child2parent_read_fd_err);

        dup2(parent2child_read_fd, 0);
        dup2(child2parent_write_fd, 1);
        dup2(child2parent_write_fd_err, 2);

        close(parent2child_read_fd);
        close(child2parent_write_fd);
        close(child2parent_write_fd_err);

        if(execvp(name, argv) < 0) {
            exit(64);
        }

        exit(2);
    }

    close(parent2child_read_fd);
    close(child2parent_write_fd);
    close(child2parent_write_fd_err);

    CLObject obj = (*stack_ptr-num_params-1)->mObjectValue;
    sCLCommand* command_data = CLCOMMAND(obj);

    if(write(parent2child_write_fd, command_data->mOutput, command_data->mOutputLen) < 0) {
        return false;
    }
    close(parent2child_write_fd);

    buffer*% child_output = new buffer.initialize();
    buffer*% child_output_error = new buffer.initialize();
    
    while(true) {
        char pipe_data[128];
        int readed_byte = read(child2parent_read_fd, pipe_data, 128);

        char pipe_data_err[128];
        int readed_byte_err = read(child2parent_read_fd_err, pipe_data_err, 128);

        if(readed_byte == 0 && readed_byte_err == 0) {
            break;
        }

        child_output.append(pipe_data, readed_byte);
        child_output_error.append(pipe_data_err, readed_byte_err);
    }

    close(child2parent_read_fd);
    close(child2parent_read_fd_err);

    int status = 0;

    pid_t pid2 = waitpid(pid, &status, WUNTRACED);

    if(WEXITSTATUS(status) == 64) {
        vm_err_msg(stack_ptr, info, xsprintf("command not found(%s)\n", name));
        return false;
    }

    (*stack_ptr) -= num_params + 1;

    int rcode = WEXITSTATUS(status);
    (*stack_ptr)->mObjectValue = create_command_object(child_output.buf, child_output.len, child_output_error.buf, child_output_error.len, rcode, info);
    (*stack_ptr)++;

    return true;
}

void jobs(sVMInfo* info)
{
    gJobs.each {
        sCLJob* job_data = CLJOB(it);

        char title[JOB_TITLE_MAX];

        xstrncpy(title, job_data->mTitle, JOB_TITLE_MAX);

        printf("job %d %s\n", it2, title);
    }
}

bool forgroud_job(int job_num, sVMInfo* info)
{
    CLObject job_object = gJobs.item(job_num, 9999);

    if(job_object != 9999) {
        sCLJob* job_data = CLJOB(job_object);

        char title[JOB_TITLE_MAX];
        xstrncpy(title, job_data.mTitle, JOB_TITLE_MAX);

        termios tinfo = job_data.mTermInfo;
        pid_t pgrp = job_data.mPGrp;

        termios tinfo2;
        if(tcgetattr(0, &tinfo2) < 0) {
            return false;
        }

        tcsetattr(0, TCSANOW, &tinfo);
        tcsetpgrp(0, pgrp);

        kill(pgrp, SIGCONT);

        int status = 0;
        pid_t pid2 = waitpid(pgrp, &status, WUNTRACED);

        if(WIFSTOPPED(status)) {
            tcsetattr(0, TCSANOW, &tinfo2);
            tcsetpgrp(0, getpid());
        }
        else if(WIFSIGNALED(status)) {
            gJobs.replace(job_num, 9999);
            printf("Job<%s> is done.\n", title);

            tcsetattr(0, TCSANOW, &tinfo2);
            tcsetpgrp(0, getpid());
        }
        else {
            gJobs.replace(job_num, 9999);

            tcsetattr(0, TCSANOW, &tinfo2);
            tcsetpgrp(0, getpid());
        }
    }

    return true;
}

bool param_check(sCLParam* method_params, int num_params, CLVALUE* stack_ptr, sCLType * generics_types, sVMInfo* info)
{
    for(int i=0; i<num_params; i++) {
        CLObject obj = (stack_ptr-num_params+i)->mObjectValue;

        sCLObject* object_data = CLOBJECT(obj);

        sCLType* stack_param = object_data->mType;

        sCLParam* param = method_params + i;
        sCLType* type = solve_generics(param->mType, generics_types, info.cinfo.pinfo);

        if(!substitution_posibility(type, stack_param)) {
            return false;
        }
    }

    return true;
}

void ready_for_vm_stack(CLVALUE* stack, int head_params, int num_params, int var_num, int parent_stack_frame_index, bool vm_enable_parent_stack, sVMInfo* info)
{
    sCLStackFrame null_paret_stack_frame;
    memset(&null_paret_stack_frame, 0, sizeof(sCLStackFrame));

    if(parent_stack_frame_index >= 0) {
        sCLStackFrame parent_stack_frame = info.stack_frames.item(parent_stack_frame_index, null_paret_stack_frame);

        if(vm_enable_parent_stack) {
            memcpy(stack, parent_stack_frame.stack, sizeof(CLVALUE)*parent_stack_frame.var_num);
            sCLStackFrame parent_stack_frame2 = info.stack_frames.item(-2, null_paret_stack_frame);
            
            if(num_params > 0) {
                memcpy(stack + head_params, (*parent_stack_frame2.stack_ptr) - (num_params-1), sizeof(CLVALUE)*(num_params-1));
            }
        }
        else {
            if(num_params > 0) {
                memcpy(stack, (*parent_stack_frame.stack_ptr) - num_params, sizeof(CLVALUE)*num_params);
            }
        }
    }
}

void update_parent_stack(CLVALUE* stack, int vm_head_params, int num_params, int var_num, int parent_stack_frame_index, bool enable_parent_stack, sVMInfo* info)
{
    sCLStackFrame null_paret_stack_frame;
    memset(&null_paret_stack_frame, 0, sizeof(sCLStackFrame));

    if(parent_stack_frame_index >= 0) {
        info.stack_frames.pop_back(null_paret_stack_frame);
        sCLStackFrame parent_stack_frame = info.stack_frames.item(parent_stack_frame_index, null_paret_stack_frame);

        if(enable_parent_stack) {
            memcpy(parent_stack_frame.stack, stack, sizeof(CLVALUE)*parent_stack_frame.var_num);
        }
    }
}

bool vm(buffer* codes, int vm_head_params, int vm_num_params, int vm_var_num, int vm_parent_stack_frame_index, bool vm_enable_parent_stack, CLVALUE* result, sVMInfo* info)
{
    sCLStackFrame null_paret_stack_frame;
    memset(&null_paret_stack_frame, 0, sizeof(sCLStackFrame));

    CLVALUE stack[VM_STACK_MAX];
    sCLStackFrame stack_frame;
    
    memset(stack, 0, sizeof(CLVALUE) * VM_STACK_MAX);
    
    CLVALUE* stack_ptr = (CLVALUE*)stack + vm_var_num;

    int* head_codes = (int*)codes.buf;
    int* p = (int*)codes.buf;

    stack_frame.stack = stack;
    stack_frame.stack_ptr = &stack_ptr;
    stack_frame.var_num = vm_var_num;
    stack_frame.index = info.stack_frames.length();

    info.stack_frames.push_back(stack_frame);

    ready_for_vm_stack(stack, vm_head_params, vm_num_params, vm_var_num, vm_parent_stack_frame_index, vm_enable_parent_stack, info);

    if(info->thrown_object.mObjectValue) {
        *(stack_ptr-1) = info->thrown_object;
    }
    
    while(p - head_codes < codes.len) {
        int op = *p;
        p++;
        
        switch(op) {
//print_op(op);
            case OP_POP: {
                stack_ptr--;
                }
                break;
                
            case OP_INT_VALUE: {
                stack_ptr.mObjectValue = create_int_object(*p, info);
                p++;
                
                stack_ptr++;
                }
                break;
                
            case OP_TRUE_VALUE: {
                stack_ptr.mObjectValue = create_bool_object(1, info);
                
                stack_ptr++;
                }
                break;
                
            case OP_FALSE_VALUE: {
                stack_ptr.mObjectValue = create_bool_object(0, info);
                stack_ptr++;
                }
                break;

            case OP_NULL_VALUE: {
                CLObject obj = create_null_object(info);
                stack_ptr.mObjectValue = obj;
                
                stack_ptr++;
                }
                break;
                
                
            case OP_STRING_VALUE: {
                char* str = (char*)p;
                int len = strlen(str) + 1;

                alignment(&len);

                len = len / sizeof(int);

                p += len;

                int obj = create_string_object(str, info);
                
                stack_ptr.mObjectValue = obj;
                stack_ptr++;
                }
                break;

            case OP_CREATE_OBJECT: {
                char* type_name = (char*)p;

                int len = strlen(type_name) + 1;

                alignment(&len);

                len = len / sizeof(int);

                p += len;

                sCLType* type = parse_type_runtime(type_name, info);



                if(type == null) {
                    vm_err_msg(&stack_ptr, info, xsprintf("class not found(%s)\n", type_name));
                    update_parent_stack(stack, vm_head_params, vm_num_params, vm_var_num, vm_parent_stack_frame_index, vm_enable_parent_stack, info);
                    return false;
                }

                int obj = create_object(type, info);

                stack_ptr.mObjectValue = obj;
                stack_ptr++;
                }
                break;

            case OP_CREATE_BLOCK_OBJECT: {
                char* type_name = (char*)p;

                int len = strlen(type_name) + 1;

                alignment(&len);

                len = len / sizeof(int);

                p += len;

                int head_params = *p;
                p++;

                int var_num = *p;
                p++;

                int codes_len = *p;
                p++;

                int* codes = p;

                p += codes_len / sizeof(int);

                int obj = create_block_object(type_name, codes, codes_len, head_params, var_num, info.stack_frames.length()-1, info);

                stack_ptr.mObjectValue = obj;
                stack_ptr++;
                }
                break;
                
            case OP_IADD: {
                int lvalue = (stack_ptr-2).mObjectValue;
                int rvalue = (stack_ptr-1).mObjectValue;

                sCLInt* lvalue_data = CLINT(lvalue);
                sCLInt* rvalue_data = CLINT(rvalue);

                int value = lvalue_data->mValue + rvalue_data->mValue;
                CLObject new_obj = create_int_object(value, info);

                stack_ptr -= 2;
                stack_ptr.mObjectValue = new_obj;
                stack_ptr++;
                }
                
                break;
                

            case OP_IEQ: {
                int lvalue = (stack_ptr-2).mObjectValue;
                int rvalue = (stack_ptr-1).mObjectValue;

                sCLInt* lvalue_data = CLINT(lvalue);
                sCLInt* rvalue_data = CLINT(rvalue);

                int value = lvalue_data->mValue == rvalue_data->mValue;
                CLObject new_obj = create_bool_object(value, info);

                stack_ptr -= 2;
                stack_ptr.mObjectValue = new_obj;
                stack_ptr++;
                }
                
                break;

            case OP_EQ: {
                int lvalue = (stack_ptr-2).mObjectValue;
                int rvalue = (stack_ptr-1).mObjectValue;

                int value = lvalue == rvalue;
                CLObject new_obj = create_bool_object(value, info);

                stack_ptr -= 2;
                stack_ptr.mObjectValue = new_obj;
                stack_ptr++;
                }
                
                break;
                
            case OP_INOTEQ: {
                int lvalue = (stack_ptr-2).mObjectValue;
                int rvalue = (stack_ptr-1).mObjectValue;

                sCLInt* lvalue_data = CLINT(lvalue);
                sCLInt* rvalue_data = CLINT(rvalue);

                int value = lvalue_data->mValue != rvalue_data->mValue;
                CLObject new_obj = create_bool_object(value, info);

                stack_ptr -= 2;
                stack_ptr.mObjectValue = new_obj;
                stack_ptr++;
                }
                
                break;

            case OP_NOTEQ: {
                int lvalue = (stack_ptr-2).mObjectValue;
                int rvalue = (stack_ptr-1).mObjectValue;

                int value = lvalue != rvalue;
                CLObject new_obj = create_bool_object(value, info);

                stack_ptr -= 2;
                stack_ptr.mObjectValue = new_obj;
                stack_ptr++;
                }
                
                break;

            case OP_ANDAND: {
                int lvalue = (stack_ptr-2).mObjectValue;
                int rvalue = (stack_ptr-1).mObjectValue;

                sCLInt* lvalue_data = CLINT(lvalue);
                sCLInt* rvalue_data = CLINT(rvalue);

                int value = lvalue_data->mValue && rvalue_data->mValue;
                CLObject new_obj = create_bool_object(value, info);

                stack_ptr -= 2;
                stack_ptr.mObjectValue = new_obj;
                stack_ptr++;
                }
                
                break;

            case OP_OROR: {
                int lvalue = (stack_ptr-2).mObjectValue;
                int rvalue = (stack_ptr-1).mObjectValue;

                sCLInt* lvalue_data = CLINT(lvalue);
                sCLInt* rvalue_data = CLINT(rvalue);

                int value = lvalue_data->mValue || rvalue_data->mValue;
                CLObject new_obj = create_bool_object(value, info);

                stack_ptr -= 2;
                stack_ptr.mObjectValue = new_obj;
                stack_ptr++;
                }
                
                break;
                
            case OP_ILT: {
                int lvalue = (stack_ptr-2).mObjectValue;
                int rvalue = (stack_ptr-1).mObjectValue;

                sCLInt* lvalue_data = CLINT(lvalue);
                sCLInt* rvalue_data = CLINT(rvalue);

                int value = lvalue_data->mValue < rvalue_data->mValue;
                CLObject new_obj = create_bool_object(value, info);

                stack_ptr -= 2;
                stack_ptr.mObjectValue = new_obj;
                stack_ptr++;
                }
                
                break;

            case OP_IGT: {
                int lvalue = (stack_ptr-2).mObjectValue;
                int rvalue = (stack_ptr-1).mObjectValue;

                sCLInt* lvalue_data = CLINT(lvalue);
                sCLInt* rvalue_data = CLINT(rvalue);

                int value = lvalue_data->mValue > rvalue_data->mValue;
                CLObject new_obj = create_bool_object(value, info);

                stack_ptr -= 2;
                stack_ptr.mObjectValue = new_obj;
                stack_ptr++;
                }
                
                break;

            case OP_ILE: {
                int lvalue = (stack_ptr-2).mObjectValue;
                int rvalue = (stack_ptr-1).mObjectValue;

                sCLInt* lvalue_data = CLINT(lvalue);
                sCLInt* rvalue_data = CLINT(rvalue);

                int value = lvalue_data->mValue <= rvalue_data->mValue;
                CLObject new_obj = create_bool_object(value, info);

                stack_ptr -= 2;
                stack_ptr.mObjectValue = new_obj;
                stack_ptr++;
                }
                
                break;

            case OP_IGE: {
                int lvalue = (stack_ptr-2).mObjectValue;
                int rvalue = (stack_ptr-1).mObjectValue;

                sCLInt* lvalue_data = CLINT(lvalue);
                sCLInt* rvalue_data = CLINT(rvalue);

                int value = lvalue_data->mValue >= rvalue_data->mValue;
                CLObject new_obj = create_bool_object(value, info);

                stack_ptr -= 2;
                stack_ptr.mObjectValue = new_obj;
                stack_ptr++;
                }
                
                break;

            case OP_STORE_VARIABLE: {
                int var_index = *p;
                p++;

//printf("STORE_VARIABLE var_index %d\n", var_index);
                
                stack[var_index] = *(stack_ptr-1);
                }
                break;
                
            case OP_LOAD_VARIABLE: {
                int var_index = *p;
                p++;
//printf("LOAD_VARIABLE var_index %d\n", var_index);

                *stack_ptr = stack[var_index];
                stack_ptr++;
                }

            case OP_COND_JUMP: {
                int jump_size = *p;
                p++;

                CLObject conditional = (stack_ptr-1).mObjectValue;
                sCLInt* conditional_data = CLINT(conditional);

                int value = conditional_data->mValue;
                stack_ptr--;

                if(value) {
                    p += jump_size;
                }
                }
                break;

            case OP_COND_NOT_JUMP: {
                int jump_size = *p;
                p++;

                CLObject conditional = (stack_ptr-1).mObjectValue;
                sCLInt* conditional_data = CLINT(conditional);

                int value = conditional_data->mValue;
                stack_ptr--;

                if(!value) {
                    p += jump_size;
                }
                }
                break;

            case OP_GOTO: {
                int goto_point = *p;
                p++;

                p = (int*)(((char*)head_codes) + goto_point);
                }
                break;

            case OP_INVOKE_METHOD: { 
                char* method_name = (char*)p;

                int len = strlen(method_name) + 1;

                alignment(&len);

                len = len / sizeof(int);

                p += len;

                int num_params = *p;
                p++;

                CLObject obj = (stack_ptr-num_params)->mObjectValue;

                sCLObject* object_data = CLOBJECT(obj);
                sCLType* generics_types = object_data->mType;

                sCLClass* klass = object_data->mType->mClass;

                if(klass == null) {
                    vm_err_msg(&stack_ptr, info, xsprintf("class not found(%s)\n", klass->mName));
                    update_parent_stack(stack, vm_head_params, vm_num_params, vm_var_num, vm_parent_stack_frame_index, vm_enable_parent_stack, info);
                    return false;
                }
                

                sCLMethod* method = null;
                while(klass) {
                    method = klass.mMethods.at(method_name, null);

                    if(method) {
                        break;
                    }

                    klass = klass->mParent;
                }

                if(method == null) {
                    vm_err_msg(&stack_ptr, info, xsprintf("method not found(%s.%s)\n", klass->mName, method_name));
                    update_parent_stack(stack, vm_head_params, vm_num_params, vm_var_num, vm_parent_stack_frame_index, vm_enable_parent_stack, info);
                    return false;
                }
int var_num = method.mMaxVarNum;
//print_method(klass, method, num_params, var_num);

                if(!param_check(method->mParams, method->mNumParams, stack_ptr, generics_types, info))
                {
                    vm_err_msg(&stack_ptr, info, xsprintf("method parametor is invalid(%s.%s)\n", klass->mName, method_name));
                    update_parent_stack(stack, vm_head_params, vm_num_params, vm_var_num, vm_parent_stack_frame_index, vm_enable_parent_stack, info);
                    return false;
                }

                if(method.mByteCodes == null) {
                    if(!invoke_native_method(klass, method, &stack_ptr, info)) 
                    {
                        vm_err_msg(&stack_ptr, info, xsprintf("native method error(%s.%s)\n", klass->mName, method_name));
                        update_parent_stack(stack, vm_head_params, vm_num_params, vm_var_num, vm_parent_stack_frame_index, vm_enable_parent_stack, info);
                        return false;
                    }

                    CLVALUE result_value = *(stack_ptr-1);

                    stack_ptr -= num_params;
                    bool result_existance = !type_identify_with_class_name(method->mResultType, "void", info.pinfo);

                    if(result_existance) {
                        stack_ptr--;
                        *stack_ptr = result_value;
                        stack_ptr++;
                    }
                }
                else {
                    buffer* codes = method.mByteCodes;

                    int var_num = method.mMaxVarNum;

                    CLVALUE result;
                    if(!vm(codes, 0, num_params, var_num, info.stack_frames.length()-1, false, &result, info)) {
                        update_parent_stack(stack, vm_head_params, vm_num_params, vm_var_num, vm_parent_stack_frame_index, vm_enable_parent_stack, info);
                        return false;
                    }

                    stack_ptr -= num_params;
                    bool result_existance = !type_identify_with_class_name(method->mResultType, "void", info.pinfo);

                    if(result_existance) {
                        *stack_ptr = result;
                        stack_ptr++;
                    }
                    else {
                        (*stack_ptr).mObjectValue = create_null_object(info);
                        stack_ptr++;
                    }
                }
//print_method_end(klass, method, *(stack_ptr-1));

                }
                break;

            case OP_INVOKE_BLOCK_OBJECT: {
                int var_num = *p;
                p++;

                int num_params = *p;
                p++;

                int result_existance = *p;
                p++;

                int block_object = (*(stack_ptr-num_params)).mObjectValue;

                sCLBlock* block_data = CLBLOCK(block_object);

                int* codes = block_data->codes;
                int codes_len = block_data->codes_len;
                int head_params = block_data->head_params;
                int parent_stack_frame_index = block_data->stack_frame_index;

                int var_num2 = block_data->var_num;

                buffer*% buffer = new buffer.initialize();

                buffer.append((char*)codes, codes_len);

//print_block(num_params, var_num2);

                CLVALUE result;
                if(!vm(buffer, head_params, num_params, var_num2, parent_stack_frame_index, true, &result, info)) {
                    update_parent_stack(stack, vm_head_params, vm_num_params, vm_var_num, vm_parent_stack_frame_index, vm_enable_parent_stack, info);
                    return false;
                }

                stack_ptr -= num_params;

                if(result_existance) {
                    *stack_ptr = result;
                    stack_ptr++;
                }
//print_block_end(*(stack_ptr-1));

                }
                break;
                
            case OP_INVOKE_COMMAND: { 
                char* command_name = (char*)p;

                int len = strlen(command_name) + 1;

                alignment(&len);

                len = len / sizeof(int);

                p += len;

                int num_params = *p;
                p++;

                int last_method_chain = *p;
                p++;

                CLObject parent_obj = (stack_ptr-num_params-1)->mObjectValue;


                bool first_method_chain;
                if(parent_obj == 0) {
                    first_method_chain = true;
                }
                else {
                    first_method_chain = false;
                }

                char* argv[PARAMS_MAX];

                argv[0] = command_name;

                for(int i=0; i<num_params; i++) {
                    CLObject obj = (stack_ptr-num_params+i)->mObjectValue;

                    sCLString* object_data = CLSTRING(obj);

                    sCLType* string_type = create_type("string", info.cinfo.pinfo);
                    if(!substitution_posibility(string_type, object_data->mType))
                    {
                        vm_err_msg(&stack_ptr, info, "type error command parametor");
                        update_parent_stack(stack, vm_head_params, vm_num_params, vm_var_num, vm_parent_stack_frame_index, vm_enable_parent_stack, info);
                        return false;
                    }

                    argv[i+1] = object_data->mData;
                }
                argv[num_params+1] = null;

                if(first_method_chain) {
                    if(last_method_chain) {
                        if(!invoke_command_with_control_terminal(command_name, argv, num_params, &stack_ptr, info))
                        {
                            vm_err_msg(&stack_ptr, info, xsprintf("invoke command error(%s)", command_name));
                            update_parent_stack(stack, vm_head_params, vm_num_params, vm_var_num, vm_parent_stack_frame_index, vm_enable_parent_stack, info);
                            return false;
                        }
                    }
                    else {
                        if(!invoke_command(command_name, argv, &stack_ptr, num_params, info))
                        {
                            vm_err_msg(&stack_ptr, info, xsprintf("invoke command error(%s)", command_name));
                            update_parent_stack(stack, vm_head_params, vm_num_params, vm_var_num, vm_parent_stack_frame_index, vm_enable_parent_stack, info);
                            return false;
                        }
                    }
                }
                else {
                    if(last_method_chain) {
                        if(!invoke_command_with_control_terminal_and_pipe(parent_obj, command_name, argv, num_params, &stack_ptr, info))
                        {
                            vm_err_msg(&stack_ptr, info, xsprintf("invoke command error(%s)", command_name));
                            update_parent_stack(stack, vm_head_params, vm_num_params, vm_var_num, vm_parent_stack_frame_index, vm_enable_parent_stack, info);
                            return false;
                        }
                    }
                    else {
                        if(!invoke_command_with_pipe(parent_obj, command_name, argv, &stack_ptr, num_params, info))
                        {
                            vm_err_msg(&stack_ptr, info, xsprintf("invoke command error(%s)", command_name));
                            update_parent_stack(stack, vm_head_params, vm_num_params, vm_var_num, vm_parent_stack_frame_index, vm_enable_parent_stack, info);
                            return false;
                        }
                    }
                }
                }
                break;

            case OP_JOBS: {
                jobs(info);
                }
                break;

            case OP_FG: {
                int job_num = *p;
                p++;

                if(!forgroud_job(job_num, info)) {
                    vm_err_msg(&stack_ptr, info, "fg error");
                    update_parent_stack(stack, vm_head_params, vm_num_params, vm_var_num, vm_parent_stack_frame_index, vm_enable_parent_stack, info);
                    return false;
                }
                }
                break;

            case OP_STORE_FIELD: {
                int field_index = *p;
                p++;
                
                CLObject obj =  (stack_ptr-2)->mObjectValue;
                CLVALUE value =  *(stack_ptr-1);
                sCLObject* object_data = CLOBJECT(obj);

                object_data->uValue.mFields[field_index] = value;

//printf("obj %d field_index %d value %d\n", obj, field_index, value.mObjectValue);

                stack_ptr -= 2;
                *stack_ptr = value;
                stack_ptr++;
                }
                break;

            case OP_LOAD_FIELD: {
                int field_index = *p;
                p++;
                
                CLObject obj =  (stack_ptr-1)->mObjectValue;
                sCLObject* object_data = CLOBJECT(obj);

                stack_ptr --;

                *stack_ptr = object_data->uValue.mFields[field_index];
                stack_ptr++;
                }
                break;

            case OP_EXIT: {
                CLObject obj = (stack_ptr-1)->mObjectValue;
                sCLInt* object_data = CLINT(obj);

                exit(object_data->mValue);

                stack_ptr --;
                }
                break;

            case OP_TRY: {
                int try_codes_len = *p;
                p++;

                int* try_head_codes = p;

                p += try_codes_len / sizeof(int);

                int try_var_num = *p;
                p++;

                int catch_codes_len = *p;
                p++;

                int* catch_head_codes = p;

                p += catch_codes_len / sizeof(int);

                int catch_var_num = *p;
                p++;

                buffer*% try_codes = new buffer.initialize();
                try_codes.append((char*)try_head_codes, try_codes_len);

                int head_params = 0;
                int num_params = 0;
                int var_num = try_var_num;

                int parent_stack_frame_index = info.stack_frames.length()-1;
                bool enable_parent_stack = true;

                CLVALUE result_obj;
//puts("try block");
                info->thrown_object.mObjectValue = 0;
                bool result = vm(try_codes, head_params, num_params, var_num, parent_stack_frame_index, enable_parent_stack, &result_obj, info);
//puts("try block end");

                if(!result) {
                    buffer*% catch_codes = new buffer.initialize();
                    catch_codes.append((char*)catch_head_codes, catch_codes_len);

                    int head_params = 0;
                    int num_params = 1;
                    int var_num = catch_var_num;

                    int parent_stack_frame_index = info.stack_frames.length()-1;
                    bool enable_parent_stack = true;

                    CLVALUE result_obj;
//puts("catch block");
                    if(!vm(catch_codes, head_params, num_params, var_num, parent_stack_frame_index, enable_parent_stack, &result_obj, info))
                    {
                        update_parent_stack(stack, vm_head_params, vm_num_params, vm_var_num, vm_parent_stack_frame_index, vm_enable_parent_stack, info);
                        return false;
                    }
//puts("catch block end");
                }
                info->thrown_object.mObjectValue = 0;

                }
                
                break;

            case OP_RETURN:
                update_parent_stack(stack, vm_head_params, vm_num_params, vm_var_num, vm_parent_stack_frame_index, vm_enable_parent_stack, info);

                *result = *(stack_ptr-1);
    
                return true;

            case OP_THROW: 
                info->thrown_object = *(stack_ptr-1);
                stack_ptr--;

                update_parent_stack(stack, vm_head_params, vm_num_params, vm_var_num, vm_parent_stack_frame_index, vm_enable_parent_stack, info);
    
                return false;
                break;
        }
//puts("end");
//print_stack(stack, stack_ptr, vm_var_num);
    };

    *result = *(stack_ptr-1);

    update_parent_stack(stack, vm_head_params, vm_num_params, vm_var_num, vm_parent_stack_frame_index, vm_enable_parent_stack, info);
    
    return true;
}

