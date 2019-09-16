#include "neo-c.h"

extern "C"
{
#include <stdio.h>
}

#include "HelloWorld5.h"
#include "HelloWorld6.h"

struct StructData1
{
    c:int;
}

impl StructData1
{
    def fun(self:StructData1*) {
        inherit(self);
        printf("c %d\n", self.c);
    }
}

def main():int 
{
    var data = new StructData1;

    data.fun();

    0
}
