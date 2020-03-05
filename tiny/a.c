#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main()
{
    int pipes[2];
    pipe(pipes);

    exit(0);
}
