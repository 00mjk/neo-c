#include "common.h"
#include <stdio.h>
#include <ctype.h>
#include <unistd.h>

impl TVALUE version 7 {
    finalize() {
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

    if(self.type == NODETYPE_FUN) {
        delete self.funValue.name;

        for(int i=0; i<self.funValue.num_params; i++) {
            TinyNode* node = self.funValue.params[i];
            delete node;
        }

        delete self.funValue.params;
    }
}

TinyNode*% clone(TinyNode* self) {
    var result = inherit(self);

    if(self.type == NODETYPE_FUN) {
        result.varValue.name = clone self.varValue.name;
        result.funValue.num_params = self.funValue.num_params;
        result.funValue.params = clone self.funValue.params;
        for(int i=0; i<self.funValue.num_params; i++) {
            TinyNode* node = self.funValue.params[i];
            result.funValue.params[i] = clone self.funValue.params[i];
        }
    }

    return result;
}

TinyNode*% createFunNode(TinyNode%* self, string& name, int num_params, TinyNode** params) {
    self.type = NODETYPE_FUN;

    self.funValue.name = borrow clone name;
    self.funValue.num_params = num_params;
    self.funValue.params = borrow new TinyNode*[num_params];
    for(int i=0; i<num_params; i++) {
        self.funValue.params[i] = borrow clone params[i];
    }

    self.stackValue = 1;

    return self;
}

void debug(TinyNode* self) {
    inherit(self);

    if(!self.debug_runned_default) {
        return;
    }
    
    switch(self.type) {
        case NODETYPE_FUN :
            printf("fun node %p\n", self);
            printf("num_params %d\n", self.funValue.num_params);
            break;

        default:
            self.debug_runned_default = true;
            break;
    }
}
}

impl TinyParser version 7
{
TinyNode*% wordNode(TinyParser* self, string& buf) {
    var word_node = inherit(self, buf);

    if(word_node != null) {
        return word_node;
    }
    else {
        if(*self.p == '(') {
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

            var result = new TinyNode.createFunNode(buf, num_params, params2);
            return result;
        }
        else {
            return null;
        }
    }
}
};

impl TinyVM version 7
{
bool runCommand(TinyVM* self, char* command, char** argv, buffer*% pipe_data, TVALUE* result)
{
    int child2parent_write_fd = 0;
    int child2parent_read_fd = 0;
    int parent2child_write_fd = 0;
    int parent2child_read_fd = 0;
    int child2parent_read_fd_err = 0;
    int child2parent_write_fd_err = 0;

    int pipefd[2];

    pipe(pipefd);
    child2parent_read_fd = pipefd[0];
    child2parent_write_fd = pipefd[1];

    pipe(pipefd);
    parent2child_read_fd = pipefd[0];
    parent2child_write_fd = pipefd[1];

    pipe(pipefd);
    child2parent_read_fd_err = pipefd[0];
    child2parent_write_fd_err = pipefd[1];

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

        if(execvp(command, argv) < 0) {
            fprintf(stderr, "command not found(%s)\n", command);
            exit(2);
        }
    }

/*
    close(parent2child_read_fd);
    close(child2parent_write_fd);
    close(child2parent_write_fd_err);

    if(pipe_data != null) {
        write(parent2child_write_fd, pipe_data.buf, pipe_data.len);
    }
    close(parent2child_write_fd);

    var child_output = new buffer.initialize();
    var child_output_error = new buffer.initialize();
    
    while(true) {
        char buf[BUFSIZ];
        int readed_byte = read(child2parent_read_fd, buf, BUFSIZ);

        char err_buf[BUFSIZ];
        int readed_byte_err = read(child2parent_read_fd_err, err_buf, BUFSIZ);

        if(readed_byte == 0 && readed_byte_err == 0) {
            break;
        }

        child_output.append(buf, readed_byte);
        child_output_error.append(err_buf, readed_byte_err);
    }

    close(child2parent_read_fd);
    close(child2parent_read_fd_err);

    int status = 0;

    pid_t pid2t = waitpid(pid, &status, WUNTRACED);

    if(WEXITSTATUS(status) == 64) {
        fprintf(stderr, "Command not found %s\n", command);
        return false;
    }

    *result.type = COMMAND_VALUE;
    *result.uValue.commandValue.value = borrow child_output.to_string();
    *result.uValue.commandValue.err_value = borrow child_output.to_string();
    *result.wait_status = WEXITSTATUS(status);
*/

    return true;
}

bool compile(TinyVM* self, TinyNode* node) {
    if(!inherit(self, node)) {
        return false;
    }

    if(!self.runned_default) {
        return true;
    }

    switch(node.type) {
        case NODETYPE_FUN : {
            int num_params = node.funValue.num_params;

            /// external command ///
            for(int i=0; i<num_params; i++) {
                if(!self.compile(node.funValue.params[i])) {
                    return false;
                }
            }

            char**% argv = new char*[num_params];

            for(int i=0; i<num_params; i++) {
                TVALUE*% value = self.stack.pop_back(null);
                argv[num_params-i-1] = value.uValue.strValue;
            }
            
            var name = node.funValue.name;

            var command = xasprintf("%s %s", name, argv[0]);

            system(command);

            //self.runCommand(name, borrow argv);
            }
            break;

        default:
            self.runned_default = true;
            break;
    }

    return true;
}
};

