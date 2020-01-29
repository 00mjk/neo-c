aaaaa
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
aaaa
aaaa
aaaa
aaaa
aaaa
aa
aaa
aaaaa
aaaa
asdfasfad
sf
safasd
fds
f
asdf
asf
dsf
a
asdkfadslfds
fasd
fads
fsa
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
int main(int argc, char** argv)
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
    void toggleBraceForward(NeoViWin* self, wchar_t head, wchar_t tail) {
        int cursor_y = self.scroll + self.cursorY;
        int cursor_x = -1;

        int nest = 0;

        var line = self.texts.item(cursor_y, null);

        wchar_t* p = line + self.cursorX+1;

        while(p < line + line.length()) {
            if(*p == tail) {
                if(nest == 0) {
                    cursor_x = (p - line) / sizeof(wchar_t);
                    self.cursorX = cursor_x;
                    break;
                }

                p++;
                nest--;
            }
            else if(*p == head) {
                p++;

                nest++;
            }
            else {
                p++;
            }
        }

        if(cursor_x == -1) {
            cursor_y++;

            self.texts.sublist(self.scroll+self.cursorY+1, -1).each {
                wchar_t* p = it;

                while(p < it + it.length()) {
                    if(*p == tail) {
                        if(nest == 0) {
                            cursor_x = (p - it) / sizeof(wchar_t);
                            self.cursorY += it2 + 1;
                            self.modifyOverCursorYValue();
                            self.cursorX = cursor_x;
                            *it3 = true;
                            return;
                        }

                        p++;
                        nest--;
                    }
                    else if(*p == head) {
                        p++;

                        nest++;
                    }
                    else {
                        p++;
                    }
                }

                cursor_y++;
            }
        }
    }
    void toggleBraceBack(NeoViWin* self, wchar_t head, wchar_t tail) {
        int cursor_y = self.scroll + self.cursorY;
        int cursor_x = -1;

        int nest = 0;

        var line = self.texts.item(cursor_y, null);

        wchar_t* p = line + self.cursorX-1;

        while(p >= line) {
            if(*p == head) {
                if(nest == 0) {
                    cursor_x = (p - line) / sizeof(wchar_t);
                    self.cursorX = cursor_x;
                    break;
                }

                p--;
                nest--;
            }
            else if(*p == tail) {
                p--;

                nest++;
            }
            else {
                p--;
            }
        }

        if(cursor_x == -1) {
            cursor_y--;

            self.texts.sublist(0, self.scroll+self.cursorY).reverse().each {
                wchar_t* p = it + it.length();

                while(p >= it) {
                    if(*p == head) {
                        if(nest == 0) {
                            cursor_x = (p - it) / sizeof(wchar_t);
                            self.cursorY = self.cursorY - it2 -1;
                            self.modifyUnderCursorYValue();
                            self.cursorX = cursor_x;
                            *it3 = true;
                            return;
                        }

                        p--;
                        nest--;
                    }
                    else if(*p == tail) {
                        p--;

                        nest++;
                    }
                    else {
                        p--;
                    }
                }

                cursor_y--;
            }
        }
    }
    void gotoBraceEnd(NeoViWin* self, NeoVi* nvi) {
        var line = self.texts.item(self.scroll+self.cursorY, null);

        var c = line[self.cursorX];

        switch(c) {
            case '(':
                self.toggleBraceForward('(', ')');
                break;

            case '{':
                self.toggleBraceForward('{', '}');
                break;

            case '[':
                self.toggleBraceForward('[', ']');
                break;

            case '<':
                self.toggleBraceForward('<', '>');
                break;

            case ')':
                self.toggleBraceBack('(', ')');
                break;

            case '}':
                self.toggleBraceBack('{', '}');
                break;

            case ']':
                self.toggleBraceBack('[', ']');
                break;

            case '>':
                self.toggleBraceBack('<', '>');
                break;
        }
    }

    void gotoFunctionTop(NeoViWin* self, NeoVi* nvi) {
        self.texts.sublist(0, self.scroll+self.cursorY).reverse().each() {
            if(it.to_string("").match(regex!</^\\s*[a-zA-Z0-9%*?_]+\\s+[a-zA-Z0-9_]+\\(/>, null) 
                || it.to_string("").match(regex!</^\\s*initialize\\(/>, null) 
                || it.to_string("").match(regex!</^\\s*finalize\\(/>, null)) 
            {
                if(!it.to_string("").match(regex!</else\\s+if/>, null)
                   && !it.to_string("").match(regex!</return\\s+[a-zA-Z0-9_]+/>, null))
                {
                    *it3 = true;
                    self.cursorY = self.cursorY - it2 -1;
                    self.modifyUnderCursorYValue();
                    self.modifyOverCursorYValue();
                    return;
                }
            }
        }
    }

    void gotoFunctionBottom(NeoViWin* self, NeoVi* nvi) {
        int cursor_y = self.scroll+self.cursorY + 1;

        self.texts.sublist(self.scroll+self.cursorY+1, -1).each() {
            if(it.to_string("").match(regex!</^\\s*[a-zA-Z0-9%*?_]+\\s+[a-zA-Z0-9_]+\\(/>, null) 
            || it.to_string("").match(regex!</^\\s*initialize\\(/>, null) 
            || it.to_string("").match(regex!</^\\s*finalize\\(/>, null)) 
            {
                if(!it.to_string("").match(regex!</else\\s+if/>, null)
                   && !it.to_string("").match(regex!</return\\s+[a-zA-Z0-9_]+/>, null))
                {
                    *it3 = true;
                    self.cursorY += it2 + 1;
                    self.cursorX = 0;
                    self.modifyOverCursorYValue();
                    return;
                }
            }

            cursor_y++;
        }
    }
}
impl NeoVi version 15
{
    initialize() {
        inherit(self);

        self.filer = new NeoViFiler.initialize();
    }

    void activateFiler(NeoVi* self) {
impl NeoVi version 15
{
    initialize() {
        inherit(self);

        self.filer = new NeoViFiler.initialize();
    }

    void activateFiler(NeoVi* self) {

impl NeoVi version 11
{
    initialize() {
        inherit(self);

        self.events.replace('%', lambda(NeoVi* self, int key) {
            self.activeWin.gotoBraceEnd(self);
        });

        self.events.replace('[', lambda(NeoVi* self, int key) {
            var key2 = self.activeWin.getKey();

            switch(key2) {
                case '[':
                    self.activeWin.gotoFunctionTop(self);
                    break;
            }
        });

        self.events.replace(']', lambda(NeoVi* self, int key) {
            var key2 = self.activeWin.getKey();

            switch(key2) {
                case ']':
                    self.activeWin.gotoFunctionBottom(self);
    void toggleBraceForward(NeoViWin* self, wchar_t head, wchar_t tail) {
        int cursor_y = self.scroll + self.cursorY;
        int cursor_x = -1;

        int nest = 0;

        var line = self.texts.item(cursor_y, null);

        wchar_t* p = line + self.cursorX+1;

        while(p < line + line.length()) {
            if(*p == tail) {
                if(nest == 0) {
                    cursor_x = (p - line) / sizeof(wchar_t);
                    self.cursorX = cursor_x;
                    break;
                }

                p++;
                nest--;
            }
            else if(*p == head) {
                p++;

                nest++;
            }
            else {
                p++;
            }
        }

        if(cursor_x == -1) {
            cursor_y++;

            self.texts.sublist(self.scroll+self.cursorY+1, -1).each {
                wchar_t* p = it;

                while(p < it + it.length()) {
                    if(*p == tail) {
                        if(nest == 0) {
                            cursor_x = (p - it) / sizeof(wchar_t);
                            self.cursorY += it2 + 1;
                            self.modifyOverCursorYValue();
                            self.cursorX = cursor_x;
                            *it3 = true;
                            return;
                        }

                        p++;
                        nest--;
                    }
                    else if(*p == head) {
                        p++;

                        nest++;
                    }
                    else {
                        p++;
                    }
                }

                cursor_y++;
            }
        }
    }
    void toggleBraceBack(NeoViWin* self, wchar_t head, wchar_t tail) {
        int cursor_y = self.scroll + self.cursorY;
        int cursor_x = -1;

        int nest = 0;

        var line = self.texts.item(cursor_y, null);

        wchar_t* p = line + self.cursorX-1;

        while(p >= line) {
            if(*p == head) {
                if(nest == 0) {
                    cursor_x = (p - line) / sizeof(wchar_t);
                    self.cursorX = cursor_x;
                    break;
                }

                p--;
                nest--;
            }
            else if(*p == tail) {
                p--;

                nest++;
            }
            else {
                p--;
            }
        }

        if(cursor_x == -1) {
            cursor_y--;

            self.texts.sublist(0, self.scroll+self.cursorY).reverse().each {
                wchar_t* p = it + it.length();

                while(p >= it) {
                    if(*p == head) {
                        if(nest == 0) {
                            cursor_x = (p - it) / sizeof(wchar_t);
                            self.cursorY = self.cursorY - it2 -1;
                            self.modifyUnderCursorYValue();
                            self.cursorX = cursor_x;
                            *it3 = true;
                            return;
                        }

                        p--;
                        nest--;
                    }
                    else if(*p == tail) {
                        p--;

                        nest++;
                    }
                    else {
                        p--;
                    }
                }

                cursor_y--;
            }
        }
    }
    void gotoBraceEnd(NeoViWin* self, NeoVi* nvi) {
        var line = self.texts.item(self.scroll+self.cursorY, null);

        var c = line[self.cursorX];

        switch(c) {
            case '(':
                self.toggleBraceForward('(', ')');
                break;

            case '{':
                self.toggleBraceForward('{', '}');
                break;

            case '[':
                self.toggleBraceForward('[', ']');
                break;

            case '<':
                self.toggleBraceForward('<', '>');
                break;

            case ')':
                self.toggleBraceBack('(', ')');
                break;

            case '}':
                self.toggleBraceBack('{', '}');
                break;

            case ']':
                self.toggleBraceBack('[', ']');
                break;

            case '>':
                self.toggleBraceBack('<', '>');
                break;
        }
    }

    void gotoFunctionTop(NeoViWin* self, NeoVi* nvi) {
        self.texts.sublist(0, self.scroll+self.cursorY).reverse().each() {
            if(it.to_string("").match(regex!</^\\s*[a-zA-Z0-9%*?_]+\\s+[a-zA-Z0-9_]+\\(/>, null) 
                || it.to_string("").match(regex!</^\\s*initialize\\(/>, null) 
                || it.to_string("").match(regex!</^\\s*finalize\\(/>, null)) 
            {
                if(!it.to_string("").match(regex!</else\\s+if/>, null)
                   && !it.to_string("").match(regex!</return\\s+[a-zA-Z0-9_]+/>, null))
                {
                    *it3 = true;
                    self.cursorY = self.cursorY - it2 -1;
                    self.modifyUnderCursorYValue();
                    self.modifyOverCursorYValue();
                    return;
                }
            }
        }
    }

    void gotoFunctionBottom(NeoViWin* self, NeoVi* nvi) {
        int cursor_y = self.scroll+self.cursorY + 1;

        self.texts.sublist(self.scroll+self.cursorY+1, -1).each() {
            if(it.to_string("").match(regex!</^\\s*[a-zA-Z0-9%*?_]+\\s+[a-zA-Z0-9_]+\\(/>, null) 
            || it.to_string("").match(regex!</^\\s*initialize\\(/>, null) 
            || it.to_string("").match(regex!</^\\s*finalize\\(/>, null)) 
            {
                if(!it.to_string("").match(regex!</else\\s+if/>, null)
                   && !it.to_string("").match(regex!</return\\s+[a-zA-Z0-9_]+/>, null))
                {
                    *it3 = true;
                    self.cursorY += it2 + 1;
                    self.cursorX = 0;
                    self.modifyOverCursorYValue();
                    return;
                }
            }

            cursor_y++;
        }
    }
}

impl NeoVi version 11
{
    initialize() {
        inherit(self);

        self.events.replace('%', lambda(NeoVi* self, int key) {
            self.activeWin.gotoBraceEnd(self);
        });

        self.events.replace('[', lambda(NeoVi* self, int key) {
            var key2 = self.activeWin.getKey();

            switch(key2) {
                case '[':
                    self.activeWin.gotoFunctionTop(self);
                    break;
            }
        });

        self.events.replace(']', lambda(NeoVi* self, int key) {
            var key2 = self.activeWin.getKey();

            switch(key2) {
                case ']':
                    self.activeWin.gotoFunctionBottom(self);
                    break;
            }
        });
    }
}
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
asdsafa
sdfasad
int main(int argc, char** argv)
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds
f
asdf
asf
dsf
a
asdkfadslfds

saf
dsfda
s
fasf
asfa
sf
asf
ads
fa
d
as
dfadf
fad
das
fad
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
asdfasfa
sda
fasf
lasdjfkdasjf
asdfasfa
sda
fasf
lasdjfkdasjf
asdfasfa
sda
fasf
lasdjfkdasjf
asdfasfa
sda
fasf
lasdjfkdasjf
asdfasfa
sda
fasf
lasdjfkdasjf
asdfasfa
sda
fasf
lasdjfkdasjf
asdfasfa
sda
fasf
lasdjfkdasjf
asdfasfa
sda
fasf
lasdjfkdasjf
asdfasfa
sda
fasf
lasdjfkdasjf
asdfasfa
sda
fasf
lasdjfkdasjf
asdfasfa
sda
fasf
lasdjfkdasjf
asdfasfa
sda
fasf
lasdjfkdasjf
asdfasfa
sda
fasf
lasdjfkdasjf
asdfasfa
sda
fasf
lasdjfkdasjf
asdfasfa
sda
fasf
lasdjfkdasjf
asdfasfa
sda
fasf
lasdjfkdasjf
asdfasfa
sda
fasf
lasdjfkdasjf
asdfasfa
sda
fasf
lasdjfkdasjf
asdfasfa
sda
fasf
lasdjfkdasjf
asdfasfa
sda
fasf
lasdjfkdasjf
asdfasfa
sda
fasf
lasdjfkdasjf
asdfasfa
sda
fasf
lasdjfkdasjf
asdfasfa
sda
fasf
lasdjfkdasjf
asdfasfa
sda
fasf
lasdjfkdasjf

asdfasfa
sda
fasf
lasdjfkdasjf
asdfasfa
sda
fasf
lasdjfkdasjf
asdfasfa
sda
fasf
lasdjfkdasjf
asdfasfa
sda
fasf
lasdjfkdasjf
asdfasfa
sda
fasf
lasdjfkdasjf
asdfasfa
sda
fasf
lasdjfkdasjf
asdfasfa
sda
fasf
lasdjfkdasjf
asdfasfa
sda
fasf
lasdjfkdasjf
asdfasfa
sda
fasf
lasdjfkdasjf
asdfasfa
sda
fasf
lasdjfkdasjf
asdfasfa
sda
fasf
lasdjfkdasjf
asdfasfa
sda
fasf
lasdjfkdasjf
asdfasfa
sda
fasf
lasdjfkdasjf
asdfasfa
sda
fasf
lasdjfkdasjf
asdfasfa
sda
fasf
lasdjfkdasjf
asdfasfa
sda
fasf
lasdjfkdasjf
asdfasfa
sda
fasf
lasdjfkdasjf
asdfasfa
sda
fasf
lasdjfkdasjf
asdfasfa
sda
fasf
lasdjfkdasjf
asdfasfa
sda
fasf
lasdjfkdasjf
asdfasfa
sda
fasf
lasdjfkdasjf
asdfasfa
sda
fasf
lasdjfkdasjf
asdfasfa
sda
fasf
lasdjfkdasjf
asdfasfa
sda
fasf
lasdjfkdasjf
asdfasfa
sda
fasf
lasdjfkdasjf
asdfasfa
sda
fasf
lasdjfkdasjf
asdfasfa
sda
fasf
lasdjfkdasjf
asdfasfa
sda
fasf
lasdjfkdasjf
asdfasfa
sda
fasf
lasdjfkdasjf
asdfasfa
sda
fasf
lasdjfkdasjf
asdfasfa
sda
fasf
lasdjfkdasjf
asdfasfa
sda
fasf
lasdjfkdasjf
asdfasfa
sda
fasf
lasdjfkdasjf
asdfasfa
sda
fasf
lasdjfkdasjf

int main(int argc, char** argv)
{
    puts("HELLO WORLD");
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
    puts("HELLO WORLD");
int main(int argc, char** argv)
{
    puts("HELLO WORLD");
    puts("HELLO WORLD");
aaaa
aa
aaa
aaaaa
aaaa
aaaa
aa
aaa
aaaaa
aaaa
aaaa
aa
aaa
aaaaa
aaaa
aaaa
aa
aaa
aaaaa
aaaa
aaaa
aa
aaa
aaaaa
aaaa
aaaa
aa
aaa
aaaaa
aaaa
aaaa
aa
aaa
aaaaa
aaaa
aaaa
aa
aaa
aaaaa
aaaa
aaaa
aa
aaa
aaaaa
aaaa
aaaa
aa
aaa
aaaaa
aaaa
aaaa
aa
aaa
aaaaa
aaaa
aaaa
aa
aaa
aaaaa
aaaa
aaaa
aa
aaa
aaaaa
aaaa
aaaa
aa
aaa
aaaaa
aaaa
aaaa
aa
aaa
aaaaa
aaaa
aaaa
aa
aaa
aaaaa
aaaa
aaaa
aa
aaa
aaaaa
aaaa
aaaa
aa
aaa
aaaaa
aaaa
aaaa
aa
aaa
aaaaa
aaaa
aaaa
aa
aaa
aaaaa
aaaa
aaaa
aa
aaa
aaaaa
aaaa
aaaa
aa
aaa
aaaaa
aaaa
aaaa
aa
aaa
aaaaa
aaaa
aaaa
aa
aaa
aaaaa
aaaa
aaaa
aa
aaa
aaaaa
aaaa
aaaa
aa
aaa
aaaaa
aaaa
aaaa
aa
aaa
aaaaa
aaaa
aaaa
aa
aaa
aaaaa
aaaa
aaaa
aa
aaa
aaaaa
aaaa
aaaa
aa
aaa
aaaaa
aaaa
aaaa
aa
aaa
aaaaa
aaaa
aaaa
aa
aaa
aaaaa
aaaa
aaaa
aa
aaa
aaaaa
aaaa
aaaa
aa
aaa
aaaaa
aaaa
aaaa
aa
aaa
aaaaa
aaaa
aaaa
aa
aaa
aaaaa
aaaa
aaaa
aa
aaa
aaaaa
aaaa
aaaa
aa
aaa
aaaaa
aaaa
aaaa
aa
aaa
aaaaa
aaaa
aaaa
aa
aaa
aaaaa
aaaa
aaaa
aa
aaa
aaaaa
aaaa
aaaa
aa
aaa
aaaaa
aaaa
aaaa
aa
aaa
aaaaa
aaaa
aaaa
aa
aaa
aaaaa
aaaa
aaaa
aa
aaa
aaaaa
aaaa
aaaa
aa
aaa
aaaaa
aaaa
aaaa
aa
aaa
aaaaa
aaaa
aaaa
aa
aaa
aaaaa
aaaa
aaaa
aa
aaa
aaaaa
aaaa
aaaa
aa
aaa
aaaaa
aaaa
aaaa
aa
aaa
aaaaa
aaaa
aaaa
aa
aaa
aaaaa
aaaa
aaaa
aa
aaa
aaaaa
aaaa
aaaa
aa
aaa
aaaaa
aaaa
aaaa
aa
aaa
aaaaa
aaaa
aaaa
aa
aaa
 sdfasfasfads
 fds
 fa
 sdf
 asf
 dsa
 asf
 dsa
 asf
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 asf
 dsa
 fd
 saf
 d
    dd
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    puts("HELLO WORLD");
    asf
    ads
    fa
    dd
    asf
    ads
    fa
    dd
    asf
    ads
    fa
    dd
    asf
    ads
    fa
    dd
    asf
    ads
    fa
    dd
    asf
    ads
    fa
    dd
    asf
    ads
    fa
    dd
    asf
    ads
    fa
    dd
    asf
    ads
    fa
    dd
    asf
    ads
    fa
    dd
    asf
    ads
    fa
    dd
    asf
    ads
    fa
    dd
    asf
    ads
    fa
    dd
    asf
    ads
    fa
    dd
    asf
    ads
    fa
    dd
    asf
    ads
    fa
    dd
    asf
    ads
    fa
    dd
    asf
    ads
    fa
    dd
    asf
    ads
    fa
    dd
    asf
    ads
    fa
    dd
    asf
    ads
    fa
    dd
    asf
    ads
    fa
    dd
    asf
    ads
    fa
    dd
    asf
    ads
    fa
    dd
    asf
    ads
    fa
    dd
    asf
    ads
    fa
    dd
    asf
    ads
    fa
    dd
    asf
    ads
    fa
    dd
    asf
    ads
    fa
    dd
    asf
    ads
    fa
    dd
    asf
    ads
    fa
    dd
    asf
    ads
    fa
    dd
    asf
    ads
    fa
    dd
    asf
    ads
    ads
    fa
    fa
    fa
    fa
    fa
    dd
    asf
    ads
    ads
    ads
    ads
    ads
    fa
    fa
    fa
    fa
    fa
    fa
    dd
    ads
    asf
    ads
    asf
    ads
    asf
    ads
    asf
    ads
    asf
    ads
    asf
    ads
    asf
    ads
    asf
    ads
    asf
    asf
    asf
    fa
    fa
    fa
    fa
    dd
    dd
    dd
    dd
    asf
    ads
    fa
    dd
    asf
    ads
    fa
    dd
    asf
    ads
    fa
    dd
    dd
    dd
    dd
    dd
    dd
    dd
    dd
    dd
    dd
    dd
    dd
    dd
    dd
    dd
    dd
    dd
    dd
    dd
    dd
    dd
    dd
    asf
    asf
    ads
    fa
    dd
    asf
    ads
    fa
    dd
    asf
    ads
    fa
    dd
    asf
    ads
    fa
    dd
    asf
    ads
    fa
    dd
    asf
    ads
    fa
    dd
    asf
    ads
    fa
    dd
    asf
    ads
    fa
    dd
    asf
    ads
    fa
    dd
    asf
    ads
    fa
    dd
    asf
    ads
    fa
    dd
    asf
    ads
    fa
    dd
    asf
    ads
    fa

