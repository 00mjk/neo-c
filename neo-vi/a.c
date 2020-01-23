#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main()
{
    int a = 0;
    sscanf("+1", "+%d", &a);

    printf("%d\n", a);

    exit(0);
}
