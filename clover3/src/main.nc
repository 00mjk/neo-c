#include "common.h"
#include <signal.h>
#include <libgen.h>

static void clover3_init(bool no_load_fudamental_classes)
{
}

static void clover3_final()
{
}

static void set_signal()
{
    struct sigaction sa;
    sigset_t signal_set;

    sigemptyset(&signal_set);
    sigaddset(&signal_set, SIGTTOU);
    sigaddset(&signal_set, SIGTTIN);
    sigaddset(&signal_set, SIGPIPE);

    sigprocmask(SIG_BLOCK, &signal_set, NULL);
}

char* gVersion = "0.0.1";

int main(int argc, char** argv, char* const * envp)
{
    int i;

    setlocale(LC_ALL, "");

    set_signal();

    bool no_load_fudamental_classes = false;

    for(i=1; i<argc; i++) {
        if(strcmp(argv[i], "--version") == 0 || strcmp(argv[i], "-version") == 0 || strcmp(argv[i], "-v") == 0 || strcmp(argv[i], "-V") == 0)
        {
            printf("clover3 version %s\n", gVersion);
            exit(0);
        }
        else if(strcmp(argv[i], "-core") == 0) {
            no_load_fudamental_classes = TRUE;
        }
        else {
/*
            char* source = argv[i];

            /// get ocl file name
            char* p = source + strlen(source);

            while(p >= source) {
                if(*p == '.') {
                    break;
                }
                else {
                    p--;
                }
            }

            if(p < source) {
                p = NULL;
            }

            if(p == NULL) {
                p = source + strlen(source);
            }

            char base_name[PATH_MAX];

            memcpy(base_name, source, p - source);
            base_name[p - source] = '\0';

            char object_file_name[PATH_MAX];
            snprintf(object_file_name, PATH_MAX, "%s.ocl", base_name);

            /// get dir path of script file ///
            if(strstr(object_file_name, "/")) {
                char tmp[PATH_MAX];
                xstrncpy(tmp, object_file_name, PATH_MAX);

                char* dname = dirname(tmp);

                xstrncpy(gScriptDirPath, dname, PATH_MAX);
            }
            else {
                xstrncpy(gScriptDirPath, "", PATH_MAX);
            }

            clover3_init(no_load_fudamental_classes);
            if(!eval_file(object_file_name, CLOVER_STACK_SIZE)) {
                fprintf(stderr, "script file(%s) is abort\n", argv[i]);
                clover3_final();
                CHECKML_END;
                exit(1);
            }
            clover3_final();

            break;
        }
*/
    }
    
    return 0;
}
