#include <stdlib.h>
#include <stdio.h>

struct A {
    int a;
    struct {
        int b;
        int c;
    };
};


int main()
{
    struct A data;

    data.b = 111;
    data.c = 222;

    return 0;
}

