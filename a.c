#include <stdio.h>
#include <stdlib.h>

static char* data[128];

void func(int a)
{
    int* p = &a;
    printf("%p\n", p);
}

int main()
{
    free(0);
    exit(0);
}
