#include <ncurses.h>
#include <dirent.h>
#include <sys/stat.h>
#include <unistd.h>
#include <sys/ioctl.h>
#include "../sevenstars/src/common.h"

struct Filer;

struct PloomTech 
{
    Filer*% filer;
    bool app_end;
    vector<sCLType*%>*% types;
};

impl PloomTech 
{
    initialize();
    finalize();

    bool main_loop(PloomTech* self);
    void exit(PloomTech* self);
}

struct Filer 
{
    PloomTech* ploomtech;
    string path;
    list<string>*% files;
    int cursor;
    int page;
    int cols;
};

impl Filer 
{
    initialize(char* path, PloomTech* ploomtech);
    finalize();
    bool read_dir(Filer* self);
    void view(Filer* self);
    void input(Filer* self);
    string cursor_path(Filer* self);
    string cursor_file(Filer* self);
    bool chage_directory(Filer* self, char* path, char* cursor_file);
    void fix_cursor(Filer* self);
};
