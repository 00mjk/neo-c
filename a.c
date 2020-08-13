#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main()
{
    printf("%u", ((0u&0xffffu)-1U) < 0xffu);
    return 0;

}
