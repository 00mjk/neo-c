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

int fun() {
    return 
# 5 "01init.nc" 3 4
          ((0 != (const void *)((
# 5 "01init.nc"
          stdscr
# 5 "01init.nc" 3 4
          ))) ? ((
# 5 "01init.nc"
          stdscr
# 5 "01init.nc" 3 4
          )->_maxx + 1) : (-1))
                         ;
}

int main()
{
    wstring a = wstring("ABC");

    printf("%ls\n", a.delete_range(1,2));

    return 0;
}
