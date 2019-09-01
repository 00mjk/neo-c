#include "neo-c.h"

extern "C"
{
#include <stdio.h>
}

def main():int 
{
    var str = string("HELLO WORLD");

    str[0] = 'h';

    puts(str);

    var v = new vector<int>.initialize();

    v.push_back(1);
    v.push_back(2);
    v.push_back(3);

    v.each {
        printf("%d\n", it);
    }

    var v2 = vec!(1,2,3);

    v2.each {
        printf("%d\n", it);
    }

    var v3 = vec!("AAA", "BBB", "CCC");

    v3.each {
        printf("%s\n", it);
    }
    var v4 = vec!(string("AAA"), string("BBB"), string("CCC"));

    v4.each {
        printf("%s\n", it);
    }
    
    0
}

