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

void alignment(unsigned int* size)
{
    *size = (*size + 3) & ~3;
}


int main()
{
    int size = 3;
    alignment(&size);

    printf("%x\n", size);
    
    return 0;
}
