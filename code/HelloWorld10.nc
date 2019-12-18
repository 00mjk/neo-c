#include "neo-c.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <ncurses.h>
#include <sys/ioctl.h>
#include <unistd.h>

struct VigWin
{
    int cursorY;
    int cursorX;

    list<list<wstring>*%>%* undo;
    list<int>%* undoCursorX;
    list<int>%* undoCursorY;
    int undoIndex;
};

impl VigWin {
    initialize() {
        self.undoCursorX = new list<int>;

        self.undoCursorX.head = null;
    }
}

template <R> void method_generics_test(R& a)
{
    printf("%ls\n", a);
}

int main()
{
    wstring wstr = wstring("ABC");

    xassert("wstring test1", wstr.length() == 3);

    xassert("wstring test2", wstr.equals(wstring("ABC")));

    printf("%s\n", wstring("あいうえお").to_string());

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

    xassert("list test2", item2.equals("bbb"));

    li.each {
        printf("%s\n", it);
    }

    var item3 = li.pop_back(null);

    printf("item3 %s\n", class_name(item3));

    xassert("list test3", item3.equals("aaa"));

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

    var li4 = new list<list<wstring>*%>.initialize();

    li4.push_back(clone li2);
    li4.push_back(clone li2);
    li4.push_back(clone li2);

    var li5 = list!("aaa", "bbb", "ccc");

    li5.delete(0);

    li5.each {
        printf("li5.item %s\n", it);
    }

    xassert("list test4", li5.equals(list!("bbb", "ccc")));

    li5.delete(0);

    xassert("list test5", li5.equals(list!("ccc")));

    li5.delete(0);

    xassert("list test6", li5.length() == 0);

    var li6 = list!("aaa", "bbb", "ccc");

    li6.delete_range(0,1);

    xassert("list test1", li6.equals(list!("bbb", "ccc")));

    li6 = list!("aaa");

    li6.delete_range(0,1);

    xassert("list test2", li6.length() == 0);

    li6 = list!("aaa", "bbb");

    li6.delete_range(0,1);

    xassert("list test3", li6.equals(list!("bbb")));

    var li7 = list!("aaa", "bbb", "ccc", "ddd", "eee");

    li7.delete_range(1,3);

    xassert("list test4", li7.equals(list!("aaa", "ddd", "eee")));

    var li8 = list!("aaa");

    li8.delete_range(0,2);

    xassert("list test5", li8.length() == 0);

    var li9 = list!("aaa","bbb");

    li9.delete_range(1,2);

    xassert("list test6", li9.equals(list!("aaa")));

    var li10 = list!("aaa","bbb");

    li10.delete_range(0,1);

    xassert("list test7", li10.equals(list!("bbb")));

    var li11 = list!("aaa","bbb");

    li11.delete_range(0,-1);

    xassert("list test8", li11.length() == 0);

    var li12 = new list<int>.initialize();

    li12.push_back(1);
    li12.push_back(2);
    li12.push_back(3);

    xassert("list test9", li12.equals(list!(1,2,3)));

    var win = new VigWin.initialize();

    xassert("string index test", string("ABC").index("B", -1) == 1);
    xassert("wstring index test", wstring("ABC").index(wstring("C"), -1) == 2);

    xassert("string rindex test", string("ABCABC").rindex("BC", -1) == 4);
    xassert("wstring rindex test", wstring("ABCABC").rindex(wstring("BC"), -1) == 4);

    var li13 = list!("AAA", "BBB", "CCC");

    xassert("list reverse test", li13.equals(list!("CCC", "BBB", "AAA")));

    xassert("string delete test1", string("ABCDEFG").delete(2).equals("ABDEFG"));
    xassert("string delete test2", string("ABCDEFG").delete_range(2, 4).equals("ABEFG"));

    xassert("wstring delete test1", wstring("ABCDEFG").delete(2).equals(wstring("ABDEFG")));
    xassert("wstring delete test2", wstring("ABCDEFG").delete_range(2, 4).equals(wstring("ABEFG")));

    var aaa = string("ABC") * 3;

    puts(aaa);

    xassert("string multiply test", (string("ABC") * 3).equals("ABCABCABC"));

    xassert("wstring multiply test", (wstring("ABC") * 3).equals(wstring("ABCABCABC")));

    var bbb = string("ABC");

    bbb[0] = 1;
    bbb[1] = 2;

    puts(bbb.printable());

    xassert("list join test", list!(string("aaa"), string("bbb"), string("ccc")).join(",").equals("aaa,bbb,ccc"));

    var b1 = new buffer.initialize();

    b1.append("ABC", 3);

    xassert("buffer test", strcmp(b1.buf, "ABC") == 0);

    b1.append("DEF", 3);

    xassert("buffer test2", strcmp(b1.buf, "ABCDEF") == 0);

    b1.append_char('G');

    xassert("buffer test32", strcmp(b1.buf, "ABCDEFG") == 0);

    b1.append_str("XYZ");

    xassert("buffer test4", strcmp(b1.buf, "ABCDEFGXYZ") == 0);

    xassert("buffer test5", strcmp(b1.to_string(), "ABCDEFGXYZ") == 0);

    var r = regex("aaa", true, false, false, false, false, false, false, false);

    xassert("regex test", r.str.equals("aaa") && r.ignore_case);

    var r2 = regex!(/abc/i);

    xassert("regex test", r2.str.equals("abc") && r2.ignore_case);

    xassert("regex test2", string("ABC").sub(regex!(/A/), "x", null).equals("xBC"));

    var group_strings = new list<string>.initialize();

    var s1 = string("ABC").sub(regex!(/(^.)(.)/), "x", group_strings);

    xassert("regex test3", s1.equals("xC") && group_strings.item(0, null).equals("A") && group_strings.item(1, null).equals("B"));

    var group_strings2 = new list<string>.initialize();
    xassert("regex teset4", string("ABC").match(regex!(/^(A)(.)/), group_strings2) && group_strings2.item(0, null).equals("A") && group_strings2.item(1, null).equals("B"));

    printf("%d\n", string("ABC").scan(regex!(/./)).length())

    xassert("regex teset5", string("ABC").scan(regex!(/./)).equals(list!(string("A"), string("B"), string("C"))));

    0
}

