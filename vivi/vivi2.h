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

struct vivi {
    wins:vector<win*%>*%;
    active_win:win*;
}

impl win {
    initialize(y:int, x:int, width:int, height:int) ;
finalize() ;
def view(self:win*) ;
def input(self:win*, vivi:vivi*) ;


}
impl vivi {
    def init_curses(self:vivi*) ;
initialize() ;
finalize() ;
def main_loop(self:vivi*):int ;


}
impl win version 2 {
    def input(self:win*, vivi:vivi*) ;

}
struct vivi version 2 {
    events: vector<lambda(vivi*, int)>*%;
    app_end: _Bool;
}

impl vivi version 2 {
    initialize() ;
def main_loop(self:vivi*):int ;

}
