#include "neo-c.h"

extern "C"
{
#include <stdio.h>
}

struct StructTest {
    abc:string;
}

def main():int 
{
/*
    var str = string("HELLO WORLD");

    str[0] = 'h';

    puts(str);

    var v = vec!(1,2,3);

    v.each {
        printf("%d\n", it);
    }

    var v2 = vec!("AAA", "BBB", "CCC");

    v2.each {
        printf("%s\n", it);
    }

    var v3 = vec!(string("aaa"), string("bbb"), string("ccc"));

    v3.each {
        printf("%s\n", it);
    }
*/
    
    var li = new list<int>.initialize();

    li.push_back(1);
    li.push_back(2);
    li.push_back(3);

    li.each {
        printf("%d\n", it);
    }
    
puts("main last");
    0
}

