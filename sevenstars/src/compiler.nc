#include "common.h"
#include <signal.h>
#include <termios.h>
#include <sys/ioctl.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <stdlib.h>
#include <time.h>
#include <limits.h>
#include <unistd.h>
#include <fcntl.h>
#include <dirent.h>
#include <libgen.h>

#ifdef HAVE_READLINE_H
#undef __GNUC__
#undef __clang__
#undef __clang__
//#undef __STDC__
#include <readline/readline.h>
#include <readline/history.h>
#endif

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

static void set_signal_shell()
{
    struct sigaction sa;
    sigset_t signal_set;

    sigemptyset(&signal_set);
    sigaddset(&signal_set, SIGTTOU);
    sigaddset(&signal_set, SIGTTIN);
    sigaddset(&signal_set, SIGPIPE);
    sigaddset(&signal_set, SIGINT);

    sigprocmask(SIG_BLOCK, &signal_set, NULL);
}

bool shell_eval_str(char* str, char* fname)
{
    sParserInfo info;
    
    memset(&info, 0, sizeof(sParserInfo));
    
    info.p = str;
    xstrncpy(info.sname, fname, PATH_MAX);
    info.sline = 1;
    
    info.err_output_num = 0;
    
    info.err_num = 0;
    
    info.nodes = borrow new vector<sCLNode*%>.initialize();
    info.vtables = borrow new vector<sVarTable*%>.initialize();
    info.blocks = borrow new vector<sCLNodeBlock*%>.initialize();
    info.types = borrow new vector<sCLType*%>.initialize();
    info.vars = borrow new vector<sVar*%>.initialize();
    
    init_var_table(&info);

    sCompileInfo cinfo;
    
    memset(&cinfo, 0, sizeof(sCompileInfo));
    
    cinfo.pinfo = &info;
    xstrncpy(cinfo.sname, info.sname, PATH_MAX);
    
    cinfo.err_num = 0;
    
    cinfo.codes = borrow new buffer.initialize();

    cinfo.in_shell = true;
    
    while(*info->p) {
        parse_comment(&info);

        int sline = info.sline;
        
        sCLNode* node = null;
        if(!expression(&node, &info)) {
            delete info.nodes;
            delete info.vtables;
            delete info.blocks;
            delete info.types;
            delete info.vars;
            delete cinfo.codes;
            return false;
        }
        
        while(*info->p == ';') {
            info->p++;
            skip_spaces_and_lf(&info);
        }
        
        cinfo.sline = sline;
        
        if(!compile(node, &cinfo)) {
            delete info.nodes;
            delete info.vtables;
            delete info.blocks;
            delete info.types;
            delete info.vars;
            delete cinfo.codes;
            return false;
        }
        
        if(cinfo.err_num > 0) {
            fprintf(stderr, "Compile error\n");
            delete info.nodes;
            delete info.vtables;
            delete info.blocks;
            delete info.types;
            delete info.vars;
            delete cinfo.codes;
            return false;
        }
        
        /// POP ///
        for(int i=0; i<cinfo.stack_num; i++) {
            if(!cinfo.no_output) {
                cinfo.codes.append_int(OP_POP);
            }
        }
        
        cinfo.stack_num = 0;

        cinfo.type = create_type("void", info.types);
    }
    
    if(info.err_num > 0) {
        fprintf(stderr, "Parser error. The error number is %d\n", info.err_num);
        delete info.nodes;
        delete info.vtables;
        delete info.blocks;
        delete info.types;
        delete info.vars;
        delete cinfo.codes;
        return false;
    }

    int var_num = get_var_num(info.vtables);

    if(var_num > info.max_var_num) {
        info.max_var_num = var_num;
    }

    var_num = info.max_var_num;

    heap_init(HEAP_INIT_SIZE, HEAP_HANDLE_INIT_SIZE);
    
    sVMInfo vminfo;
    
    memset(&vminfo, 0, sizeof(sVMInfo));
    
    vminfo.pinfo = &info;
    vminfo.cinfo = &cinfo;
    vminfo.stack_frames = borrow new vector<sCLStackFrame>.initialize();
    
    CLVALUE result;
    if(!vm(cinfo.codes, NULL, 0, var_num, &result, &vminfo)) {
        fprintf(stderr, "VM error.\n");
        CLObject obj = vminfo.thrown_object.mObjectValue;
        if(obj) {
            sCLObject* object_data = CLOBJECT(obj);

            sCLType* type = object_data->mType;
            if(type_identify_with_class_name(type, "string", &info))
            {
                char* str_data = get_string_mem(obj);
                fprintf(stderr, "%s", str_data);
            }
        }
        heap_final(&vminfo);

        delete info.nodes;
        delete info.vtables;
        delete info.blocks;
        delete info.types;
        delete info.vars;
        delete cinfo.codes;
        delete vminfo.stack_frames;
        return false;
    }

    heap_final(&vminfo);
    
    delete info.nodes;
    delete info.vtables;
    delete info.blocks;
    delete info.types;
    delete info.vars;
    delete cinfo.codes;
    delete vminfo.stack_frames;

    return true;
}

int match_index;
list<string>*% matches;

static void compiler_init(bool no_load_fudamental_classes)
{
    match_index = 0;
    matches = borrow new list<string>.initialize();

    if(!no_load_fudamental_classes) {
        FILE* f = fopen("sevenstars.ss", "r");

        if(f) {
            buffer*% buf = new buffer.initialize();

            char buf2[BUFSIZ];

            while(true) {
                int n = fread(buf2, 1, BUFSIZ, f);

                if(n <= 0) {
                    break;
                }

                buf.append(buf2, n);
            }

            fclose(f);

            string source = buf.to_string();

            if(!shell_eval_str(source, "load fundamental class")) {
                fprintf(stderr, "no load fundamental class\n");
            }
        }
    }
}

static void clover3_init()
{
    class_init();
    macro_init();
    native_init();
}

static void clover3_final()
{
    native_final();
    class_final();
    macro_final();
}

static void compiler_final()
{
    delete dummy_heap matches;
}

bool read_source(char* fname, buffer* source)
{
    int f = open(fname, O_RDONLY);

    if(f < 0) {
        fprintf(stderr, "%s doesn't exist(2)\n", fname);
        return false;
    }

    while(1) {
        char buf[BUFSIZ+1];
        int size = read(f, buf, BUFSIZ);

        if(size == 0) {
            break;
        }
        else if(size < 0) {
            fprintf(stderr, "unexpected error\n");
            close(f);
            return false;
        }

        buf[size] = 0;
        source.append_str(buf);

        if(size < BUFSIZ) {
            break;
        }
    }

    close(f);

    return true;
}

bool compile_script(char* fname, buffer* source)
{
    sParserInfo info;
    
    memset(&info, 0, sizeof(sParserInfo));
    
    info.p = source.buf;
    xstrncpy(info.sname, fname, PATH_MAX);
    info.sline = 1;
    
    info.err_output_num = 0;
    
    info.err_num = 0;
    
    info.nodes = borrow new vector<sCLNode*%>.initialize();
    info.vtables = borrow new vector<sVarTable*%>.initialize();
    info.blocks = borrow new vector<sCLNodeBlock*%>.initialize();
    info.types = borrow new vector<sCLType*%>.initialize();
    info.vars = borrow new vector<sVar*%>.initialize();
    
    init_var_table(&info);

    sCompileInfo cinfo;
    
    memset(&cinfo, 0, sizeof(sCompileInfo));
    
    cinfo.pinfo = &info;
    xstrncpy(cinfo.sname, info.sname, PATH_MAX);
    
    cinfo.err_num = 0;
    
    cinfo.codes = borrow new buffer.initialize();
    
    while(*info->p) {
        parse_comment(&info);

        int sline = info.sline;
        
        sCLNode* node = null;
        if(!expression(&node, &info)) {
            delete info.nodes;
            delete info.vtables;
            delete info.blocks;
            delete info.types;
            delete info.vars;
            delete cinfo.codes;
            return false;
        }
        
        while(*info->p == ';') {
            info->p++;
            skip_spaces_and_lf(&info);
        }
        
        cinfo.sline = sline;
        
        if(!compile(node, &cinfo)) {
            delete info.nodes;
            delete info.vtables;
            delete info.blocks;
            delete info.types;
            delete info.vars;
            delete cinfo.codes;
            return false;
        }
        
        if(cinfo.err_num > 0) {
            fprintf(stderr, "Compile error\n");
            delete info.nodes;
            delete info.vtables;
            delete info.blocks;
            delete info.types;
            delete info.vars;
            delete cinfo.codes;
            return false;
        }
        
        /// POP ///
        for(int i=0; i<cinfo.stack_num; i++) {
            if(!cinfo.no_output) {
                cinfo.codes.append_int(OP_POP);
            }
        }
        
        cinfo.stack_num = 0;

        cinfo.type = create_type("void", info.types);
    }
    
    if(info.err_num > 0) {
        fprintf(stderr, "Parser error. The error number is %d\n", info.err_num);
        delete info.nodes;
        delete info.vtables;
        delete info.blocks;
        delete info.types;
        delete info.vars;
        delete cinfo.codes;
        return false;
    }

    int var_num = get_var_num(info.vtables);

    if(var_num > info.max_var_num) {
        info.max_var_num = var_num;
    }

    var_num = info.max_var_num;
    
    sVMInfo vminfo;
    
    memset(&vminfo, 0, sizeof(sVMInfo));
    
    vminfo.pinfo = &info;
    vminfo.cinfo = &cinfo;
    vminfo.stack_frames = borrow new vector<sCLStackFrame>.initialize();

    heap_init(HEAP_INIT_SIZE, HEAP_HANDLE_INIT_SIZE);
    
    CLVALUE result;
    if(!vm(cinfo.codes, NULL, 0, var_num, &result, &vminfo)) {
        fprintf(stderr, "VM error.\n");
        CLObject obj = vminfo.thrown_object.mObjectValue;
        if(obj) {
            sCLObject* object_data = CLOBJECT(obj);

            sCLType* type = object_data->mType;
            if(type_identify_with_class_name(type, "string", &info))
            {
                char* str_data = get_string_mem(obj);
                fprintf(stderr, "%s", str_data);
            }
        }
        heap_final(&vminfo);

        delete info.nodes;
        delete info.vtables;
        delete info.blocks;
        delete info.types;
        delete info.vars;
        delete cinfo.codes;
        delete vminfo.stack_frames;
        return false;
    }

    heap_final(&vminfo);
    
    delete info.nodes;
    delete info.vtables;
    delete info.blocks;
    delete info.types;
    delete info.vars;
    delete cinfo.codes;
    delete vminfo.stack_frames;
    
    return true;
}

char* gVersion = "0.0.1";

static bool compiler(char* fname)
{
    if(access(fname, F_OK) != 0) {
        fprintf(stderr, "%s doesn't exist\n", fname);
        return false;
    }

    var source = new buffer.initialize();
    if(!read_source(fname, source)) {
        return false;
    }

    if(!compile_script(fname, source)) {
        return false;
    }

    return true;
}


static string line_buffer_from_head_to_cursor_point()
{
    string result = new char[strlen(rl_line_buffer)+1];
    memcpy(result, rl_line_buffer, rl_point);
    result[rl_point] = 0;

    return result;
}

void get_command_completion_cadidates(char* inputing_method_name)
{
    char* env = getenv("PATH");
    char path[PATH_MAX];
    char path2[PATH_MAX];
    struct stat stat_;

    char* p = path;
    int len = strlen(env);

    int i;
    for(i=0; i<len; i++) {
        if(env[i] == ':') {
            *p = '\0';

            if(access(path, F_OK) == 0) {
                if(stat(path, &stat_) == 0 && S_ISDIR(stat_.st_mode)) {
                    DIR* dir = opendir(path);

                    if(dir) {
                        while(1) {
                            struct dirent* entry = readdir(dir);

                            if(entry == NULL) {
                                break;
                            }

                            if(strcmp(entry->d_name, ".") != 0 && strcmp(entry->d_name, "..") != 0) 
                            {
                                xstrncpy(path2, path, PATH_MAX);

                                if(path[strlen(path)-1] != '/') {
                                    xstrncat(path2, "/", PATH_MAX);
                                }
                                xstrncat(path2, entry->d_name, PATH_MAX);

                                if(stat(path2, &stat_) == 0) {
                                    if(stat_.st_mode & S_IXUSR) 
                                    {
                                        if(strstr(entry->d_name, inputing_method_name) == entry->d_name)
                                        {
                                            matches.push_back(string(entry->d_name));
                                        }
                                    }
                                }
                            }
                        }

                        closedir(dir);
                    }
                }
            }

            p = path;
        }
        else {
            *p = env[i];
            p++;

            if(p - (char*)path >= PATH_MAX) {
                break;
            }
        }
    }
}

char* completion_generator(char* text, int state)
{
    if(state == 0) {
        matches.reset();
        match_index = 0;

        string current_line = line_buffer_from_head_to_cursor_point();

        bool all_space_line = true;
        char* p = current_line;
        while(*p) {
            if(*p != ' ') {
                all_space_line = false;
                break;
            }
        }

        bool inputing_method = true;

        p = current_line + strlen(current_line);

        string inputing_method_name = string("");

        while(true) {
            if(p == current_line) {
                if(strlen(current_line) > 0) {
                    inputing_method_name = string(p);
                }
                else {
                    inputing_method_name = string("");
                };
                *p = '\0';
                break;
            }
            else if(isalnum(*p) || *p == '_' || *p == '\0') {
                p--;
            }
            else if(*p == '.') {
                inputing_method_name = string(p+1);
                *p = '\0';
                break;
            }
            else if(*p == ' ' || *p == '{' || *p == '(') {
                inputing_method_name = string(p+1);
                *p = '\0';
                break;
            }
            else {
                inputing_method = false;
                break;
            }
        }

        sCLType* result_type = null;

        sParserInfo info;
        
        memset(&info, 0, sizeof(sParserInfo));
        
        info.p = current_line;
        xstrncpy(info.sname, "get type", PATH_MAX);
        info.sline = 1;
        
        info.err_output_num = 0;
        
        info.err_num = 0;
        
        info.nodes = borrow new vector<sCLNode*%>.initialize();
        info.vtables = borrow new vector<sVarTable*%>.initialize();
        info.blocks = borrow new vector<sCLNodeBlock*%>.initialize();
        info.types = borrow new vector<sCLType*%>.initialize();
        info.vars = borrow new vector<sVar*%>.initialize();
        
        init_var_table(&info);

        sCompileInfo cinfo;
        
        memset(&cinfo, 0, sizeof(sCompileInfo));
        
        cinfo.pinfo = &info;
        xstrncpy(cinfo.sname, info.sname, PATH_MAX);
        
        cinfo.err_num = 0;
        cinfo.in_shell = true;
        
        cinfo.codes = borrow new buffer.initialize();

        if(all_space_line || strcmp(current_line, "") == 0) {
            result_type = create_type("command", info.types);
            inputing_method = true;
        }
        else {
            while(*info->p) {
                parse_comment(&info);

                int sline = info.sline;
                
                sCLNode* node = null;
                if(!expression(&node, &info)) {
                    result_type = create_type("command", info.types);
                    inputing_method = true;
                    break;
                }
                
                while(*info->p == ';') {
                    info->p++;
                    skip_spaces_and_lf(&info);
                }
                
                cinfo.sline = sline;
                
                if(!compile(node, &cinfo)) {
                    result_type = create_type("command", info.types);
                    inputing_method = true;
                    break;
                }
                
                if(cinfo.err_num > 0) {
                    result_type = create_type("command", info.types);
                    inputing_method = true;
                    break;
                }
                
                /// POP ///
                for(int i=0; i<cinfo.stack_num; i++) {
                    if(!cinfo.no_output) {
                        cinfo.codes.append_int(OP_POP);
                    }
                }
                
                cinfo.stack_num = 0;

                result_type = cinfo.type;
            }
        }
        
        if(info.err_num > 0) {
            result_type = create_type("command", info.types);
            inputing_method = true;
        }

        if(result_type != null && inputing_method) {
            if(type_identify_with_class_name(result_type, "command", &info))
            {
                get_command_completion_cadidates(inputing_method_name)
            }
            else {
                result_type.mClass.mMethods.each {
                    sCLMethod* method = it2;
                    char* method_name = method->mName;
                    if(strstr(method_name, inputing_method_name) == method_name)
                    {
                        matches.push_back(string(method_name));
                    }
                }
            }
        }

        delete info.nodes;
        delete info.vtables;
        delete info.blocks;
        delete info.types;
        delete info.vars;
        delete cinfo.codes;
    }

    if(match_index >= matches.length()) {
        rl_completion_append_character = '(';
        return null;
    }

    rl_completion_append_character = '(';
    return strdup(matches.item(match_index++, null));
}

char** completer(char* text, int start, int end)
{
    string current_line = line_buffer_from_head_to_cursor_point();

    bool inputing_method = true;

    char* p = current_line;

    bool in_dquort = false;
    while(*p) {
        if(*p == '"') {
            p++;
            in_dquort = !in_dquort;
        }
        else {
            p++;
        }
    }
    

    p = current_line + strlen(current_line) - 1;

    while(p >= current_line) {
        if(isalnum(*p) || *p == '_') {
            p--;
        }
        else if(*p == '.') {
            break;
        }
        else {
            inputing_method = false;
            break;
        }
    }

    /// is method completion ? ///
    if(!inputing_method || in_dquort) {
        rl_attempted_completion_over = 0;
        rl_completion_append_character = '\0';

        return null;
    }
    else {
        rl_attempted_completion_over = 1;

        return rl_completion_matches(text, completion_generator);
    }
}

void shell()
{
    rl_completer_quote_characters = "\"'";
    rl_completer_word_break_characters = " .({";
    rl_attempted_completion_function = completer;

    while(1) {
        char* line = readline("sevenstars lang > ");

        if(line == null) {
            break;
        }

        if(strcmp(line, "exit") == 0) {
            free(line);
            break;
        }

        (void)shell_eval_str(line, "sevenstars");

        add_history(line);

        free(line);
    };
}

int main(int argc, char** argv)
{
    int i;

    setlocale(LC_ALL, "");

    bool no_load_fudamental_classes = false;
    char sname[PATH_MAX];
    xstrncpy(sname, "", PATH_MAX);

    for(i=1; i<argc; i++) {
        if(strcmp(argv[i], "-core") == 0) {
            no_load_fudamental_classes = true;
        }
        else if(strcmp(argv[i], "--version") == 0 || strcmp(argv[i], "-version") == 0 || strcmp(argv[i], "-v") == 0 || strcmp(argv[i], "-V") == 0)
        {
            printf("sevenstars lang version %s\n", gVersion);
            exit(0);
        }
        else {
            xstrncpy(sname, argv[i], PATH_MAX);
        }
    }

    if(sname[0] != '\0') {
        set_signal();

        char* p = sname + strlen(sname);

        while(p >= sname) {
            if(*p == '.') {
                break;
            }
            else {
                p--;
            }
        }

        if(p < sname) {
            p = NULL;
        }

        char* ext_sname = p;

        clover3_init();
        compiler_init(no_load_fudamental_classes);

        if(!compiler(sname)) {
            fprintf(stderr, "sevenstars can't compile %s\n", argv[i]);
            clover3_final();
            compiler_final();
            return 1;
        }

        clover3_final();
        compiler_final();
    }
    else {
        set_signal_shell();

        clover3_init();
        compiler_init(no_load_fudamental_classes);

        shell();

        clover3_final();
        compiler_final();
    }

    return 0;
}
