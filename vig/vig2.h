def xgetmaxx(): int
;
def xgetmaxy(): int
;
struct win {
    win:WINDOW*;
    texts:list<string>*%;
    y:int;
    x:int;
    width:int;
    height:int;
}

struct vig {
    wins:vector<win*%>*%;
    active_win:win*;
}

impl win {
    initialize(y:int, x:int, width:int, height:int) ;
finalize() ;
def view(self:win*) ;
def input(self:win*, vig:vig*) ;


}
impl vig {
    def init_curses(self:vig*) ;
initialize() ;
finalize() ;
def main_loop(self:vig*):int ;


}
struct win version 2 {
    curs_y:int;
    curs_x:int;
}

impl win version 2 {
    def view(self:win*) ;
def input(self:win*, vig:vig*) ;
def getCursorLine(self:win*):char* ;
def getCursorLineLength(self:win*):int
    ;
def forward(self:win*) ;
def backward(self:win*) ;
def prevLine(self:win*) ;
def nextLine(self:win*) ;

}
struct vig version 2 {
    events: vector<lambda(vig*, int)>*%;
    app_end: _Bool;
}

impl vig version 2 {
    initialize() ;
def main_loop(self:vig*):int ;

}
