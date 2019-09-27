#include "neo-c.h"

extern "C"
{
#include <stdio.h>
}

#include "HelloWorld5.h"

struct StructData1
{
    b:int;
}

impl StructData1 version 2
{
    def fun(self:StructData1*) {
        inherit(self);
        printf("b %d\n", self.b);
    }
}
