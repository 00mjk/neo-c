#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <stdarg.h>

//int gNumMemAlloc = 0;

void xfree(void *block)
{
/*
if(block) gNumMemAlloc--;
printf("\nruntime free %p %d\n", block, gNumMemAlloc);
*/
    free(block);
}

void *xmalloc(size_t size)
{
    void* result = malloc(size);
/*
gNumMemAlloc++;
printf("\nruntime alloc %p %d\n", result, gNumMemAlloc);
*/
    return result;
}

void *xcalloc(size_t num, size_t nsize)
{
    void* result = calloc(num, nsize);

/*
gNumMemAlloc++;
printf("runtime calloc %p %d\n", result, gNumMemAlloc);
*/

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
//gNumMemAlloc++;
    va_list args;
    va_start(args, msg);
    char* tmp;
    int len = vasprintf(&tmp, msg, args);
    va_end(args);
//printf("runtime asprintf %p %d\n", tmp, gNumMemAlloc);

    return tmp;
}


void* xmemcpy(void* mem, void* mem2, size_t size)
{
    return memcpy(mem, mem2, size);
}

