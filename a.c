#include <stdlib.h>
#include <stdio.h>

void fun()
{
    const char* p = sys_errlist[0];

    printf("%p\n", p);
}

