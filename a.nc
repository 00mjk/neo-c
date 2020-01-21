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

int main()
{
    DIR* dir = opendir(".");

    struct dirent* entry = readdir(dir);

    printf("%p %s\n", entry, entry->d_name);

    closedir(dir);
    
    return true;
}

