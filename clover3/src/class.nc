#include "common.h"

map<string, sCLClass*%>* gClasses;

void class_init()
{
    gClasses = borrow new map<string, sCLClass*%>.initialze();
}

void class_final()
{
    delete gClasses;
}

void append_class(char* name)
{
    sCLClass*% klass = new sCLClass;
    
    klass.mName = string(name);
    
    gClasses.insert(string(name), klass);
}

