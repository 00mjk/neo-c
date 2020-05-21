#include "common.h"

map<string, sCLClass*%>* gClasses;
vector<CLObject>* gJobs;
map<string, fNativeMethod>* gNativeMethods;

bool int_toString(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLVALUE* left = (*stack_ptr-1);

    sCLInt* object_data = CLINT(left->mObjectValue);
    
    char buf[128];

    snprintf(buf, 128, "%d", object_data->mValue);

    CLObject obj = create_string_object(buf, info);

    (*stack_ptr)->mObjectValue = obj;
    (*stack_ptr)++;

    return true;
}

bool int_toCommand(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLVALUE* left = (*stack_ptr-1);

    sCLInt* object_data = CLINT(left->mObjectValue);
    
    char buf[128];

    snprintf(buf, 128, "%d", object_data->mValue);

    CLObject obj = create_command_object(buf, strlen(buf), "", 0, 0, info);

    (*stack_ptr)->mObjectValue = obj;
    (*stack_ptr)++;

    return true;
}

bool bool_toInteger(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLVALUE* left = (*stack_ptr-1);

    sCLInt* object_data = CLINT(left->mObjectValue);

    CLObject obj = create_int_object(object_data->mValue, info);

    (*stack_ptr)->mObjectValue = obj;
    (*stack_ptr)++;

    return true;
}

bool bool_toString(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLVALUE* left = (*stack_ptr-1);

    sCLInt* object_data = CLINT(left->mObjectValue);
    
    char buf[128];

    if(object_data->mValue) {
        snprintf(buf, 128, "true");
    }
    else {
        snprintf(buf, 128, "false");
    }

    CLObject obj = create_string_object(buf, info);

    (*stack_ptr)->mObjectValue = obj;
    (*stack_ptr)++;

    return true;
}

bool bool_toCommand(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLVALUE* left = (*stack_ptr-1);

    sCLInt* object_data = CLINT(left->mObjectValue);
    
    char buf[128];

    if(object_data->mValue) {
        snprintf(buf, 128, "true");
    }
    else {
        snprintf(buf, 128, "false");
    }

    CLObject obj = create_command_object(buf, strlen(buf), "", 0, 0, info);

    (*stack_ptr)->mObjectValue = obj;
    (*stack_ptr)++;

    return true;
}

void create_native_method_name(char* result, sCLClass* klass, sCLMethod* method)
{
    snprintf(result, NATIVE_METHOD_NAME_MAX, "%s.%s", klass.mName, method.mName);
}

bool invoke_native_method(sCLClass* klass, sCLMethod* method, CLVALUE** stack_ptr, sVMInfo* info)
{
    char buf[NATIVE_METHOD_NAME_MAX];

    create_native_method_name(buf, klass, method);

    fNativeMethod native_method = gNativeMethods.at(buf, null);

    if(native_method == null) {
        return false;
    }

    if(!native_method(stack_ptr, info)) {
        return false;
    }

    return true;
}

void class_init()
{
    gClasses = borrow new map<string, sCLClass*%>.initialize();
    
    append_class("int");
    append_class("bool");
    append_class("string");
    append_class("any");
    append_class("command");
    append_class("job");
    append_class("void");
    append_class("lambda");

    gNativeMethods = borrow new map<string, fNativeMethod>.initialize();

    gNativeMethods.insert(string("int.toString"), int_toString);
    gNativeMethods.insert(string("int.toCommand"), int_toCommand);
    gNativeMethods.insert(string("bool.toInteger"), bool_toInteger);
    gNativeMethods.insert(string("bool.toString"), bool_toString);
    gNativeMethods.insert(string("bool.toCommand"), bool_toCommand);

    gJobs = borrow new vector<CLObject>.initialize();
}

void class_final()
{
    delete gJobs;
    delete gClasses;
    delete gNativeMethods;
}

void append_class(char* name)
{
    sCLClass*% klass = new sCLClass;
    
    klass.mName = string(name);

    klass.mMethods = new map<string, sCLMethod*%>.initialize();
    klass.mFields = new map<string, sCLField*%>.initialize();
    klass.mClassFields = new map<string, sCLField*%>.initialize();
    
    gClasses.insert(string(name), klass);
}

void append_field(sCLClass* klass, char* field_name, sCLType* field_type)
{
    sCLField*% field = new sCLField;

    field.mName = string(field_name);
    field.mResultType = field_type;
    field.mIndex = klass.mFields.length();

    klass.mFields.insert(string(field_name), field);
}

void append_method(sCLClass* klass, char* method_name, sCLType* method_type, int num_params, sCLParam* params, bool native, sCLNodeBlock* node_block, buffer* codes)
{
    sCLMethod*% method = new sCLMethod;

    method.mNumParams = num_params;
    for(int i=0; i<num_params; i++) {
        method.mParams[i] = params[i];
    }

    method.mName = string(method_name);
    method.mResultType = method_type;

    if(native) {
        method.mByteCodes = null;
        method.mNodeBlock = null;
    }
    else {
        method.mByteCodes = dummy_heap codes;
        method.mNodeBlock = node_block;
    }

    klass.mMethods.insert(string(method_name), method);
}

bool eval_class(char* source, sCompileInfo* cinfo, char* sname, int sline)
{
    sParserInfo info;

    info = *cinfo.pinfo;

    info.p = source;
    info.sline = sline;

    info.vtables = borrow new vector<sVarTable*%>.initialize();

    var name = parse_word(&info);

    xstrncpy(info.sname, sname, PATH_MAX);

    if(gClasses.at(name, null) == null) {
        append_class(name);
    }

    sCLClass* klass = gClasses.at(name, null);

    //expected_next_character('{', &info);

    while(*info.p) {
        var word = parse_word(&info);

        if(strcmp(word, "var") == 0) {
            var field_name = parse_word(&info);
            expected_next_character(':', &info);

            sCLType* field_type = null;
            if(!parse_type(&field_type, &info)) {
                delete info.vtables;
                return false;
            }

            if(*info.p == ';') {
                info.p++;
                skip_spaces_and_lf(&info);
            }

            append_field(klass, field_name, field_type);
        }
        else if(strcmp(word, "def") == 0) {
            var method_name = parse_word(&info);

            sCLParam params[PARAMS_MAX];
            int num_params = 1;
            xstrncpy(params[0].mName, "self", VAR_NAME_MAX);
            params[0].mType = create_type(name, &info);

            if(!parse_params(params, &num_params, &info)) {
                delete info.vtables;
                return false;
            }

            expected_next_character(':', &info);

            sCLType* method_type = null;
            if(!parse_type(&method_type, &info)) {
                delete info.vtables;
                return false;
            }

            if(*info->p == ';') {
                info->p++;
                skip_spaces_and_lf(&info);


                append_method(klass, method_name, method_type, num_params, params, true, null, null);
            }
            else {
                expected_next_character('{', &info);

                sCLNodeBlock* node_block = null;
                if(!parse_block(&node_block, num_params, params, &info)) {
                    delete info.vtables;
                    return false;
                }

                sCompileInfo cinfo2 = *cinfo;

                xstrncpy(cinfo2.sname, sname, PATH_MAX);
                cinfo2.sline = info.sline;

                cinfo2.err_num = 0;
                cinfo2.stack_num = 0;

                cinfo2.pinfo = &info;
                cinfo2.codes = borrow new buffer.initialize();

                cinfo2.type = null;

                cinfo2.no_output = false;

                if(!compile_block(node_block, &cinfo2)) {
                    delete info.vtables;
                    delete cinfo2.codes;
                    return false;
                }

                if(!substitution_posibility(method_type, cinfo2.type)) {
                    compile_err_msg(&cinfo2, "Invalid method result type");
                    cinfo2.err_num++;
                }

                if(cinfo2.err_num > 0) {
                    fprintf(stderr, "Compile error\n");
                    delete info.vtables;
                    delete cinfo2.codes;
                    return false;
                }

                expected_next_character('}', &info);

                append_method(klass, method_name, method_type, num_params, params, false, node_block, cinfo2.codes);
            }
        }
        else if(*info.p == '}') {
            break;
        }
        else {
            compile_err_msg(cinfo, xsprintf("Require var or def keyword in the class. This is %s", word));
            delete info.vtables;
            return false;
        }
    }

    if(info.err_num > 0) {
        fprintf(stderr, "Parser error. The error number is %d\n", info.err_num);
        delete info.vtables;
        return false;
    }

    delete info.vtables;

    return true;
}
