#include "common.h"

impl Vi version 6
{

void openNewFile(Vi* self, char* file_name) {
    int maxy = xgetmaxy();
    int maxx = xgetmaxx();

    int height = maxy / (self.wins.length() + 1);

    var win = new ViWin.initialize(0,0, maxx-1, height, self);
    
    win.openFile(file_name, -1);

    self.activeWin = win;

    self.wins.push_back(win);

    self.repositionWindows();

    self.wins.each {
        if(!it.equals(self.activeWin)) {
            self.toggleWin = it2;
        }
    }
}

void closeActiveWin(Vi* self) {
    int active_pos = self.wins.find(self.activeWin, -1);
    
    self.wins.delete(active_pos);

    self.repositionWindows();

    self.activeWin = self.wins.item(0, null);
}

void exitFromApp(Vi* self) {
    self.wins.each {
        it.writeFile();
    }
    self.appEnd = true;
}
}
