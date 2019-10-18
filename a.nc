#include "neo-c.h"

extern "C"
{
#include <stdlib.h>
#include <stdio.h>
}

def main():int
{
    printf("%s\n", string("ABC").subString(1, -1));

    0
}
