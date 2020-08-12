#include <stdlib.h>
#include <stdio.h>

int main()
{
    char* a = realpath("/usr/../usr/include", NULL);

    puts(a);

    setenv("AAA", "a", 1);

    FILE* f = fopen("AAA", "w");

    return 0;
}
