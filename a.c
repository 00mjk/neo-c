#include <stdlib.h>
#include <stdio.h>
#include <stdarg.h>

void va_list_test(char* str, ...)
{
    va_list vlist;

    va_start(vlist, str);
    vprintf(str, vlist);
    va_end(vlist);
}

int main()
{
    va_list_test("aaa %d\n", 1);

    return 0;
}

