#include <stdio.h>
#include <alloca.h>

int func()
{
    return 128;
}

int main() {
    char* mem = alloca(func());

    mem[0] = 0;

    return 0;
}
