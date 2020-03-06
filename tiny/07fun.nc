#include "common.h"
#include <stdio.h>
#include <ctype.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>

impl TVALUE version 7 {
    finalize() {
        inherit(self);

        if(self.type == COMMAND_VALUE) {
            delete self.uValue.commandValue.value;
            delete self.uValue.commandValue.err_value;
        }
    }
}

impl TinyNode version 7
{
finalize() {
    inherit(self);

    if(self.type == NODETYPE_CALL_EXTERNAL_FUN) {
        delete self.callExternalFunValue.name;

        for(int i=0; i<self.callExternalFunValue.num_params; i++) {
            TinyNode* node = self.callExternalFunValue.params[i];
            delete node;
        }

        delete self.callExternalFunValue.params;
    }
    else if(self.type == NODETYPE_FUN) {
        delete self.funValue.name;
        delete self.funValue.params;
        
        TinyBlock* block2 = (TinyBlock*)self.funValue.block;
        delete block2;
    }
}

TinyNode*% clone(TinyNode* self) {
    var result = inherit(self);

    if(self.type == NODETYPE_CALL_EXTERNAL_FUN) {
        result.varValue.name = borrow clone self.varValue.name;
        result.callExternalFunValue.num_params = self.callExternalFunValue.num_params;
        result.callExternalFunValue.params = borrow clone self.callExternalFunValue.params;
        for(int i=0; i<self.callExternalFunValue.num_params; i++) {
            TinyNode* node = self.callExternalFunValue.params[i];
            result.callExternalFunValue.params[i] = borrow clone node;
        }
    }
    else if(self.type == NODETYPE_FUN) {
        result.funValue.name = clone self.funValue.name;
        result.funValue.params = clone self.funValue.params;
        
        TinyBlock* block2 = (TinyBlock*)self.funValue.block;

        result.funValue.block = borrow clone block2;
    }

    return result;
}

TinyNode*% createCallExternalFun(TinyNode%* self, string& name, int num_params, TinyNode** params) {
    self.type = NODETYPE_CALL_EXTERNAL_FUN;

    self.callExternalFunValue.name = borrow clone name;
    self.callExternalFunValue.num_params = num_params;
    self.callExternalFunValue.params = borrow new TinyNode*[num_params];
    for(int i=0; i<num_params; i++) {
        self.callExternalFunValue.params[i] = borrow clone params[i];
    }

    self.callExternalFunValue.last_chain = true;

    self.stackValue = 1;

    return self;
}

TinyNode*% createFunNode(TinyNode%* self, string fun_name, vector<string>*% params, TinyBlock*% block) {
    self.type = NODETYPE_FUN;

    self.funValue.name = borrow clone fun_name;
    self.funValue.params = borrow clone params;
    self.funValue.block = (void*)borrow clone block;

    self.stackValue = 1;

    return self;
}

void debug(TinyNode* self) {
    inherit(self);

    if(!self.debug_runned_default) {
        return;
    }
    
    switch(self.type) {
        case NODETYPE_CALL_EXTERNAL_FUN :
            printf("fun node %p\n", self);
            printf("num_params %d\n", self.callExternalFunValue.num_params);
            break;

        default:
            self.debug_runned_default = true;
            break;
    }
}
}

impl TinyParser version 7
{

TinyNode*% node(TinyParser* self) {
    var node = inherit(self);

    if(*self.p == '.') {
        self.p++;
        self.skipSpaces();
        
        if(!isalpha(*self.p)) {
            self.errMessage("require alphabets for method or field name");
            self.errNumber++;
            return null;
        }
        
        var buf = self.parseWord();
        
        if(*self.p == '(') {
            self.p++;
            self.skipSpaces();

            var params = new vector<TinyNode*%>.initialize();
            
            if(node.type == NODETYPE_CALL_EXTERNAL_FUN) {
                node.callExternalFunValue.last_chain = false;
            }
            else if(node.type == NODETYPE_LOAD_VAR) {
                node.loadVarValue.last_chain = false;
            }

            params.push_back(clone node);

            while(true) {
                if(*self.p == '\0') {
                    self.errMessage("Require ) before the source end");
                    self.errNumber++;
                    break;
                }
                else if(*self.p == ')') {
                    self.p++;
                    self.skipSpaces();
                    break;
                }
                else {
                    if(*self.p == ',') {
                        self.p++;
                        self.skipSpaces();
                    }

                    var param = self.expression();

                    if(param == null) {
                        self.errMessage("Null expression");
                        self.errNumber++;
                        break;
                    }

                    params.push_back(param);
                }
            }

            int num_params = params.length();
            var params2 = new TinyNode*[num_params];
            params.each {
                params2[it2] = it;
            }

            var result = new TinyNode.createCallExternalFun(buf, num_params, params2);
            
            return result;
        }
        else if(node.type == NODETYPE_CALL_EXTERNAL_FUN || node.type == NODETYPE_LOAD_VAR) {
            var params = new vector<TinyNode*%>.initialize();
            
            if(node.type == NODETYPE_CALL_EXTERNAL_FUN) {
                node.callExternalFunValue.last_chain = false;
            }
            else if(node.type == NODETYPE_LOAD_VAR) {
                node.loadVarValue.last_chain = false;
            }

            params.push_back(clone node);

            int num_params = params.length();
            var params2 = new TinyNode*[num_params];
            params.each {
                params2[it2] = it;
            }

            var result = new TinyNode.createCallExternalFun(buf, num_params, params2);
            
            return result;
        }
        else {
            return clone node;
        }
    }

    return node;
}

TinyNode*% wordNode(TinyParser* self, string& buf) {
    var word_node = inherit(self, buf);

    if(word_node != null) {
        return word_node;
    }
    else {
        if(strcmp(buf, "def") == 0) {
            if(!isalpha(*self.p)) {
                self.errMessage(xasprintf("require function name. (%c)", *self.p));
                self.errNumber++;
                return null;
            }

            var fun_name = self.parseWord();

            self.expectNextCharacter('(');

            var params = new vector<string>.initialize();

            while(true) {
                if(*self->p == ')') {
                    self->p++;
                    self.skipSpaces();
                    break;
                }

                if(!isalpha(*self.p)) {
                    self.errMessage("require parametor name");
                    self.errNumber++;
                    return null;
                }
                var param = self.parseWord();

                params.push_back(param);

                if(*self->p == ',') {
                    self->p++;
                    self.skipSpaces();
                }
                else if(*self->p == ')') {
                    self->p++;
                    self.skipSpaces();
                    break;
                }
            }
            var block = self.parseBlock();

            return new TinyNode.createFunNode(fun_name, params, block);
        }
        else if(*self.p == '(') {
            self.p++;
            self.skipSpaces();

            var params = new vector<TinyNode*%>.initialize();

            while(true) {
                if(*self.p == '\0') {
                    self.errMessage("Require ) before the source end");
                    self.errNumber++;
                    break;
                }
                else if(*self.p == ')') {
                    self.p++;
                    self.skipSpaces();
                    break;
                }
                else {
                    if(*self.p == ',') {
                        self.p++;
                        self.skipSpaces();
                    }

                    var param = self.expression();

                    if(param == null) {
                        self.errMessage("Null expression");
                        self.errNumber++;
                        break;
                    }

                    params.push_back(param);
                }
            }

            int num_params = params.length();
            var params2 = new TinyNode*[num_params];
            params.each {
                params2[it2] = it;
            }

            return new TinyNode.createCallExternalFun(buf, num_params, params2);
        }
        else {
            return null;
        }
    }
}
};

impl TinyVM version 7
{
bool runCommand(TinyVM* self, char* command, char** argv, buffer* pipe_data, TVALUE* result)
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

        execvp(command, argv);
        exit(2);
    }

    close(parent2child_read_fd);
    close(child2parent_write_fd);
    close(child2parent_write_fd_err);

    if(pipe_data != null) {
        if(write(parent2child_write_fd, pipe_data.buf, pipe_data.len) < 0) {
            kill(pid, SIGTERM);
        }
    }
    close(parent2child_write_fd);

    var child_output = new buffer.initialize();
    var child_output_error = new buffer.initialize();
    
    while(true) {
        char buf[BUFSIZ];
        int readed_byte = read(child2parent_read_fd, buf, BUFSIZ);

        char err_buf[BUFSIZ];
        int readed_byte_err = read(child2parent_read_fd_err, err_buf, BUFSIZ);

        if(readed_byte < 0 || readed_byte_err < 0) {
            perror("pipe error");
            break;
        }

        if(readed_byte == 0 && readed_byte_err == 0) {
            break;
        }

        child_output.append(buf, readed_byte);
        child_output_error.append(err_buf, readed_byte_err);
    }

    close(child2parent_read_fd);
    close(child2parent_read_fd_err);

    int status = 0;

    pid_t pid2 = waitpid(pid, &status, WUNTRACED);

    if(WEXITSTATUS(status) == 64) {
        fprintf(stderr, "Command not found(%s)\n", command);
        exit(2);
    }

    var child_output_str = child_output.to_string();
    var child_output_error_str = child_output_error.to_string();

    result.type = COMMAND_VALUE;
    result.uValue.commandValue.value = borrow clone child_output_str;
    result.uValue.commandValue.err_value = borrow clone child_output_error_str;
    result.uValue.commandValue.wait_status = WEXITSTATUS(status);

    return true;
}

bool runCommandControllingTerminalWithPipe(TinyVM* self, char* command, char** argv, buffer* pipe_data, TVALUE* result)
{
    int parent2child_write_fd = 0;
    int parent2child_read_fd = 0;

    int pipes[2];

    pipe(pipes);
    
    parent2child_read_fd = pipes[0];
    parent2child_write_fd = pipes[1];

    pid_t pid = fork();

    if(pid == 0) {
        close(parent2child_write_fd);

        pid_t pid = getpid();

        setpgid(0, 0);
        tcsetpgrp(0, pid);

        dup2(parent2child_read_fd, 0);
        close(parent2child_read_fd);

        execvp(command, argv);
        exit(2);
    }

    setpgid(pid, pid);
    tcsetpgrp(0, pid);

    close(parent2child_read_fd);

    if(pipe_data != null) {
        if(write(parent2child_write_fd, pipe_data.buf, pipe_data.len) < 0) {
            kill(pid, SIGTERM);
        }
    }
    close(parent2child_write_fd);

    int status = 0;

    pid_t pid2 = waitpid(pid, &status, WUNTRACED);

    if(WEXITSTATUS(status) == 64) {
        fprintf(stderr, "Command not found(%s)\n", command);
        exit(2);
    }

/*
    if(WIFSTOPPED(status)) {
        rcode := WSTOPSIG(status) +128;
        title:String = method_name;

        terminfo := tcgetattr(0);

        job := Job(title, pid, terminfo);

        Clover.jobs.add(job);

        setpgid(getpid(), getpid());
        tcsetpgrp(0, getpid());

        return Command("", rcode);
    }
    else {
*/
        setpgid(getpid(), getpid());
        tcsetpgrp(0, getpid());

        result.type = COMMAND_VALUE;
        result.uValue.commandValue.value = borrow string("");
        result.uValue.commandValue.err_value = borrow string("");
        result.uValue.commandValue.wait_status = WEXITSTATUS(status);

        return true;
    //}
}

bool runCommandControllingTerminal(TinyVM* self, char* command, char** argv, TVALUE* result)
{
    pid_t pid = fork();
    if(pid == 0) {
        pid_t pid = getpid();

        setpgid(0, 0);
        tcsetpgrp(0, pid);

        execvp(command, argv);
        exit(2);
    }

    setpgid(pid, pid);
    tcsetpgrp(0, pid);

    int status = 0;

    pid_t pid2 = waitpid(pid, &status, WUNTRACED);

    if(WEXITSTATUS(status) == 64) {
        fprintf(stderr, "Command not found(%s)\n", command);
        exit(2);
    }

    if(WIFSTOPPED(status)) {
/*
        rcode := WSTOPSIG(status) +128;
        title := method_name;

        terminfo := tcgetattr(0);

        job:Job = Job(title, pid, terminfo);

        Clover.jobs.add(job);

        setpgid(getpid(), getpid());
        tcsetpgrp(0, getpid());

        return Command("", rcode);
*/
    }
    else {
        setpgid(getpid(), getpid());
        tcsetpgrp(0, getpid());

        result.type = COMMAND_VALUE;
        result.uValue.commandValue.value = borrow string("");
        result.uValue.commandValue.err_value = borrow string("");
        result.uValue.commandValue.wait_status = WEXITSTATUS(status);
    }

    return true;
}

void loadVariable(TinyVM* self, TinyNode* node)
{
    var vtable = self.vtable.item(-1, null);
    
    var name = clone node.loadVarValue.name;
    var item = vtable.at(name, null);

    if(item == null) {
        char**% argv = new char*[2];
        argv[0] = borrow name;
        argv[1] = null;
        
        if(node.loadVarValue.last_chain) {
            TVALUE* value = self.stack.item(-1, null);

            if(value && value.type == COMMAND_VALUE) {
                TVALUE*% value2 = self.stack.pop_back(null);

                var str = clone value2.uValue.commandValue.value;

                var pipe_data = new buffer.initialize();
                pipe_data.append_str(str);

                TVALUE*% value3 = new TVALUE;

                self.runCommandControllingTerminalWithPipe(name, borrow argv, pipe_data, value3);
    
                self.stack.push_back(value2);
            }
            else {
                TVALUE*% value2 = new TVALUE;
                self.runCommandControllingTerminal(name, borrow argv, value2);
                self.stack.push_back(value2);
            }
        }
        else {
            TVALUE* value = self.stack.item(-1, null);

            if(value && value.type == COMMAND_VALUE) {
                TVALUE*% value2 = self.stack.pop_back(null);

                var pipe_data = new buffer.initialize();
                var str = clone value2.uValue.commandValue.value;
                pipe_data.append_str(str);

                TVALUE*% value3 = new TVALUE;
                self.runCommand(name, borrow argv, pipe_data, value3);
                self.stack.push_back(value2);
            }
            else {
                TVALUE*% value2 = new TVALUE;

                self.runCommand(name, borrow argv, null, value2);
    
                self.stack.push_back(value2);
            }
        }
    }
}


bool compile(TinyVM* self, TinyNode* node) {
    if(!inherit(self, node)) {
        return false;
    }

    if(!self.runned_default) {
        return true;
    }

    switch(node.type) {
        case NODETYPE_CALL_EXTERNAL_FUN : {
            int num_params = node.callExternalFunValue.num_params;

            /// external command ///
            for(int i=0; i<num_params; i++) {
                if(!self.compile(node.callExternalFunValue.params[i])) {
                    return false;
                }
            }

            char**% argv = new char*[num_params+2];
            
            var name = node.callExternalFunValue.name;

            argv[0] = name;

            var v = new vector<string>.initialize();

            for(int i=0; i<num_params-1; i++) {
                TVALUE*% value = self.stack.pop_back(null);
                
                if(value.type != STR_VALUE) {
                    self.parser.errMessage("Require str value");
                    return false;
                }

                var str = clone value.uValue.strValue;
                argv[num_params-i] = borrow str;

                v.push_back(str);
            }

            TVALUE*% value = self.stack.pop_back(null);
            
            if(node.callExternalFunValue.last_chain) {
                if(value == null) {
                    TVALUE*% value2 = new TVALUE;

                    self.runCommandControllingTerminal(name, borrow argv, value2);
                    self.stack.push_back(value2);
                }
                else if(value.type == COMMAND_VALUE) {
                    var str = clone value.uValue.commandValue.value;

                    v.push_back(clone str);

                    for(int i=1; i<num_params+1; i++) {
                        argv[i] = argv[i+1];
                    }
                    argv[num_params+1] = null;

                    TVALUE*% value2 = new TVALUE;

                    var pipe_data = new buffer.initialize();

                    pipe_data.append_str(str);

                    self.runCommandControllingTerminalWithPipe(name, borrow argv, pipe_data, value2);
        
                    self.stack.push_back(value2);
                }
                else if(value.type == STR_VALUE) {
                    var str = clone value.uValue.strValue;
                    argv[1] = borrow str;

                    v.push_back(str);
                    argv[num_params+1] = null;

                    TVALUE*% value2 = new TVALUE;

                    self.runCommandControllingTerminal(name, borrow argv, value2);
        
                    self.stack.push_back(value2);
                }
            }
            else {
                if(value == null) {
                    TVALUE*% value2 = new TVALUE;

                    self.runCommand(name, borrow argv, null, value2);
        
                    self.stack.push_back(value2);
                }
                else if(value.type == COMMAND_VALUE) {
                    var str = clone value.uValue.commandValue.value;

                    v.push_back(clone str);

                    for(int i=1; i<num_params+1; i++) {
                        argv[i] = argv[i+1];
                    }
                    argv[num_params+1] = null;

                    TVALUE*% value2 = new TVALUE;

                    var pipe_data = new buffer.initialize();

                    pipe_data.append_str(str);

                    self.runCommand(name, borrow argv, pipe_data, value2);
        
                    self.stack.push_back(value2);
                }
                else if(value.type == STR_VALUE) {
                    var str = clone value.uValue.strValue;
                    argv[1] = borrow str;

                    v.push_back(str);
                    argv[num_params+1] = null;

                    TVALUE*% value2 = new TVALUE;

                    self.runCommand(name, borrow argv, null, value2);
        
                    self.stack.push_back(value2);
                }
            }
            }
            break;

        case NODETYPE_FUN: {
            char* fun_name = node.funValue.name;
            vector<string>* params = node.funValue.params;
            TinyBlock* block = (TinyBlock*)node.funValue.block;

            TinyFun*% fun = new TinyFun.initialize();

            self.insert(fun_name, node.uValue.funValue.name

            TVALUE*% value2 = new TVALUE;

            value2.funValue = 


            self.stack.push_back(value2);
            }
            break;

        default:
            self.runned_default = true;
            break;
    }

    return true;
}
};

imple TinyFun {
initialize(char* name, vector<string>* params, TinyBlock* block) {
    self.name = string(name);
    self.params = clone params;
    self.block = borrow clone block;
}

finalize() {
    delete self.block;
}

TinyFun*% clone(TinyFun* self) {
    var result = new TinyFun;

    result.name = clone self.name;
    result.params = clone self.params;
    result.block = borrow clone self.block;

    return result;
}
}

