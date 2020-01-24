#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <stdarg.h>

int gNumMemAlloc = 0;

#ifdef MDEBUG
int gMaxMemAlloc = 0;

struct sHeapDebug {
    int freed;
    void* mem;
    char type_name[128];
    char sname[128];
    int sline;
    size_t calloc_size;
    int calloc_num;
    char fun_name[128];
    char real_fun_name[128];
};

struct sHeapDebug* gHeapDebugs = NULL;
int gNumHeapDebugs = 0;
int gSizeHeapDebugs = 0;

#endif

void *xmalloc(size_t size)
{
    void* result = malloc(size);

    if(result == NULL) {
#ifdef MDEBUG
        FILE* f = fopen("memleak_debug.txt", "a");
        fprintf(f, "can't get heap memory\n");
        fclose(f);
#else
        fprintf(stderr, "can't get heap memory\n");
#endif
        exit(2);
    }

#ifdef MDEBUG
    gNumMemAlloc++;
    if(gNumMemAlloc >= gMaxMemAlloc) gMaxMemAlloc = gNumMemAlloc;
    FILE* f = fopen("memleak_debug.txt", "a");
    fprintf(f, "\nruntime alloc %p %d\n", result, gNumMemAlloc);
    fclose(f);
#else
    gNumMemAlloc++;
#endif
    return result;
}

#ifdef MDEBUG
static void append_debug_heap_memory(void* mem, char* type_name, char* sname, int sline, int calloc_num, size_t calloc_size, char* fun_name, char* real_fun_name)
{
    if(gHeapDebugs == NULL) {
        gNumHeapDebugs = 0;
        gSizeHeapDebugs = 128;
        
        gHeapDebugs = calloc(1, sizeof(struct sHeapDebug)*gSizeHeapDebugs);
    }

    if(gNumHeapDebugs >= gSizeHeapDebugs) {
        gSizeHeapDebugs *= 2;

        gHeapDebugs = realloc(gHeapDebugs, sizeof(struct sHeapDebug)*gSizeHeapDebugs);
    }

    gHeapDebugs[gNumHeapDebugs].freed = 0;
    gHeapDebugs[gNumHeapDebugs].mem = mem;
    xstrncpy(gHeapDebugs[gNumHeapDebugs].type_name, type_name, 128);

    xstrncpy(gHeapDebugs[gNumHeapDebugs].sname, sname, 128);

    gHeapDebugs[gNumHeapDebugs].sline = sline;
    gHeapDebugs[gNumHeapDebugs].calloc_num = calloc_num;
    gHeapDebugs[gNumHeapDebugs].calloc_size = calloc_size;

    xstrncpy(gHeapDebugs[gNumHeapDebugs].fun_name, fun_name, 128);
    xstrncpy(gHeapDebugs[gNumHeapDebugs].real_fun_name, real_fun_name, 128);

    gNumHeapDebugs++;
}

static void delete_debug_heap_memory(void* mem)
{
    int i;
    for(i=0; i<gNumHeapDebugs; i++) {
        if(!gHeapDebugs[i].freed && gHeapDebugs[i].mem == mem) {
            gHeapDebugs[i].freed = 1;
        }
    }
}
#endif

void *debug_xcalloc(int num, size_t nsize, char* type_name, char* sname, int sline, char* fun_name, char* real_fun_name)
{
    void* result = calloc(num, nsize);

#ifdef MDEBUG
    append_debug_heap_memory(result, type_name, sname, sline, num, nsize, fun_name, real_fun_name);
#endif

    if(result == NULL) {
#ifdef MDEBUG
        FILE* f = fopen("memleak_debug.txt", "a");
        fprintf(f, "can't get heap memory\n");
        fclose(f);
#else
        fprintf(stderr, "can't get heap memory\n");
#endif
        exit(2);
    }

    memset(result, 0, num*nsize);

#ifdef MDEBUG
    gNumMemAlloc++;
    if(gNumMemAlloc >= gMaxMemAlloc) gMaxMemAlloc = gNumMemAlloc;

    FILE* f = fopen("memleak_debug.txt", "a");
    fprintf(f, "runtime calloc %p %d\n", result, gNumMemAlloc);
    if(type_name) {
        fprintf(f, "type name %s ", type_name);
    }
    if(sname) {
        fprintf(f, "sname %s ", sname);
    }
    fprintf(f, "sline %d ", sline);
    if(fun_name) {
        fprintf(f, "fun_name %s ", fun_name);
    }
    if(real_fun_name) {
        fprintf(f, "real_fun_name %s\n", real_fun_name);
    }

    fprintf(f, "\n");
    fclose(f);
#else
    gNumMemAlloc++;
#endif

    return result;
}

void xfree(void *block)
{
#ifdef MDEBUG
    if(block) gNumMemAlloc--;

    FILE* f = fopen("memleak_debug.txt", "a");
    fprintf(f, "\nruntime free %p %d max %d\n", block, gNumMemAlloc, gMaxMemAlloc);
    int i;
    for(i=0; i<gNumHeapDebugs; i++) {
        if(!gHeapDebugs[i].freed && gHeapDebugs[i].mem == block) {
            if(gHeapDebugs[i].type_name) {
                fprintf(f, "type name %s ", gHeapDebugs[i].type_name);
            }
            else {
                fprintf(f, "type name nil ");
            }
            if(gHeapDebugs[i].sname) {
                fprintf(f, "sname %s ", gHeapDebugs[i].sname);
            }
            else {
                fprintf(f, "sname nil ");
            }
            fprintf(f, "sline %d ", gHeapDebugs[i].sline);
            if(gHeapDebugs[i].fun_name) {
                fprintf(f, "fun_name %s ", gHeapDebugs[i].fun_name);
            }
            if(gHeapDebugs[i].real_fun_name) {
                fprintf(f, "real_fun_name %s\n", gHeapDebugs[i].real_fun_name);
            }

            fprintf(f, "\n");
        }
    }
    fclose(f);
    delete_debug_heap_memory(block);
#else
    if(block) gNumMemAlloc--;
#endif

    free(block);
}

void debug_show_none_freed_heap_memory() 
{
#ifdef MDEBUG
    if(gHeapDebugs != NULL) {
        FILE* f = fopen("memleak_debug.txt", "a");
        fprintf(f, "\nnone free memory lists\n");
        fclose(f);
        int i;
        for(i=0; i<gNumHeapDebugs; i++) {
            if(gHeapDebugs[i].freed == 0) {
                FILE* f = fopen("memleak_debug.txt", "a");
                fprintf(f, "\nremain the heap memory(%p) with type name %s at %s.%d. calloc num is %d. calloc_size is %ld. fun_name is %s %s\n", gHeapDebugs[i].mem, gHeapDebugs[i].type_name, gHeapDebugs[i].sname, gHeapDebugs[i].sline, gHeapDebugs[i].calloc_num, gHeapDebugs[i].calloc_size, gHeapDebugs[i].fun_name, gHeapDebugs[i].real_fun_name);
                fclose(f);
            }
        }

        free(gHeapDebugs);
        gHeapDebugs = NULL;
    }
#else
    if(gNumMemAlloc == 0) {
        fprintf(stderr, "All heap memory is freed\n");
    }
    else {
        fprintf(stderr, "Remain heap memory exists\n");
    }
#endif
}

void *xcalloc(size_t num, size_t nsize)
{
    void* result = calloc(num, nsize);

    if(result == NULL) {
#ifdef MDEBUG
        FILE* f = fopen("memleak_debug.txt", "a");
        fprintf(f, "can't get heap memory\n");
        fclose(f);
#else
        fprintf(stderr, "can't get heap memory\n");
#endif
        exit(2);
    }

    memset(result, 0, num*nsize);

#ifdef MDEBUG
    gNumMemAlloc++;
    if(gNumMemAlloc >= gMaxMemAlloc) gMaxMemAlloc = gNumMemAlloc;
    FILE* f = fopen("memleak_debug.txt", "a");
    fprintf(f, "runtime calloc %p %d\n", result, gNumMemAlloc);
    fclose(f);
#else
    gNumMemAlloc++;
#endif

    return result;
}

void *xrealloc(void *block, size_t size)
{
    void* result =  realloc(block, size);

    if(result == NULL) {
#ifdef MDEBUG
        FILE* f = fopen("memleak_debug.txt", "a");
        fprintf(f, "can't get heap memory\n");
        fclose(f);
#else
        fprintf(stderr, "can't get heap memory\n");
#endif
        exit(2);
    }

    return result;
}

void *xasprintf(char* msg, ...)
{
#ifdef MDEBUG
    gNumMemAlloc++;
    if(gNumMemAlloc >= gMaxMemAlloc) gMaxMemAlloc = gNumMemAlloc;
#else
    gNumMemAlloc++;
#endif
    va_list args;
    va_start(args, msg);
    char* tmp;
    int len = vasprintf(&tmp, msg, args);
    va_end(args);

    if(len < 0) {
#ifdef MDEBUG
        FILE* f = fopen("memleak_debug.txt", "a");
        fprintf(f, "can't get heap memory\n");
        fclose(f);
#else
        fprintf(stderr, "can't get heap memory\n");
#endif
        exit(2);
    }

#ifdef MDEBUG
    FILE* f = fopen("memleak_debug.txt", "a");
    fprintf(f, "runtime asprintf %p %d\n", tmp, gNumMemAlloc);
    fclose(f);
#endif

    return tmp;
}


void* xmemcpy(void* mem, void* mem2, size_t size)
{
    return memcpy(mem, mem2, size);
}

void *xmemdup(void *block)
{
    size_t size = malloc_usable_size(block);

    if (!block) return (void*)0;

    char* ret = xmalloc(size);

    if (ret) {
        char* p = ret;
        char* p2 = block;
        while(p - ret < size) {
            *p++ = *p2++;
        }
    }

    return ret;
}
