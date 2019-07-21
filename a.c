#include <stdio.h>
#include <alloca.h>

struct StructTest7
{
    struct StructTest7* data;
};

int main() {
    struct StructTest7 data;

    data.data = NULL;

    return 0;
}
