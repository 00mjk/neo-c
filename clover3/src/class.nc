#include "common.h"

map<string, sCLClass*%>* gClasses;

void class_init()
{
    gClasses = borrow new map<string, sCLClass*%>.initialize();
    
    append_class("int");
    append_class("bool");
    append_class("string");
    append_class("void");
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

void append_field(sCLClass* klass, char* field_name, sCLType* field_type)
{
    sCLField*% field = new sCLField;

    field.mName = string(field_name);
    field.mResultType = field_type;

    klass.mFields.push_back(field);
}

bool eval_class(char* source, sVMInfo* vminfo)
{
    sParserInfo info;

    info = *vminfo.cinfo.pinfo;

    info.p = source;
    info.sline = 1;

    var name = parse_word(&info);

    xstrncpy(info.sname, name, PATH_MAX);

    append_class(name);
    sCLClass* klass = gClasses.at(name, null);

    expected_next_character('{', &info);

    while(*info->p) {
        var word = parse_word(&info);

        if(strcmp(word, "var") == 0) {
            var field_name = parse_word(&info);
            expected_next_character(':', &info);

            sCLType* field_type = null;
            if(!parse_type(&field_type, &info)) {
                return false;
            }

            if(*info->p == ';') {
                info->p++;
                skip_spaces_and_lf(&info);
            }

            append_field(klass, field_name, field_type);
        }
        else if(strcmp(word, "def") == 0) {
            var method_name = parse_word(&info);

            sCLParam params[PARAMS_MAX];
            int num_params = 0;

            if(!parse_params(params, &num_params, info)) {
                return false;
            }

            expected_next_character(':', &info);

            sCLType* method_type = null;
            if(!parse_type(&method_type, &info)) {
                return false;
            }

            if(*info->p == ';') {
                info->p++;
                skip_spaces_and_lf(&info);
            }

            append_method(klass, method_name, method_type, num_params, params);
        }
        else if(*info->p == '}') {
            break;
        }
        else {
            vm_err_msg(vminfo, xsprintf("Require var or def keyword in the class. This is %s", word));
            return false;
        }
    }

    return true;
}
