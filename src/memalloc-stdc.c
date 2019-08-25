#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <stdarg.h>

void xfree(void *block)
{
//printf("runtime free %p\n", block);
    free(block);
}

void *xmalloc(size_t size)
{
    return malloc(size);
}

void *xcalloc(size_t num, size_t nsize)
{
    void* result = calloc(num, nsize);

//printf("runtime calloc %p\n", result);

    return result;
}

void *xrealloc(void *block, size_t size)
{
    return realloc(block, size);
}

void *xmemdup(void *block)
{
    fprintf(stderr, "no support xmemdup\n");
    exit(1);
}

void *xasprintf(char* msg, ...)
{
    va_list args;
    va_start(args, msg);
    char* tmp;
    int len = vasprintf(&tmp, msg, args);
    va_end(args);

    return tmp;
}


void* xmemcpy(void* mem, void* mem2, size_t size)
{
    return memcpy(mem, mem2, size);
}

