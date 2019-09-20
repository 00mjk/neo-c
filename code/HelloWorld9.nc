#include "neo-c.h"

extern "C"
{
#include <stdio.h>
#include <string.h>

inline bool funX(int a, int b)
{
    return a == b;
}

void puts2(char* str)
{
    puts(str);
}
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

    li.push_back(0);
    li.push_back(1);

    var li2 = new list<int>.initialize();

    li2.push_back(0);
    li2.push_back(1);

    xassert("list test1", li.equals(li2));
    li.insert(1, 7);

    xassert("list test2", li.equals(list!(0, 7, 1)));
    
    var li3 = list!(string("aaa"), string("bbb"));

    li3.insert(0, string("ccc"));

    xassert("list test3", li3.equals(list!(string("ccc"), string("aaa"), string("bbb"))));

    var tu = tuple!(1,2,string("str"));

    xassert("tuple test", tu.equals(tuple!(1, 2, string("str"))));

    0
}

