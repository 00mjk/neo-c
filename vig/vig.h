#include <stdio.h>
#include <stdlib.h>
#include <ncurses.h>
#include <sys/ioctl.h>
#include <unistd.h>

// vig1init.h
int xgetmaxx();
int xgetmaxy();

struct VigWin 
{
    WINDOW* win;
    list<wstring>*% texts;
    int y;
    int x;
    int width;
    int height;
};

struct Vig 
{
    vector<VigWin*%>*% wins;
    VigWin* activeWin;
};

impl VigWin 
{
    initialize(int y, int x, int width, int height);
    finalize();
    void view(VigWin* self, Vig* vig);
    void input(VigWin* self, Vig* vig);
}

impl Vig 
{
    void init_curses(Vig* self);
    initialize();
    finalize();
    int main_loop(Vig* self);
}

// vig2base.h
struct VigWin version 2 
{
    int cursorY;
    int cursorX;
    int scroll;
};

impl VigWin version 2 
{
    void textsView(VigWin* self, Vig* vig);
    void statusBarView(VigWin* self, Vig* vig);
    void view(VigWin* self, Vig* vig);
    void input(VigWin* self, Vig* vig);
    int getKey(VigWin* self);
    void modifyOverCursorYValue(VigWin* self);
    void modifyUnderCursorYValue(VigWin* self);
    void modifyOverCursorXValue(VigWin* self);
    void modifyUnderCursorXValue(VigWin* self);

    void forward(VigWin* self);
    void backward(VigWin* self);
    void prevLine(VigWin* self);
    void nextLine(VigWin* self);
    void halfScrollUp(VigWin* self);
    void halfScrollDown(VigWin* self);
    void moveAtHead(VigWin* self);
    void moveAtTail(VigWin* self);

}

struct Vig version 2 
{
    vector<void (*lambda)(Vig*, int)>*% events;
    bool appEnd;
}

impl VigWin version 2
{
    void openFile(VigWin* self, char* file_name, int line_num);
}

impl Vig version 2 
{
    initialize();

    int main_loop(Vig* self);

    void openFile(Vig* self, int num_files, char** file_names, int line_num);
}

/// vig3insert_mode.h ///
enum eMode { kEditMode, kInsertMode };

impl VigWin version 3 
{
    void view(VigWin* self, Vig* vig);
    void insertText(VigWin* self, wstring key);
    void enterNewLine(VigWin* self);
    void enterNewLine2(VigWin* self);
    void input(VigWin* self, Vig* vig);

    void pushUndo(VigWin* self);
    void writedFlagOn(VigWin* self);
    void completion(VigWin* self);
    void clearInputedKey(VigWin* self);
    void saveInputedKey(VigWin* self);
}

struct Vig version 3 
{
    int mode;
};

impl Vig version 3 
{
    initialize();

    void enterInsertMode(Vig* self);
    void exitFromInsertMode(Vig* self);
    int main_loop(Vig* self);
}

/// vig4word.h ///
impl VigWin version 4
{
    void forwardWord(VigWin* self);
    void backwardWord(VigWin* self);
    
}

impl Vig version 4
{
    initialize();
}

/// vig5undo.h ///
struct VigWin version 5
{
    list<list<wstring>*%>%* undo;
    list<int>%* undoScroll;
    list<int>%* undoCursorX;
    list<int>%* undoCursorY;
    int undoIndex;
};

impl VigWin version 5
{
    initialize(int y, int x, int width, int height);

    void pushUndo(VigWin* self);

    void undo(VigWin* self);
    void redo(VigWin* self);
}

impl Vig version 5
{
    initialize();

    void enterInsertMode(Vig* self);
}

/// vig6file.h ///
struct VigWin version 6
{
    string fileName;
    bool writed;
};

impl VigWin version 6
{
    initialize(int y, int x, int width, int height);
    void statusBarView(VigWin* self, Vig* vig);
    void openFile(VigWin* self, char* file_name, int line_num);
    void writeFile(VigWin* self);
    void writedFlagOn(VigWin* self);
}

impl Vig version 6
{
    void openFile(Vig* self, int num_files, char** file_names, int line_num);
}

/// vig7yank.h ///
impl VigWin version 7
{
    void deleteLines(VigWin* self, int head, int tail, Vig* vig);
    void deleteOneLine(VigWin* self, Vig* vig);
}

enum { kYankKindLine, kYankKindNoLine };

struct Vig version 7
{
    list<wstring>*% yank;
    int yankKind;
}

impl Vig version 7 
{
    initialize();
}

/// vig8visual.h ///
enum { kYankKindLine, kYankKindNoLine };
enum eMode { kVisualMode = kInsertMode + 1 };

struct VigWin version 8
{
    int visualModeHead;
};


impl VigWin version 8 
{
    initialize(int y, int x, int width, int height);
    void visualModeView(VigWin* self, Vig* vig);
    void view(VigWin* self, Vig* vig);
    void inputVisualMode(VigWin* self, Vig* vig);
    void input(VigWin* self, Vig* vig);
}

impl Vig version 8
{
    void enterVisualMode(Vig* self);
    void exitFromVisualMode(Vig* self);
    initialize();
}

/// vig9search.h ///
enum eMode { kSearchMode = kVisualMode + 1 };

struct Vig version 9
{
    wstring searchString;
};

impl VigWin version 9
{
    void searchModeView(VigWin* self, Vig* vig);
    void view(VigWin* self, Vig* vig);

    void inputSearchlMode(VigWin* self, Vig* vig);
    void input(VigWin* self, Vig* vig);
}

impl Vig version 9
{
    void enterSearchMode(Vig* self);
    void exitFromSearchMode(Vig* self);

    initialize();
}

/// vig10edit.h ///
impl VigWin version 10
{
    void deleteLines(VigWin* self, int head, int tail, Vig* vig);
    void deleteOneLine(VigWin* self, Vig* vig);
}

impl Vig version 10
{
    initialize();
}

/// vig11move.h ///
impl Vig version 11
{
    initialize();
}

/// vig12command.h ///
enum eMode { kCommandMode = kSearchMode + 1 };

struct Vig version 12
{
    string commandString;
};

impl VigWin version 12
{
    void view(VigWin* self, Vig* vig);
    void input(VigWin* self, Vig* vig);
}

impl Vig version 12
{
    void enterComandMode(Vig* vig);
    void exitFromComandMode(Vig* self);
    initialize();
}

impl VigWin version 13 
{
    void completion(VigWin* self);
}

// vig2base.h
struct VigWin version 14
{
    vector<int>*% inputedKeys;
    vector<int>*% savedInputedKeys;
    bool autoInput;
    int autoInputIndex;
    bool pressedDot;
};


impl VigWin version 14
{
    initialize(int y, int x, int width, int height);
    int getKey(VigWin* self);
    void clearInputedKey(VigWin* self);
    void saveInputedKey(VigWin* self);
}

impl Vig version 14
{
    initialize();
}

