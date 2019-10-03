#include "neo-c.h"

extern "C"
{
#include <stdio.h>
#include <stdlib.h>
#include <ncurses.h>
}

#include "mvi2.h"

def main():int
{
    var mvi = new mvi.initialize();

    mvi.main()
}
