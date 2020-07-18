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
    var li2 = list!("AAA", "BBB", "CCC");
    
    li2.each {
        printf("%s\n", it);
    }
    
    return 0;
}
