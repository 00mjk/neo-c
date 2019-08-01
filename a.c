#include <stdio.h>
#include <alloca.h>

void va_list_test(char* str, ...)
{
    va_list vlist;

    va_start(vlist, str);
    vprintf(str, vlist);
    va_end(vlist);
}

int main() {
    va_list_test("%d\n", 123);

    return 0;
}
