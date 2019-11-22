#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <stdarg.h>

#ifdef MDEBUG
int gNumMemAlloc = 0;
int gMaxMemAlloc = 0;
#endif

void xfree(void *block)
{
#ifdef MDEBUG
    if(block) gNumMemAlloc--;
    FILE* f = fopen("memleack_debug.txt", "a");
    fprintf(f, "\nruntime free %p %d max %d\n", block, gNumMemAlloc, gMaxMemAlloc);
    fclose(f);
#endif
    free(block);
}

void *xmalloc(size_t size)
{
    void* result = malloc(size);

    if(result == NULL) {
#ifdef MDEBUG
        FILE* f = fopen("memleack_debug.txt", "a");
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
    FILE* f = fopen("memleack_debug.txt", "a");
    fprintf(f, "\nruntime alloc %p %d\n", result, gNumMemAlloc);
    fclose(f);
#endif
    return result;
}

void *xcalloc(size_t num, size_t nsize)
{
    void* result = calloc(num, nsize);

    if(result == NULL) {
#ifdef MDEBUG
        FILE* f = fopen("memleack_debug.txt", "a");
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
    FILE* f = fopen("memleack_debug.txt", "a");
    fprintf(f, "runtime calloc %p %d\n", result, gNumMemAlloc);
    fclose(f);
#endif

    return result;
}

void *xrealloc(void *block, size_t size)
{
    void* result =  realloc(block, size);

    if(result == NULL) {
#ifdef MDEBUG
        FILE* f = fopen("memleack_debug.txt", "a");
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
#endif
    va_list args;
    va_start(args, msg);
    char* tmp;
    int len = vasprintf(&tmp, msg, args);
    va_end(args);

    if(len < 0) {
#ifdef MDEBUG
        FILE* f = fopen("memleack_debug.txt", "a");
        fprintf(f, "can't get heap memory\n");
        fclose(f);
#else
        fprintf(stderr, "can't get heap memory\n");
#endif
        exit(2);
    }

#ifdef MDEBUG
    FILE* f = fopen("memleack_debug.txt", "a");
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
