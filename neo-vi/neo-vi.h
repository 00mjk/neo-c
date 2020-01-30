#include <stdio.h>
#include <stdlib.h>
#include <ncurses.h>
#include <sys/ioctl.h>
#include <unistd.h>

#define SAVE_INPUT_KEY_MAX 256

// neo-vi1init.h
int xgetmaxx();
int xgetmaxy();

struct NeoViWin 
{
    WINDOW* win;
    list<wstring>*% texts;
    int y;
    int x;
    int width;
    int height;
};

struct NeoVi 
{
    list<NeoViWin*%>*% wins;
    NeoViWin* activeWin;
};

impl NeoViWin 
{
    initialize(int y, int x, int width, int height);
    finalize();
    void view(NeoViWin* self, NeoVi* nvi);
    void input(NeoViWin* self, NeoVi* nvi);
    bool equals(NeoViWin* left, NeoViWin* right);
}

impl NeoVi 
{
    void init_curses(NeoVi* self);
    initialize();
    finalize();
    int main_loop(NeoVi* self);
}

// neo-vi2base.h
struct NeoViWin version 2 
{
    int cursorY;
    int cursorX;
    int scroll;
};

impl NeoViWin version 2 
{
    void textsView(NeoViWin* self, NeoVi* nvi);
    void statusBarView(NeoViWin* self, NeoVi* nvi);
    void view(NeoViWin* self, NeoVi* nvi);
    void input(NeoViWin* self, NeoVi* nvi);
    int getKey(NeoViWin* self);
    void modifyOverCursorYValue(NeoViWin* self);
    void modifyUnderCursorYValue(NeoViWin* self);
    void modifyOverCursorXValue(NeoViWin* self);
    void modifyUnderCursorXValue(NeoViWin* self);

    void forward(NeoViWin* self);
    void backward(NeoViWin* self);
    void prevLine(NeoViWin* self);
    void nextLine(NeoViWin* self);
    void halfScrollUp(NeoViWin* self);
    void halfScrollDown(NeoViWin* self);
    void moveAtHead(NeoViWin* self);
    void moveAtTail(NeoViWin* self);

    void moveTop(NeoViWin* self);
    void keyG(NeoViWin* self);
    void moveBottom(NeoViWin* self);
}

struct NeoVi version 2 
{
    vector<void (*lambda)(NeoVi*, int)>*% events;
    bool appEnd;
}

impl NeoViWin version 2
{
    void openFile(NeoViWin* self, char* file_name, int line_num);
}

impl NeoVi version 2 
{
    initialize();

    int main_loop(NeoVi* self);

    void openFile(NeoVi* self, char* file_name);
}

/// neo-vi3insert_mode.h ///
enum eMode { kEditMode, kInsertMode };

impl NeoViWin version 3 
{
    void view(NeoViWin* self, NeoVi* nvi);
    void insertText(NeoViWin* self, wstring key);
    void enterNewLine(NeoViWin* self);
    void enterNewLine2(NeoViWin* self);
    void input(NeoViWin* self, NeoVi* nvi);

    void pushUndo(NeoViWin* self);
    void writedFlagOn(NeoViWin* self);
    void completion(NeoViWin* self);
    void clearInputedKey(NeoViWin* self);
    void saveInputedKey(NeoViWin* self);
}

struct NeoVi version 3 
{
    int mode;
};

impl NeoVi version 3 
{
    initialize();

    void enterInsertMode(NeoVi* self);
    void exitFromInsertMode(NeoVi* self);
    int main_loop(NeoVi* self);
}

/// neo-vi4word.h ///
impl NeoViWin version 4
{
    void forwardWord(NeoViWin* self);
    void backwardWord(NeoViWin* self);
    
}

impl NeoVi version 4
{
    initialize();
}

/// neo-vi5undo.h ///
struct NeoViWin version 5
{
    list<list<wstring>*%>%* undo;
    list<int>%* undoScroll;
    list<int>%* undoCursorX;
    list<int>%* undoCursorY;
    int undoIndex;
};

impl NeoViWin version 5
{
    initialize(int y, int x, int width, int height);

    void pushUndo(NeoViWin* self);

    void undo(NeoViWin* self);
    void redo(NeoViWin* self);
}

impl NeoVi version 5
{
    initialize();

    void enterInsertMode(NeoVi* self);
}

/// neo-vi6file.h ///
struct NeoViWin version 6
{
    string fileName;
    bool writed;
};

impl NeoViWin version 6
{
    initialize(int y, int x, int width, int height);
    void statusBarView(NeoViWin* self, NeoVi* nvi);
    void openFile(NeoViWin* self, char* file_name, int line_num);
    void writeFile(NeoViWin* self);
    void writedFlagOn(NeoViWin* self);
}

struct NeoVi version 6
{
    int toggleWin;
}

impl NeoVi version 6
{
    initialize();
    void openFile(NeoVi* self, char* file_name);
    void openNewFile(NeoVi* self, char* file_name);
    void closeActiveWin(NeoVi* self);
}

/// neo-vi7yank.h ///
impl NeoViWin version 7
{
    void deleteLines(NeoViWin* self, int head, int tail, NeoVi* nvi);
    void deleteOneLine(NeoViWin* self, NeoVi* nvi);
}

enum { kYankKindLine, kYankKindNoLine };

struct NeoVi version 7
{
    list<wstring>*% yank;
    int yankKind;
}

impl NeoVi version 7 
{
    initialize();
}

/// neo-vi8visual.h ///
enum { kYankKindLine, kYankKindNoLine };
enum eMode { kVisualMode = kInsertMode + 1 };

struct NeoViWin version 8
{
    int visualModeHead;
};


impl NeoViWin version 8 
{
    initialize(int y, int x, int width, int height);
    void visualModeView(NeoViWin* self, NeoVi* nvi);
    void view(NeoViWin* self, NeoVi* nvi);
    void inputVisualMode(NeoViWin* self, NeoVi* nvi);
    void input(NeoViWin* self, NeoVi* nvi);
}

impl NeoVi version 8
{
    void enterVisualMode(NeoVi* self);
    void exitFromVisualMode(NeoVi* self);
    initialize();
}

/// neo-vi9search.h ///
enum eMode { kSearchMode = kVisualMode + 1 };

struct NeoVi version 9
{
    wstring searchString;
};

impl NeoViWin version 9
{
    void searchModeView(NeoViWin* self, NeoVi* nvi);
    void view(NeoViWin* self, NeoVi* nvi);

    void inputSearchlMode(NeoViWin* self, NeoVi* nvi);
    void input(NeoViWin* self, NeoVi* nvi);
}

impl NeoVi version 9
{
    void enterSearchMode(NeoVi* self);
    void exitFromSearchMode(NeoVi* self);

    initialize();
}

/// neo-vi10edit.h ///
impl NeoViWin version 10
{
    void deleteLines(NeoViWin* self, int head, int tail, NeoVi* nvi);
    void deleteOneLine(NeoViWin* self, NeoVi* nvi);
}

impl NeoVi version 10
{
    initialize();
}

/// neo-vi11move.h ///
impl NeoVi version 11
{
    initialize();
}

/// neo-vi12command.h ///
enum eMode { kCommandMode = kSearchMode + 1 };

struct NeoVi version 12
{
    string commandString;
};

impl NeoViWin version 12
{
    void view(NeoViWin* self, NeoVi* nvi);
    void input(NeoViWin* self, NeoVi* nvi);
}

impl NeoVi version 12
{
    void enterComandMode(NeoVi* nvi);
    void exitFromComandMode(NeoVi* self);
    initialize();
    void activateFiler(NeoVi* self);
}

impl NeoViWin version 13 
{
    void completion(NeoViWin* self);
}

// neo-vi14dot.h
struct NeoViWin version 14
{
    vector<int>*% inputedKeys;
    vector<int>*% savedInputedKeys;
    bool autoInput;
    int autoInputIndex;
    bool pressedDot;
};


impl NeoViWin version 14
{
    initialize(int y, int x, int width, int height);
    int getKey(NeoViWin* self);
    void clearInputedKey(NeoViWin* self);
    void saveInputedKey(NeoViWin* self);
}

impl NeoVi version 14
{
    initialize();
}

struct NeoViFiler
{
    string path;
    list<string>*% files;

    WINDOW* win;
    int scroll;
    int cursor;

    int width;

    bool active;
};

struct NeoVi version 15
{
    NeoViFiler*% filer;
};

impl NeoVi version 15
{
    initialize();

    void activateFiler(NeoVi* self);
    int main_loop(NeoVi* self);
}

impl NeoViWin version 15
{
    void textsView(NeoViWin* self, NeoVi* nvi);
    initialize(int y, int x, int width, int height);
}
