#include <ncurses.h>
#include <dirent.h>
#include <sys/stat.h>
#include <unistd.h>
#include <sys/ioctl.h>
#include "../sevenstars/src/common.h"

struct Filer;

struct LuckyStrike 
{
    Filer*% filer;
    bool app_end;
    vector<sCLType*%>*% types;
};

impl LuckyStrike 
{
    initialize();
    finalize();

    bool main_loop(LuckyStrike* self);
    void exit(LuckyStrike* self);
}

struct Filer 
{
    LuckyStrike* lucky;
    string path;
    list<string>*% files;
    int cursor;
    int page;
    int cols;
};

impl Filer 
{
    initialize(char* path, LuckyStrike* lucky);
    finalize();
    bool read_dir(Filer* self);
    void view(Filer* self);
    void input(Filer* self);
    string cursor_path(Filer* self);
    string cursor_file(Filer* self);
    bool chage_directory(Filer* self, char* path, char* cursor_file);
    void fix_cursor(Filer* self);
};

