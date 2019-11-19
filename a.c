#include <ncurses.h>
#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

#ifndef _GNU_SOURCE
#define _GNU_SOURCE
#endif

#ifndef __USE_XOPEN
#define __USE_XOPEN
#endif
#ifndef _USE_MISC
#define _USE_MISC
#endif
#ifndef __USE_BSD
#define __USE_BSD
#endif

#include <wchar.h>

int main() 
{
    wchar_t aaa[128];

    setlocale(LC_ALL, "");

    mbstowcs(aaa, "あいうえお", 128);

    aaa[5] = '\0';
    printf("key %d\n", wcswidth(aaa, 128));

    exit(0);
}

