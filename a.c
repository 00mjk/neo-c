#include <stdio.h>
#include <stdlib.h>

static char* data[128];

int main()
{
    char c = 'a';
    data[0] = &c;
    exit(0);
}
