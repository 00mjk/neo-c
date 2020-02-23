#include <stdio.h>
#include <stdlib.h>
#include <ncurses.h>
#include <sys/ioctl.h>
#include <unistd.h>

#define SAVE_INPUT_KEY_MAX 256

// 1init.h
int xgetmaxx();
int xgetmaxy();

struct ViWin 
{
    WINDOW* win;
    list<wstring>*% texts;
    int y;
    int x;
    int width;
    int height;
};

struct Vi 
{
    list<ViWin*%>*% wins;
    ViWin* activeWin;
};

impl ViWin 
{
    initialize(int y, int x, int width, int height);
    finalize();
    void view(ViWin* self, Vi* nvi);
    void input(ViWin* self, Vi* nvi);
    bool equals(ViWin* left, ViWin* right);
}

impl Vi 
{
    void init_curses(Vi* self);
    initialize();
    finalize();
    int main_loop(Vi* self);
}

// 2base.h
struct ViWin version 2 
{
    int cursorY;
    int cursorX;
    int scroll;

    tuple3<int,int,int>*% returnPoint;
};

impl ViWin version 2 
{
    void textsView(ViWin* self, Vi* nvi);
    void statusBarView(ViWin* self, Vi* nvi);
    void view(ViWin* self, Vi* nvi);
    void input(ViWin* self, Vi* nvi);
    int getKey(ViWin* self);
    void modifyOverCursorYValue(ViWin* self);
    void modifyUnderCursorYValue(ViWin* self);
    void modifyOverCursorXValue(ViWin* self);
    void modifyUnderCursorXValue(ViWin* self);

    void forward(ViWin* self);
    void backward(ViWin* self);
    void prevLine(ViWin* self);
    void nextLine(ViWin* self);
    void halfScrollUp(ViWin* self);
    void halfScrollDown(ViWin* self);
    void moveAtHead(ViWin* self);
    void moveAtTail(ViWin* self);

    void moveTop(ViWin* self);
    void keyG(ViWin* self,Vi* nvi);
    void moveBottom(ViWin* self);

    void repositionWindows(Vi* self);
    void repositionFiler(Vi* self);
    void centeringCursor(ViWin* self);

    void saveReturnPoint(ViWin* self);

    void restoreVisualMode(ViWin* self, Vi* nvi);
}

struct Vi version 2 
{
    vector<void (*lambda)(Vi*, int)>*% events;
    bool appEnd;
}

impl ViWin version 2
{
    void openFile(ViWin* self, char* file_name, int line_num);
}

impl Vi version 2 
{
    initialize();

    int main_loop(Vi* self);

    void openFile(Vi* self, char* file_name, int line_num);
    void view(Vi* self);
    void clearView(Vi* self);
    void exitFromApp(Vi* self);
}

/// 3insert_mode.h ///
enum eMode { kEditMode, kInsertMode };

impl ViWin version 3 
{
    void view(ViWin* self, Vi* nvi);
    void insertText(ViWin* self, wstring key);
    void enterNewLine(ViWin* self);
    void enterNewLine2(ViWin* self);
    void input(ViWin* self, Vi* nvi);

    void pushUndo(ViWin* self);
    void writedFlagOn(ViWin* self);
    void completion(ViWin* self);
    void clearInputedKey(ViWin* self);
    void saveInputedKey(ViWin* self);
}

struct Vi version 3 
{
    int mode;
};

impl Vi version 3 
{
    initialize();

    void enterInsertMode(Vi* self);
    void exitFromInsertMode(Vi* self);
    int main_loop(Vi* self);
}

/// 4word.h ///
impl ViWin version 4
{
    void forwardWord(ViWin* self);
    void backwardWord(ViWin* self);
    
}

impl Vi version 4
{
    initialize();
}

/// 5undo.h ///
struct ViWin version 5
{
    list<list<wstring>*%>%* undo;
    list<int>%* undoScroll;
    list<int>%* undoCursorX;
    list<int>%* undoCursorY;
    int undoIndex;
};

impl ViWin version 5
{
    initialize(int y, int x, int width, int height);

    void pushUndo(ViWin* self);

    void undo(ViWin* self);
    void redo(ViWin* self);
}

impl Vi version 5
{
    initialize();

    void enterInsertMode(Vi* self);
}

/// 6file.h ///
struct ViWin version 6
{
    string fileName;
    bool writed;
};

impl ViWin version 6
{
    initialize(int y, int x, int width, int height);
    void statusBarView(ViWin* self, Vi* nvi);
    void openFile(ViWin* self, char* file_name, int line_num);
    void writeFile(ViWin* self);
    void writedFlagOn(ViWin* self);
}

struct Vi version 6
{
    int toggleWin;
}

impl Vi version 6
{
    initialize();
    void openFile(Vi* self, char* file_name, int line_num);
    void openNewFile(Vi* self, char* file_name);
    void closeActiveWin(Vi* self);

    void repositionWindows(Vi* self);
    void exitFromApp(Vi* self);
}

/// 7yank.h ///
impl ViWin version 7
{
    void deleteLines(ViWin* self, int head, int tail, Vi* nvi);
    void deleteOneLine(ViWin* self, Vi* nvi);
}

enum { kYankKindLine, kYankKindNoLine };

struct Vi version 7
{
    list<wstring>*% yank;
    int yankKind;
}

impl Vi version 7 
{
    initialize();
}

/// 8visual.h ///
enum { kYankKindLine, kYankKindNoLine };
enum eMode { kVisualMode = kInsertMode + 1 };

struct ViWin version 8
{
    int visualModeHead;

    int visualModeHeadBefore;
    int visualModeTailCursorYBefore;
    int visualModeTailScrollBefore;
};


impl ViWin version 8 
{
    initialize(int y, int x, int width, int height);
    void visualModeView(ViWin* self, Vi* nvi);
    void view(ViWin* self, Vi* nvi);
    void inputVisualMode(ViWin* self, Vi* nvi);
    void input(ViWin* self, Vi* nvi);
    void restoreVisualMode(ViWin* self, Vi* nvi);
}

impl Vi version 8
{
    void enterVisualMode(Vi* self);
    void reenterVisualMode(Vi* self);
    void exitFromVisualMode(Vi* self);
    initialize();
}

/// 9search.h ///
enum eMode { kSearchMode = kVisualMode + 1 };

struct Vi version 9
{
    wstring searchString;
};

impl ViWin version 9
{
    void searchModeView(ViWin* self, Vi* nvi);
    void view(ViWin* self, Vi* nvi);

    void inputSearchlMode(ViWin* self, Vi* nvi);
    void input(ViWin* self, Vi* nvi);
}

impl Vi version 9
{
    void enterSearchMode(Vi* self);
    void exitFromSearchMode(Vi* self);

    initialize();
}

/// 10edit.h ///
impl ViWin version 10
{
    void deleteLines(ViWin* self, int head, int tail, Vi* nvi);
    void deleteOneLine(ViWin* self, Vi* nvi);
}

impl Vi version 10
{
    initialize();
}

/// 11move.h ///
impl Vi version 11
{
    initialize();
}

/// 12command.h ///
enum eMode { kCommandMode = kSearchMode + 1 };

struct Vi version 12
{
    string commandString;
};

impl ViWin version 12
{
    void view(ViWin* self, Vi* nvi);
    void input(ViWin* self, Vi* nvi);
}

impl Vi version 12
{
    void enterComandMode(Vi* nvi);
    void exitFromComandMode(Vi* self);
    initialize();
    void activateFiler(Vi* self);
}

impl ViWin version 13 
{
    void completion(ViWin* self);
}

// 14dot.h
struct ViWin version 14
{
    vector<int>*% inputedKeys;
    vector<int>*% savedInputedKeys;
    bool autoInput;
    int autoInputIndex;
    bool pressedDot;
};


impl ViWin version 14
{
    initialize(int y, int x, int width, int height);
    int getKey(ViWin* self);
    void clearInputedKey(ViWin* self);
    void saveInputedKey(ViWin* self);
}

impl Vi version 14
{
    initialize();
}

struct ViFiler
{
    string path;
    list<string>*% files;

    WINDOW* win;
    int scroll;
    int cursor;

    int width;

    bool active;
    string searchString;
};

struct Vi version 15
{
    ViFiler*% filer;
    WINDOW* extraWin;
    string extraLine;
    int extraCursor;
};

impl Vi version 15
{
    initialize();

    void activateFiler(Vi* self);
    int main_loop(Vi* self);
    void repositionFiler(Vi* self);
    void view(Vi* self);
    void clearView(Vi* self);
    string commandBox(Vi* self, string command, string default_value);
    string inputBox(Vi* self, string default_value);
    void extraView(Vi* self);
}

impl ViWin version 15
{
    void textsView(ViWin* self, Vi* nvi);
    initialize(int y, int x, int width, int height);
    void statusBarView(ViWin* self, Vi* nvi);
}

// 16mark.h
struct ViWin version 16
{
    map<wchar_t, tuple3<int,int, int>*%>*% mark;
};

impl ViWin version 16
{
    initialize(int y, int x, int width, int height);
}

impl Vi version 16
{
    initialize();
}
