
struct UndoData
{
    int cursorX;
    int cursorY;
    wstring text;
};

struct VigWin version 5
{
    vector<UndoData*%>%* undoData;
};

impl VigWin version 5
{
    initialize(int y, int x, int width, int height);

    void undo(VigWin* self);
    void insertText(VigWin* self, wstring text);
}

impl Vig version 5
{
    initialize();

    void enterInsertMode(Vig* self);
    void exitFromInsertMode(Vig* self);
}
