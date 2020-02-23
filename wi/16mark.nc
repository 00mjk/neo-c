#include <stdio.h>
#include <stdlib.h>
#include <ncurses.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include <locale.h>
#include <wctype.h>

#include "common.h"

impl ViWin version 16
{
initialize(int y, int x, int width, int height) {
    inherit(self, y, x, width, height);
    
    self.mark = new map<wchar_t, tuple3<int,int, int>*%>.initialize();
}

void markAtCurrentPoint(ViWin* self, wchar_t c) {
    var point = new tuple3<int, int, int>.initialize();
    point.v1 = self.scroll;
    point.v2 = self.cursorY;
    point.v3 = self.cursorX;
    
    self.mark.insert(c, point);
}

void returnAtMarkedPoint(ViWin* self, wchar_t c) {
    var point = self.mark.at(c, null);
    
    if(point != null) {
        self.saveReturnPoint();

        self.scroll = point.v1;
        self.cursorY = point.v2;
        self.cursorX = point.v3;
        
        self.modifyUnderCursorYValue();
        self.modifyOverCursorYValue();
        self.modifyOverCursorXValue();
    }
}

void returnBack(ViWin* self) {
    var point = borrow self.returnPoint;
    
    if(point != null) {
        self.cursorY = point.v1;
        self.cursorX = point.v2;
        self.scroll = point.v3;
        
        self.modifyUnderCursorYValue();
        self.modifyOverCursorYValue();
        self.modifyOverCursorXValue();
    }
}
}

impl Vi version 16
{
initialize() {
    inherit(self);

    self.events.replace('.', lambda(Vi* self, int key) 
    {
        self.activeWin.autoInput = true;
        self.activeWin.pressedDot = true;
    });

    self.events.replace('m', lambda(Vi* self, int key) 
    {
        var key2 = self.activeWin.getKey();
        
        self.activeWin.markAtCurrentPoint(key2);
    });

    self.events.replace('`', lambda(Vi* self, int key) 
    {
        var key2 = self.activeWin.getKey();
        
        if(key2 == '`') {
            self.activeWin.returnBack();
        }
        else {
            self.activeWin.returnAtMarkedPoint(key2);
        }
    });
}
}
