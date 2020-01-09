#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <ncurses.h>
#include <sys/ioctl.h>
#include <unistd.h>

int main()
{

    var li6 = list!(string("ccc"), string("aaa"), string("bbb"));

    var li7 = li6.sort();

    xassert("sort", li7.equals(list!(string("aaa"), string("bbb"), string("ccc"))));

    return 0;
}
