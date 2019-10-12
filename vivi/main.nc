#include "neo-c.h"

extern "C"
{
#include <stdio.h>
#include <stdlib.h>
#include <ncurses.h>
}

#include "vivi.h"

def main():int
{
    var vivi = new vivi.initialize();
    vivi.main_loop()
}
