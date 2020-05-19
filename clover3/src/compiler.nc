#include "common.h"
#include <signal.h>

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

static void compiler_init(bool no_load_fudamental_classes)
{
}

static void clover3_init()
{
    class_init();
}

static void clover3_final()
{
    class_final();
}

static void compiler_final()
{
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
        
        sCLNode* node;
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

        cinfo.type = create_type("void", &info);
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
    
    if(!vm(cinfo.codes, 0, 0, var_num, -1, false, &vminfo)) {
        fprintf(stderr, "VM error.\n");
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

static bool class_compiler(char* fname)
{

    return true;
}

int main(int argc, char** argv)
{
    int i;

    setlocale(LC_ALL, "");

    set_signal();

    bool no_load_fudamental_classes = false;
    char sname[PATH_MAX];
    xstrncpy(sname, "", PATH_MAX);

    for(i=1; i<argc; i++) {
        if(strcmp(argv[i], "-core") == 0) {
            no_load_fudamental_classes = true;
        }
        else if(strcmp(argv[i], "--version") == 0 || strcmp(argv[i], "-version") == 0 || strcmp(argv[i], "-v") == 0 || strcmp(argv[i], "-V") == 0)
        {
            printf("clover3 version %s\n", gVersion);
            exit(0);
        }
        else {
            xstrncpy(sname, argv[i], PATH_MAX);
        }
    }

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

    if(ext_sname && strcmp(ext_sname, ".clcl") == 0) {
        if(!class_compiler(sname)) {
            fprintf(stderr, "cclover3 can't compile %s\n", argv[i]);
            clover3_final();
            compiler_final();
            return 1;
        }
    }
    else {
        if(!compiler(sname)) {
            fprintf(stderr, "cclover3 can't compile %s\n", argv[i]);
            clover3_final();
            compiler_final();
            return 1;
        }
    }

    clover3_final();
    compiler_final();

    return 0;
}
