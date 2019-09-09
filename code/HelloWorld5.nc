#include "neo-c.h"

extern "C"
{
#include <stdio.h>
}

struct StructData1
{
    a:int;
}

impl StructData1
{
    def fun(self:StructData1) {
        printf("a %d\n", self.a);
    }
}
