#include <stdlib.h>
#include <stdio.h>

#define count_vector_args(T, ...) (sizeof((T[]) { __VA_ARGS__}) / sizeof(T))

int main()
{
/*
    int c = count_vector_args(int, 1,2,3);
    printf("c %d\n", c);
*/

    int aaa[] = { 1, 2, 3 };

    printf("%d\n", sizeof(aaa));

    return 0;
}

