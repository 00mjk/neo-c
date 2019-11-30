
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

