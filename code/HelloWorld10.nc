#include "neo-c.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <ncurses.h>
#include <sys/ioctl.h>
#include <unistd.h>

int main()
{
    wstring wstr = wstring("ABC");

    xassert("wstring test1", wstr.length() == 3);

    xassert("wstring test2", wstr.equals(wstring("ABC")));

    printf("%s\n", wstring("あいうえお").toUtf8String());

    0
}

