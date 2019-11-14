#include <ncurses.h>
#include <stdio.h>
#include <stdlib.h>

int main() 
{
    initscr();

    int key = getch();

    endwin();

    printf("key %d\n", key);

    exit(0);
}
