#include "common.h"

map<string, sCLClass*%>* gClasses;

void class_init()
{
    gClasses = borrow new map<string, sCLClass*%>.initialize();
    
    append_class("int");
    append_class("bool");
    append_class("string");
}

void class_final()
{
    delete gClasses;
}

void append_class(char* name)
{
    sCLClass*% klass = new sCLClass;
    
    klass.mName = string(name);

    klass.mMethods = new list<sCLMethod*%>.initialize();
    klass.mFields = new list<sCLField*%>.initialize();
    klass.mClassFields = new list<sCLField*%>.initialize();
    
    gClasses.insert(string(name), klass);
}

