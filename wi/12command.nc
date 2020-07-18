#include <stdio.h>
#include <stdlib.h>
#include <ncurses.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include <limits.h>
#include <libgen.h>
#include <dirent.h>
#include <sys/stat.h>

#include "common.h"

Vi* gApp;

impl Vi version 12
{
initialize() {
    inherit(self);

    self.events.replace(':', lambda(Vi* self, int key) {
        self.enterComandMode();
    });

    gApp = self;
}

void enterComandMode(Vi* self) {
    ViWin* win = self.activeWin;

    win.pushUndo();
    
    endwin();
    
    bool no_load_fudamental_classes = false;

    setlocale(LC_ALL, "");

    set_signal_shell();

    var types = new vector<sCLType*%>.initialize();

    clover3_init();
    compiler_init(no_load_fudamental_classes);

    heap_init(HEAP_INIT_SIZE, HEAP_HANDLE_INIT_SIZE);

    clover3_init_for_wi(types);
    
    CLVALUE result;
    shell_commandline("", -1, types, &result);
    
    if(result.mObjectValue != 0) {
        char* str = get_string_mem(result->mObjectValue);
        
        if(strcmp(str, "") != 0) {
            ViWin* win = self.activeWin;
            
            var li = string(str).split_char('\n');
            
            li.each {
                var wstr = it.to_wstring();
                
                win.texts.insert(win.scroll+win.cursorY+it2, wstr);
            }
        }
        else {
            printf("HIT ANY KEY");
            getchar();
        }
    }

    heap_final();

    clover3_final();
    compiler_final();
    
    self.init_curses();
}

}

bool system_wq(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "system", info)) {
        vm_err_msg(stack_ptr, info, "type error on system.wq");
        return false;
    }

    gApp.activeWin.writeFile();

    if(gApp.wins.length() == 1) {
        puts("writed and exiting...");
        gApp.appEnd = true;
    }
    else {
        puts("writed and closing window...");
        gApp.closeActiveWin();
    }

    return true;
}

bool system_qw(CLVALUE** stack_ptr, sVMInfo* info)
{
    if(!system_wq(stack_ptr, info)) {
        return false;
    }

    return true;
}

bool system_q(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "system", info)) {
        vm_err_msg(stack_ptr, info, "type error on system.wq");
        return false;
    }

    if(gApp.wins.length() == 1) {
        puts("don't writing and exiting...");
        gApp.appEnd = true;
    }
    else {
        puts("don't writing and closing window...");
        gApp.closeActiveWin();
    }

    return true;
}

bool system_sp(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-2)->mObjectValue;
    CLObject path = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "system", info)) {
        vm_err_msg(stack_ptr, info, "type error on system.sp");
        return false;
    }
    if(!check_type(path, "string", info)) {
        vm_err_msg(stack_ptr, info, "type error on system.sp");
        return false;
    }

    /// sevenstars to neo-c ///
    char* path_value = get_string_mem(path);

    /// go ///
    gApp.openNewFile(path_value);
    
    return true;
}

bool system_texts(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "system", info)) {
        vm_err_msg(stack_ptr, info, "type error on system.sp");
        return false;
    }

    /// sevenstars to neo-c ///
    list<int>*% li = new list<int>.initialize();
    
    ViWin* win = gApp.activeWin;
    
    if(gApp.mode == kVisualMode) {
        int head = win.visualModeHead;
        int tail = win.scroll+win.cursorY;
    
        if(head >= tail) {
            int tmp = tail;
            tail = head;
            head = tmp;
        }
    
        win.texts.sublist(head, tail+1).each {
            CLObject obj = create_string_object(it.to_string(""), info);
            
            (*stack_ptr)->mObjectValue = obj;
            (*stack_ptr)++;
            
            li.push_back(obj);
        }

        CLObject obj = create_list_object(li, info);
        
        (*stack_ptr) -= tail+1-head;
        
        (*stack_ptr)->mObjectValue = obj;
        (*stack_ptr)++;
    }
    else {
        win.texts.each {
            CLObject obj = create_string_object(it.to_string(""), info);
            
            (*stack_ptr)->mObjectValue = obj;
            (*stack_ptr)++;
            
            li.push_back(obj);
        }

        CLObject obj = create_list_object(li, info);
        
        (*stack_ptr) -= win.texts.length();
        
        (*stack_ptr)->mObjectValue = obj;
        (*stack_ptr)++;
    }
    
    return true;
}

void clover3_init_for_wi(vector<sCLType*%>* types)
{
    (void)eval_class("class system { def wq():void; def qw():void; def sp(path:string):void; def q():void; def texts():list<string>; }", types, "wi", 0);

    gNativeMethods.insert(string("system.wq"), system_wq);
    gNativeMethods.insert(string("system.q"), system_q);
    gNativeMethods.insert(string("system.qw"), system_qw);
    gNativeMethods.insert(string("system.sp"), system_sp);
    gNativeMethods.insert(string("system.texts"), system_texts);
}

