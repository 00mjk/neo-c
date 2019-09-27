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
    initialize() {
        self.a = 1;
        self.b = 2;
        self.c = 3;
    }
    def fun(self:StructData1*) version 3 {
        inherit(self);
        printf("c %d\n", self.c);
    }
}

def main():int 
{
    var data = new StructData1.initialize();

    data.fun();

    0
}
