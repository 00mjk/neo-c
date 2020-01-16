#include <stdio.h>
#include <stdlib.h>


int fun() {
    if(true) {
        puts("AAA");
    }
    else {
        //lll
    }
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
        //list<int>*% aaa = new list<int>.initialize();
        //aaa.push_back(1);
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
            2*2;
            1+1;
            llll
        }
    }
};

int main()
{
    XXX<int>%* a = new XXX<int>.initialize();

    a.fun();

    return 0;
}
