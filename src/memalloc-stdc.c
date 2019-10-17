#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <stdarg.h>

#ifdef MDEBUG
int gNumMemAlloc = 0;
int gMaxMemAlloc = 0;
#endif

void ncfree(void *block)
{
#ifdef MDEBUG
if(block) gNumMemAlloc--;
printf("\nruntime free %p %d max %d\n", block, gNumMemAlloc, gMaxMemAlloc);
#endif
    free(block);
}

void *ncmalloc(size_t size)
{
    void* result = malloc(size);
#ifdef MDEBUG
gNumMemAlloc++;
if(gNumMemAlloc >= gMaxMemAlloc) gMaxMemAlloc = gNumMemAlloc;
printf("\nruntime alloc %p %d\n", result, gNumMemAlloc);
#endif
    return result;
}

void *nccalloc(size_t num, size_t nsize)
{
    void* result = calloc(num, nsize);

    memset(result, 0, num*nsize);

#ifdef MDEBUG
gNumMemAlloc++;
if(gNumMemAlloc >= gMaxMemAlloc) gMaxMemAlloc = gNumMemAlloc;
printf("runtime calloc %p %d\n", result, gNumMemAlloc);
#endif

    return result;
}

void *ncrealloc(void *block, size_t size)
{
    return realloc(block, size);
}

void *ncasprintf(char* msg, ...)
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
#ifdef MDEBUG
printf("runtime asprintf %p %d\n", tmp, gNumMemAlloc);
#endif

    return tmp;
}


void* ncmemcpy(void* mem, void* mem2, size_t size)
{
    return memcpy(mem, mem2, size);
}

void *ncmemdup(void *block)
{
    size_t size = malloc_usable_size(block);

    if (!block) return (void*)0;

    char* ret = ncmalloc(size);

    if (ret) {
        char* p = ret;
        char* p2 = block;
        while(p - ret < size) {
            *p++ = *p2++;
        }
    }

    return ret;
}
