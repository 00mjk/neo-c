#include <unistd.h>

struct header_t {
    size_t size;
    unsigned is_free;
    struct header_t *next;
};

struct header_t *head = NULL, *tail = NULL;

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
    struct header_t *header, *tmp;
    /* program break is the end of the process's data segment */
    void *programbreak;

    if (!block)
        return;
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
        return;
    }
    header->is_free = 1;
}

void *xmalloc(size_t size)
{
    size_t total_size;
    void *block;
    struct header_t *header;
    if (!size)
        return NULL;
    header = get_free_block(size);
    if (header) {
        /* Woah, found a free block to accomodate requested memory. */
        header->is_free = 0;
        return (void*)(header + 1);
    }
    /* We need to get memory to fit in the requested block and header from OS. */
    total_size = sizeof(struct header_t) + size;
    block = sbrk(total_size);
    if (block == (void*) -1) {
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
    return (void*)(header + 1);
}

void *xcalloc(size_t num, size_t nsize)
{
    size_t size;
    char *block;
    char* p;

    if (!num || !nsize)
        return NULL;
    size = num * nsize;

    /* check mul overflow */
    if (nsize != size / num)
        return NULL;
    block = xmalloc(size);
    if (!block)
        return NULL;

    p = block;
    while(p - block < size) {
        *p++ = 0;
    }

    return block;
}

void *xrealloc(char *block, size_t size)
{
    struct header_t *header;
    char *ret;
    char* p;
    char* p2;

    if (!block || !size)
        return xmalloc(size);
    header = (struct header_t*)block - 1;
    if (header->size >= size)
        return block;
    ret = xmalloc(size);
    if (ret) {
        // Relocate contents to the new bigger block
        p = ret;
        p2 = block;
        while(p - ret < header->size) {
            *p++ = *p2++;
        }

        // Free the old memory block
        xfree(block);
    }
    return ret;
}

void *xmemdup(char *block)
{
    struct header_t *header;
    char *ret;
    size_t size;
    char* p;
    char* p2;

    header = (struct header_t*)block - 1;
    size = header->size;

    if (!block) return (void*)0;

    ret = xmalloc(size);
    if (ret) {
        p = ret;
        p2 = block;
        while(p - ret < header->size) {
            *p++ = *p2++;
        }
    }
    return ret;
}


char* xmemcpy(char* mem, char* mem2, int size)
{
    int i;

    char* p = mem;
    char* p2 = mem2;

    for(i=0; i<size; i++) {
        *p++ = *p2++;
    }

    return mem;
}
