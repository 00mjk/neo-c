#include <stdlib.h>
#include <stdio.h>

void fun()
{
    union AAA { int a; int b; } a;

    a.a = 111;
    a.b = 222;
}

