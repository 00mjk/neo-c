#include "common.h"

static void compiler_init()
{
    parser_init();
    init_node_types();
    class_init();
    init_nodes();
    llvm_init();
    init_vtable();
}

static void compiler_final()
{
    final_vtable();
    llvm_final();
    free_nodes();
    class_final();
    free_node_types();
    parser_final();
}

static BOOL compiler(char* fname, BOOL optimize, BOOL output_object_file)
{
    if(access(fname, F_OK) != 0) {
        fprintf(stderr, "%s doesn't exist\n", fname);
        return FALSE;
    }

    sBuf source;
    sBuf_init(&source);
    if(!read_source(fname, &source)) {
        free(source.mBuf);
        return FALSE;
    }

    sBuf source2;
    sBuf_init(&source2);

    if(!delete_comment(&source, &source2)) {
        free(source.mBuf);
        free(source2.mBuf);
        return FALSE;
    }

    if(!compile_source(fname, source2.mBuf, optimize, output_object_file)) {
        free(source.mBuf);
        free(source2.mBuf);
        return FALSE;
    }

    free(source.mBuf);
    free(source2.mBuf);

    return TRUE;
}


int gARGC;
char** gARGV;
char* gVersion = "0.0.1";

int main(int argc, char** argv)
{
    gARGC = argc;
    gARGV = argv;

    char sname[PATH_MAX+1];
    BOOL output_object_file = FALSE;
    BOOL optimize = FALSE;

    int i;
    for(i=1; i<argc; i++) {
        if(strcmp(argv[i], "--version") == 0 || strcmp(argv[i], "-version") == 0 || strcmp(argv[i], "-v") == 0 || strcmp(argv[i], "-V") == 0)
        {
            printf("neo-c version %s\n", gVersion);
            exit(0);
        }
        else if(strcmp(argv[i], "-c") == 0)
        {
            output_object_file = TRUE;
        }
        else if(strcmp(argv[i], "-O") == 0)
        {
            optimize = TRUE;
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

    compiler_init();

    if(!compiler(sname, optimize, output_object_file)) {
        fprintf(stderr, "neo-c can't compile %s\n", sname);
        compiler_final();
        return 1;
    }

    compiler_final();

    return gResultCode;
}
