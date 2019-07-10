#include <stdio.h>
#include <stdlib.h>

union UnionTest
{
    int a;
    long b;
    struct {
        long c;
        long d;
    } c;
};

int main()
{
    union UnionTest data;

    data.a = 1;

    exit(0);
}
