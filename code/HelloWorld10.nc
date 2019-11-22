#include "neo-c.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <ncurses.h>
#include <sys/ioctl.h>
#include <unistd.h>

template <R> void method_generics_test(R& a)
{
    printf("%ls\n", a);
}

int main()
{
    wstring wstr = wstring("ABC");

    xassert("wstring test1", wstr.length() == 3);

    xassert("wstring test2", wstr.equals(wstring("ABC")));

    printf("%s\n", wstring("あいうえお").toUtf8String());

    method_generics_test(wstr);

    var li = list!(string("aaa"), string("bbb"), string("ccc"));

    var item = li.pop_back(null);

    printf("item %s\n", class_name(item));

    xassert("list test", item.equals("ccc"));

    li.each {
        printf("%s\n", it);
    }

    var item2 = li.pop_back(null);

    printf("item2 %s\n", class_name(item2));

    xassert("list test", item2.equals("bbb"));

    li.each {
        printf("%s\n", it);
    }

    var item3 = li.pop_back(null);

    printf("item3 %s\n", class_name(item3));

    xassert("list test", item3.equals("aaa"));

    li.each {
        printf("%s\n", it);
    }

    var li2 = new list<wstring>.initialize();

    li2.push_back(wstring("aaa"));
    li2.push_back(wstring("bbb"));
    li2.push_back(wstring("ccc"));

    var li3 = new list<list<wstring>*%>.initialize();

    li3.push_back(clone li2);
    li3.push_back(clone li2);
    li3.push_back(clone li2);

    0
}

