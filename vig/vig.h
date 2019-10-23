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
def view(self:win*, vig:vig*) ;
def input(self:win*, vig:vig*) ;

}
impl vig {
    def init_curses(self:vig*) ;
initialize() ;
finalize() ;
def main_loop(self:vig*):int ;

}
