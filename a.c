#include <stdio.h>
#include <alloca.h>

enum eEnum { kA, kB=3, kC };

void fun(enum eEnum2 aaa)
{
    printf("%d\n", aaa);
}

int main() {
    fun(4);

    return 0;
}
