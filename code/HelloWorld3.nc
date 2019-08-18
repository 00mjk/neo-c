#include "neo-c.h"
#
extern "C"
{
#include <stdio.h>

int fun(int x, int y) 
{
    return x + y;
}

}

def fun2(a:int, b:int):int
{
    a + b
}

def main():int {
    puts("Hello World");
    printf("fun %d\n", fun(1, 2));
    printf("fun2 %d\n", fun2(1, 2));

    0
}

