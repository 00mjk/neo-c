#include "neo-c.h"

extern "C"
{
#include <stdio.h>
#include <stdlib.h>
#include <ncurses.h>
}

#include "vig3.h"

def main():int
{
    var vig = new vig.initialize();
    vig.main_loop()
}
