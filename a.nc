#include <stdio.h>
#include <stdlib.h>
#include <ncurses.h>
#include <unistd.h>
#include <sys/ioctl.h>
#include <sys/types.h>
#include <dirent.h>
#include <unistd.h>
#include <locale.h>
#include <wctype.h>

struct rusage {
    int a;
    int b;
};

static pid_t wait3(int* status, int options, struct rusage* rusage) { return wait4(-1, status, options, rusage); }

void fun(struct rusage rusage) 
{
}

int main()
{

    return 0;
}
