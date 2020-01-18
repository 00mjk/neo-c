#include <stdio.h>
#include <stdlib.h>


int fun() {
}

struct XXX <T>
{
    T aaa;
};

impl XXX <T>
{
    initialize() {
    }

    void fun(XXX<T>* self) {
        if(true) {
            puts("AAAA");
        }
        else if(true) { 
            puts("CCC"); 
        } else { 
            puts("BBB");
            if(true) { puts("DDD"); }
            else { puts("EEE"); }
            if(true) { puts("DDD"); } else { puts("EEE"); }
            if(true) { puts("DDD"); } else { puts("EEE"); }
            if(true) { puts("DDD"); } else { puts("EEE"); }
            if(true) { puts("DDD"); } else { puts("EEE"); }
            if(true) { puts("DDD"); } else { puts("EEE"); }
        }
    }
};

int main()
{
    XXX<int>%* a = new XXX<int>.initialize();

    a.fun();

    return 0;
}

