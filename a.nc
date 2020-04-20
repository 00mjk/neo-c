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
    var str = string("sp a.txt");

    printf("%s\n", str.scan(regex!("sp \(.+\)")).item(1, null));
    
    return 0;
}
