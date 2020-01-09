#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <ncurses.h>
#include <sys/ioctl.h>
#include <unistd.h>

inline bool funX(int a, int b)
{
    return a == b;
}

void puts2(char* str)
{
    puts(str);
}

struct StructTest {
    string abc;
};

struct ListTest {
    list<int>* li;
};


struct win {
    list<char*>* texts;
};

impl win {
    initialize() {
        self.texts = borrow new list<char*>.initialize();

        self.texts.push_back(string("aaa"));
    }

    finalize() {
        delete self.texts;
    }
}

struct TestStruct {
    int a;
    char b;
    long c;
    int d;
};

int main()
{
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

    li3.each {
        printf("%s\n", it);
    }

    var tu = tuple!(1,2,string("str"));

    xassert("tuple test", tu.equals(tuple!(1, 2, string("str"))));

    var sub_str = string("ABC").substring(0, 1);

    xassert("string test", strcmp(sub_str, "A") == 0);

    var wi = new win.initialize();

    printf("%s\n", wi.texts.item(0, null));

    var v4 = new vector<string>.initialize_with_values(3, string("aaa"));

    v4.each {
        printf("%d %s\n", it2, it);
    }

    vec!(string("aaa"), string("aaa"), string("aaa")).each {
        printf("%d %s\n", it2 , it);
    }

    xassert("vector test", v4.equals(vec!(string("aaa"), string("aaa"), string("aaa"))));

    var str2 = string("XYZ");

    var str3 = clone str2;

    xassert("clone test", str3.equals(str2));

    var data = new TestStruct;

    data.a = 123;
    data.b = 245;
    data.c = 111;
    data.d = 222;

    var data2 = clone data;

    xassert("clone test2", data2.a == 123 && data2.b == 245 && data2.c == 111 && data2.d == 222);

    var v5 = vec!(string("aaa"), string("bbb"));

    var v6 = clone v5;

    xassert("clone test3", v6.equals(vec!(string("aaa"), string("bbb"))));

    var li4 = list!(string("aaa"), string("bbb"));

    var li5 = clone li4;

    xassert("clone test4", li5.equals(list!(string("aaa"), string("bbb"))));


    var v7 = vec!("aaa", "bbb");

    var v8 = clone v7;

    xassert("clone test9", v8.equals(vec!("aaa", "bbb")));

    0
}

