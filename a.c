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
    int a = 111;
    func(a);
    exit(0);
}
