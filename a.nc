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
    wstring a = wstring("ABC");

    printf("%ls\n", a.delete_range(1,2));

    return 0;
}
