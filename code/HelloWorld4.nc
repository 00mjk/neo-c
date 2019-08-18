extern "C"
{
#include "neo-c.h"
#include <stdio.h>
#include <stdlib.h>
}

struct Data 
{
    a:int;
}

impl Data {
    def fun(self:Data)
    {
        self.a = 1;
    }
}

struct Data
{
    b:int;
}

impl Data {
    def fun(self:Data)
    {
        inherit(self);
        self.b = 7;
    }

    def show(self:Data)
    {
        printf("self.a %d self.b %d\n", self.a, self.b);
    }
}

struct Data2<T>
{
    a:T;
}

impl Data2<T>
{
    def fun(self:Data2<T>)
    {
        self.a = 123;
    }
}

struct Data2<T>
{
    b:T;
}

impl Data2<T>
{
    def fun(self:Data2<T>) 
    {
        inherit(self);
        self.b = 234;
    }

    def show(self:Data2<T>)
    {
        printf("self.a %d self.b %d\n", self.a, self.b);
    }
}

def main():int
{
    var data = new Data;
    data.fun();
    data.show();

    var data2 = new Data2<int>;
    data2.fun();
    data2.show();

    0
}
