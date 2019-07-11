#include <stdio.h>

extern int gGlobalVar;

int main() {
    printf("%d\n", gGlobalVar);

    return 0;
}
