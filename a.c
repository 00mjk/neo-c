#include <stdio.h>
#include <alloca.h>

struct sStruct {
    int a;
    double b;
};

struct sStruct data = {
    1111, 1.1
};

int main() {

    printf("%d %f\n", data.a, data.b);

    return 0;
}
