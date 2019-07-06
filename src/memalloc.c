#include <unistd.h>
#include <string.h>
#include <pthread.h>
/* Only for the debug printf */
#include <stdio.h>
#include <stdarg.h>

struct header_t {
    size_t size;
    unsigned is_free;
    struct header_t *next;
};

struct header_t *head = NULL, *tail = NULL;
pthread_mutex_t global_malloc_lock;

struct header_t *get_free_block(size_t size)
{
    struct header_t *curr = head;
    while(curr) {
        /* see if there's a free block that can accomodate requested size */
        if (curr->is_free && curr->size >= size)
            return curr;
        curr = curr->next;
    }
    return NULL;
}

void xfree(void *block)
{
//printf("xfree %p\n", block);
    struct header_t *header, *tmp;
    /* program break is the end of the process's data segment */
    void *programbreak;

    if (!block)
        return;
    pthread_mutex_lock(&global_malloc_lock);
    header = (struct header_t*)block - 1;
    /* sbrk(0) gives the current program break address */
    programbreak = sbrk(0);

    /*
       Check if the block to be freed is the last one in the
       linked list. If it is, then we could shrink the size of the
       heap and release memory to OS. Else, we will keep the block
       but mark it as free.
     */
    if ((char*)block + header->size == programbreak) {
        if (head == tail) {
            head = tail = NULL;
        } else {
            tmp = head;
            while (tmp) {
                if(tmp->next == tail) {
                    tmp->next = NULL;
                    tail = tmp;
                }
                tmp = tmp->next;
            }
        }
        /*
           sbrk() with a negative argument decrements the program break.
           So memory is released by the program to OS.
        */
        sbrk(0 - header->size - sizeof(struct header_t));
        /* Note: This lock does not really assure thread
           safety, because sbrk() itself is not really
           thread safe. Suppose there occurs a foregin sbrk(N)
           after we find the program break and before we decrement
           it, then we end up realeasing the memory obtained by
           the foreign sbrk().
        */
        pthread_mutex_unlock(&global_malloc_lock);
        return;
    }
    header->is_free = 1;
    pthread_mutex_unlock(&global_malloc_lock);
}

void *xmalloc(size_t size)
{
    size_t total_size;
    void *block;
    struct header_t *header;
    if (!size)
        return NULL;
    pthread_mutex_lock(&global_malloc_lock);
    header = get_free_block(size);
    if (header) {
        /* Woah, found a free block to accomodate requested memory. */
        header->is_free = 0;
        pthread_mutex_unlock(&global_malloc_lock);
        return (void*)(header + 1);
    }
    /* We need to get memory to fit in the requested block and header from OS. */
    total_size = sizeof(struct header_t) + size;
    block = sbrk(total_size);
    if (block == (void*) -1) {
        pthread_mutex_unlock(&global_malloc_lock);
        return NULL;
    }
    header = block;
    header->size = size;
    header->is_free = 0;
    header->next = NULL;
    if (!head)
        head = header;
    if (tail)
        tail->next = header;
    tail = header;
    pthread_mutex_unlock(&global_malloc_lock);
    return (void*)(header + 1);
}

void *xcalloc(size_t num, size_t nsize)
{
    size_t size;
    void *block;
    if (!num || !nsize)
        return NULL;
    size = num * nsize;

    /* check mul overflow */
    if (nsize != size / num)
        return NULL;
    block = xmalloc(size);
    if (!block)
        return NULL;
    memset(block, 0, size);

//printf("xcalloc %p\n", block);
    return block;
}

void *xrealloc(void *block, size_t size)
{
    struct header_t *header;
    void *ret;
    if (!block || !size)
        return xmalloc(size);
    header = (struct header_t*)block - 1;
    if (header->size >= size)
        return block;
    ret = xmalloc(size);
    if (ret) {
        /* Relocate contents to the new bigger block */
        memcpy(ret, block, header->size);
        /* Free the old memory block */
        xfree(block);
    }
    return ret;
}

void *xmemdup(void *block)
{
    struct header_t *header;
    void *ret;
    size_t size;

    header = (struct header_t*)block - 1;
    size = header->size;

    if (!block) return (void*)0;

    ret = xmalloc(size);
    if (ret) {
        /* Relocate contents to the new bigger block */
        memcpy(ret, block, header->size);
        /* Free the old memory block */
        //xfree(block);
    }
    return ret;
}

void *xasprintf(char* msg, ...)
{

    va_list args;
    va_start(args, msg);
    char* tmp;
    int len = vasprintf(&tmp, msg, args);
    va_end(args);

    void* result = xcalloc(1, sizeof(char)*(len+1));
    strncpy(result, tmp, len);

    free(tmp);

    return result;
}

/*
char *xstrapd(char *block, char *block2)
{
    struct header_t *header;
    char *ret;
    size_t size;
    int str_size, str_size2;

    str_size = strlen(block);
    str_size2 = strlen(block2);

    size = str_size + str_size2;

    if (!block || !block2) return (void*)0;

    ret = (char*)xmalloc(size);
    if (ret) {
        memcpy(ret, block, str_size);
        memcpy(ret + str_size, block2, str_size2);
        ret[str_size + str_size2] = '\0';
    }
    return ret;
}
*/

/* A debug function to print the entire link list */
void print_mem_list()
{
    struct header_t *curr = head;
    printf("head = %p, tail = %p \n", (void*)head, (void*)tail);
    while(curr) {
        printf("addr = %p, size = %zu, is_free=%u, next=%p\n",
            (void*)curr, curr->size, curr->is_free, (void*)curr->next);
        curr = curr->next;
    }
}

