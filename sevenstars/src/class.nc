#include "common.h"

map<string, sCLClass*%>* gClasses;
vector<CLObject>* gJobs;
map<string, fNativeMethod>* gNativeMethods;

bool check_type(CLObject obj, char* type_name, sVMInfo* info)
{
    sCLType* type = parse_type_runtime(type_name, info.cinfo.pinfo);

    sCLObject* object_data = CLOBJECT(obj);

    return substitution_posibility(type, object_data->mType);
}

bool int_set_value(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-2)->mObjectValue;
    CLObject value = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "int", info)) {
        vm_err_msg(stack_ptr, info, "type error on int.set_value");
        return false;
    }
    if(!check_type(value, "int", info)) {
        vm_err_msg(stack_ptr, info, "type error on int.set_value");
        return false;
    }

    /// sevenstars to neo-c ///
    int value_value = get_int_value(value);

    /// go ///
    set_int_value(self, value_value);
    
    return true;
}

bool string_set_value(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-2)->mObjectValue;
    CLObject value = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "string", info)) {
        vm_err_msg(stack_ptr, info, "type error on string.set_value");
        return false;
    }
    if(!check_type(value, "string", info)) {
        vm_err_msg(stack_ptr, info, "type error on string.set_value");
        return false;
    }

    /// convert sevenstars to neo-c ///
    char* value_value = get_string_mem(value);

    /// go ///
    set_string_value(self, value_value);

    return true;
}

bool bool_set_value(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-2)->mObjectValue;
    CLObject value = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "bool", info)) {
        vm_err_msg(stack_ptr, info, "type error on bool.set_value");
        return false;
    }
    if(!check_type(value, "bool", info)) {
        vm_err_msg(stack_ptr, info, "type error on bool.set_value");
        return false;
    }

    /// convert sevenstars to neo-c ///
    int value_value = get_int_value(value);

    /// go ///
    set_int_value(self, value);
    
    return true;
}

bool int_to_string_(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "int", info)) {
        vm_err_msg(stack_ptr, info, "type error on int.to_string");
        return false;
    }

    /// convert sevenstars to neo-c ///
    int self_value = get_int_value(self);

    /// go ///
    char buf[128];
    snprintf(buf, 128, "%d", self_value);

    CLObject obj = create_string_object(buf, info);

    (*stack_ptr)->mObjectValue = obj;
    (*stack_ptr)++;

    return true;
}

bool int_to_command(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "int", info)) {
        vm_err_msg(stack_ptr, info, "type error on int.to_command");
        return false;
    }

    /// convert sevenstars to neo-c ///
    int self_value = get_int_value(self);

    /// go ///
    char buf[128];

    snprintf(buf, 128, "%d", self_value);

    CLObject obj = create_command_object(buf, strlen(buf), "", 0, 0, false, info);

    (*stack_ptr)->mObjectValue = obj;
    (*stack_ptr)++;

    return true;
}

bool string_to_command(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "string", info)) {
        vm_err_msg(stack_ptr, info, "type error on string.to_command");
        return false;
    }

    /// convert sevenstars to neo-c ///
    char* self_value = get_string_mem(self);

    /// go ///
    
    CLObject obj = create_command_object(self_value, strlen(self_value), "", 0, 0, false, info);

    (*stack_ptr)->mObjectValue = obj;
    (*stack_ptr)++;

    return true;
}

bool bool_to_int(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "bool", info)) {
        vm_err_msg(stack_ptr, info, "type error on bool.to_command");
        return false;
    }

    /// convert sevenstars to neo-c ///
    int self_value = get_int_value(self);

    /// go ///
    CLObject obj = create_int_object(self_value, info);

    (*stack_ptr)->mObjectValue = obj;
    (*stack_ptr)++;

    return true;
}

bool bool_to_string(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "bool", info)) {
        vm_err_msg(stack_ptr, info, "type error on bool.to_string");
        return false;
    }

    /// convert sevenstars to neo-c ///
    int self_value = get_int_value(self);

    /// go ///
    char buf[128];

    if(self_value) {
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

bool bool_to_command(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "bool", info)) {
        vm_err_msg(stack_ptr, info, "type error on bool.to_command");
        return false;
    }

    /// convert sevenstars to neo-c ///
    int self_value = get_int_value(self);

    /// go ///
    char buf[128];

    if(self_value) {
        snprintf(buf, 128, "true");
    }
    else {
        snprintf(buf, 128, "false");
    }

    CLObject obj = create_command_object(buf, strlen(buf), "", 0, 0, false, info);

    (*stack_ptr)->mObjectValue = obj;
    (*stack_ptr)++;

    return true;
}

bool string_equal(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-2)->mObjectValue;
    CLObject right = (*stack_ptr-1)->mObjectValue;

    if(check_type(self, "void", info) || check_type(right, "void", info))
    {
        int value = check_type(self, "void", info) == check_type(right, "void", info);
        
        CLObject obj = create_bool_object(value, info);

        (*stack_ptr)->mObjectValue = obj;
        (*stack_ptr)++;

        return true;
    }

    /// check type ///
    if(!check_type(self, "string", info)) {
        vm_err_msg(stack_ptr, info, "type error on string.equal");
        return false;
    }
    if(!check_type(right, "string", info)) {
        vm_err_msg(stack_ptr, info, "type error on string.equal");
        return false;
    }

    /// convert sevenstars to neo-c ///
    char* self_value = get_string_mem(self);
    char* right_value = get_string_mem(right);

    /// go ///
    int value = strcmp(self_value, right_value) == 0;
    
    CLObject obj = create_bool_object(value, info);

    (*stack_ptr)->mObjectValue = obj;
    (*stack_ptr)++;

    return true;
}

bool string_not_equal(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-2)->mObjectValue;
    CLObject right = (*stack_ptr-1)->mObjectValue;

    if(check_type(self, "void", info) || check_type(right, "void", info))
    {
        int value = check_type(self, "void", info) != check_type(right, "void", info);
        
        CLObject obj = create_bool_object(value, info);

        (*stack_ptr)->mObjectValue = obj;
        (*stack_ptr)++;

        return true;
    }

    /// check type ///
    if(!check_type(self, "string", info)) {
        vm_err_msg(stack_ptr, info, "type error on string.not_equal");
        return false;
    }
    if(!check_type(right, "string", info)) {
        vm_err_msg(stack_ptr, info, "type error on string.not_equal");
        return false;
    }

    /// convert sevenstars to neo-c ///
    char* self_value = get_string_mem(self);
    char* right_value = get_string_mem(right);

    /// go ///
    int value = strcmp(self_value, right_value) != 0;
    
    CLObject obj = create_bool_object(value, info);

    (*stack_ptr)->mObjectValue = obj;
    (*stack_ptr)++;

    return true;
}

bool sevenstars_buffer_initialize(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject obj = create_buffer_object(info);

    (*stack_ptr)->mObjectValue = obj;
    (*stack_ptr)++;

    return true;
}

bool sevenstars_buffer_append(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-3)->mObjectValue;
    CLObject mem = (*stack_ptr-2)->mObjectValue;
    CLObject size = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "buffer", info)) {
        vm_err_msg(stack_ptr, info, "type error on buffer.append");
        return false;
    }
    if(!check_type(mem, "string", info)) {
        vm_err_msg(stack_ptr, info, "type error on buffer.append");
        return false;
    }
    if(!check_type(size, "int", info)) {
        vm_err_msg(stack_ptr, info, "type error on buffer.append");
        return false;
    }

    /// sevenstars to neo-c
    buffer* self_value = get_buffer_value(self);
    char* mem_value = get_string_mem(mem);
    int size_value = get_int_value(size);

    /// go ///
    self_value.append(mem_value, size_value);
    
    return true;
}

bool sevenstars_buffer_append_char(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-2)->mObjectValue;
    CLObject c = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "buffer", info)) {
        vm_err_msg(stack_ptr, info, "type error on buffer.append_char");
        return false;
    }
    if(!check_type(c, "int", info)) {
        vm_err_msg(stack_ptr, info, "type error on buffer.append_char");
        return false;
    }

    /// sevenstars to neo-c
    buffer* self_value = get_buffer_value(self);
    int c_value = get_int_value(c);

    /// go ///
    self_value.append_char(c_value);
    
    return true;
}

bool sevenstars_buffer_append_str(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-2)->mObjectValue;
    CLObject str = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "buffer", info)) {
        vm_err_msg(stack_ptr, info, "type error on buffer.append_str");
        return false;
    }
    if(!check_type(str, "string", info)) {
        vm_err_msg(stack_ptr, info, "type error on buffer.append_str");
        return false;
    }

    /// sevenstars to neo-c
    buffer* self_value = get_buffer_value(self);
    char* str_value = get_string_mem(str);

    /// go ///
    self_value.append_str(str_value);
    
    return true;
}

bool sevenstars_buffer_append_nullterminated_str(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-2)->mObjectValue;
    CLObject str = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "buffer", info)) {
        vm_err_msg(stack_ptr, info, "type error on buffer.append_nullterminated_str");
        return false;
    }
    if(!check_type(str, "string", info)) {
        vm_err_msg(stack_ptr, info, "type error on buffer.append_nullterminated_str");
        return false;
    }

    /// sevenstars to neo-c
    buffer* self_value = get_buffer_value(self);
    char* str_value = get_string_mem(str);

    /// go ///
    self_value.append_nullterminated_str(str_value);
    
    return true;
}

bool sevenstars_buffer_append_int(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-2)->mObjectValue;
    CLObject c = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "buffer", info)) {
        vm_err_msg(stack_ptr, info, "type error on buffer.append_int");
        return false;
    }
    if(!check_type(c, "int", info)) {
        vm_err_msg(stack_ptr, info, "type error on buffer.append_int");
        return false;
    }

    /// sevenstars to neo-c
    buffer* self_value = get_buffer_value(self);
    int c_value = get_int_value(c);

    /// go ///
    self_value.append_int(c_value);
    
    return true;
}

bool sevenstars_buffer_alignment(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "buffer", info)) {
        vm_err_msg(stack_ptr, info, "type error on buffer.alignment");
        return false;
    }

    /// sevenstars to neo-c
    buffer* self_value = get_buffer_value(self);

    /// go ///
    self_value.alignment();
    
    return true;
}

bool sevenstars_buffer_to_string(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "buffer", info)) {
        vm_err_msg(stack_ptr, info, "type error on buffer.to_string");
        return false;
    }

    /// sevenstars to neo-c
    buffer* self_value = get_buffer_value(self);

    /// go ///
    string result = self_value.to_string();

    CLObject obj = create_string_object(result, info);

    (*stack_ptr)->mObjectValue = obj;
    (*stack_ptr)++;
    
    return true;
}

bool sevenstars_buffer_length(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "buffer", info)) {
        vm_err_msg(stack_ptr, info, "type error on buffer.length");
        return false;
    }

    /// sevenstars to neo-c
    buffer* self_value = get_buffer_value(self);

    /// go ///
    int result = self_value.length();

    CLObject obj = create_int_object(result, info);

    (*stack_ptr)->mObjectValue = obj;
    (*stack_ptr)++;
    
    return true;
}

bool sevenstars_buffer_compare(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-2)->mObjectValue;
    CLObject right = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "buffer", info)) {
        vm_err_msg(stack_ptr, info, "type error on buffer.compare");
        return false;
    }
    if(!check_type(right, "buffer", info)) {
        vm_err_msg(stack_ptr, info, "type error on buffer.compare");
        return false;
    }

    /// sevenstars to neo-c
    buffer* self_value = get_buffer_value(self);
    buffer* right_value = get_buffer_value(right);

    /// go ///
    int result = self_value.compare(right_value);

    CLObject obj = create_int_object(result, info);

    (*stack_ptr)->mObjectValue = obj;
    (*stack_ptr)++;
    
    return true;
}

bool sevenstars_string_compare(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-2)->mObjectValue;
    CLObject right = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "string", info)) {
        vm_err_msg(stack_ptr, info, "type error on string.compare");
        return false;
    }
    if(!check_type(right, "string", info)) {
        vm_err_msg(stack_ptr, info, "type error on string.compare");
        return false;
    }

    /// sevenstars to neo-c
    char* self_value = get_string_mem(self);
    char* right_value = get_string_mem(right);

    /// go ///
    int result = self_value.compare(right_value);

    CLObject obj = create_int_object(result, info);

    (*stack_ptr)->mObjectValue = obj;
    (*stack_ptr)++;
    
    return true;
}

bool object_type_name(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLVALUE* left = (*stack_ptr-1);

    sCLObject* object_data = CLOBJECT(left->mObjectValue);

    string type_name = create_type_name(object_data->mType);

    CLObject obj = create_string_object(type_name, info);

    (*stack_ptr)->mObjectValue = obj;
    (*stack_ptr)++;

    return true;
}

bool object_num_fields(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLVALUE* left = (*stack_ptr-1);

    sCLObject* object_data = CLOBJECT(left->mObjectValue);

    int num_fields = object_data->mNumFields;

    CLObject obj = create_int_object(num_fields, info);

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
    
    append_class("object");
    append_class("void");
    append_class("int");
    append_class("bool");
    append_class("string");
    append_class("any");
    append_class("command");
    append_class("job");
    append_class("lambda");
    append_class("buffer");
    append_class("generics_type0");
    append_class("generics_type1");
    append_class("generics_type2");
    append_class("generics_type3");
    append_class("generics_type4");
    append_class("generics_type5");
    append_class("generics_type6");
    append_class("generics_type7");
    append_class("generics_type8");
    append_class("generics_type9");
    append_class("generics_type10");
    append_class("generics_type11");
    append_class("generics_type12");
    append_class("generics_type13");
    append_class("generics_type14");
    append_class("generics_type15");
    append_class("generics_type16");
    append_class("generics_type17");
    append_class("generics_type18");
    append_class("generics_type19");
    append_class("generics_type20");
    append_class("generics_type21");
    append_class("generics_type22");
    append_class("generics_type23");
    append_class("generics_type24");
    append_class("generics_type25");
    append_class("generics_type26");
    append_class("generics_type27");
    append_class("generics_type28");
    append_class("generics_type29");
    append_class("generics_type30");
    append_class("generics_type31");

    gNativeMethods = borrow new map<string, fNativeMethod>.initialize();

    gNativeMethods.insert(string("object.type_name"), object_type_name);
    gNativeMethods.insert(string("object.num_fields"), object_num_fields);
    gNativeMethods.insert(string("int.set_value"), int_set_value);
    gNativeMethods.insert(string("int.to_string"), int_to_string_);
    gNativeMethods.insert(string("int.to_command"), int_to_command);
    gNativeMethods.insert(string("bool.to_int"), bool_to_int);
    gNativeMethods.insert(string("bool.to_string"), bool_to_string);
    gNativeMethods.insert(string("bool.to_command"), bool_to_command);
    gNativeMethods.insert(string("bool.set_value"), bool_set_value);
    gNativeMethods.insert(string("string.set_value"), string_set_value);
    gNativeMethods.insert(string("string.equal"), string_equal);
    gNativeMethods.insert(string("string.not_equal"), string_not_equal);
    gNativeMethods.insert(string("string.to_command"), string_to_command);
    gNativeMethods.insert(string("buffer.initialize"), sevenstars_buffer_initialize);
    gNativeMethods.insert(string("buffer.append"), sevenstars_buffer_append);
    gNativeMethods.insert(string("buffer.append_char"), sevenstars_buffer_append_char);
    gNativeMethods.insert(string("buffer.append_str"), sevenstars_buffer_append_str);
    gNativeMethods.insert(string("buffer.append_nullterminated_str"), sevenstars_buffer_append_nullterminated_str);
    gNativeMethods.insert(string("buffer.append_int"), sevenstars_buffer_append_int);
    gNativeMethods.insert(string("buffer.alignment"), sevenstars_buffer_alignment);
    gNativeMethods.insert(string("buffer.to_string"), sevenstars_buffer_to_string);
    gNativeMethods.insert(string("buffer.length"), sevenstars_buffer_length);
    gNativeMethods.insert(string("buffer.compare"), sevenstars_buffer_compare);
    gNativeMethods.insert(string("string.compare"), sevenstars_string_compare);

    gJobs = borrow new vector<CLObject>.initialize();
}

void class_final()
{
    delete gJobs;
    delete gClasses;
    delete gNativeMethods;
}

sCLClass*% alloc_class(char* name)
{
    sCLClass*% klass = new sCLClass;
    
    klass.mName = string(name);

    klass.mMethods = new map<string, sCLMethod*%>.initialize();
    klass.mFields = new map<string, sCLField*%>.initialize();

    if(strcmp(name, "object") == 0) {
        klass.mParent = NULL;
    }
    else {
        klass.mParent = gClasses.at("object", null);
    }

    return klass;
}

void append_class(char* name)
{
    sCLClass*% klass = alloc_class(name);
    
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

sCLMethod* append_method(sCLClass* klass, char* method_name, sCLType* method_type, int num_params, sCLParam* params, bool native)
{
    sCLMethod*% method = new sCLMethod;

    method.mNumParams = num_params;
    for(int i=0; i<num_params; i++) {
        method.mParams[i] = params[i];
    }

    method.mName = string(method_name);
    method.mResultType = method_type;

    method.mByteCodes = null;
    method.mNodeBlock = null;

    method.mMaxVarNum = 0;

    klass.mMethods.insert(string(method_name), method);

    return klass.mMethods.at(method_name, null);
}

bool eval_class(char* source, sCompileInfo* cinfo, char* sname, int sline)
{
    sParserInfo info;

    info = *cinfo.pinfo;

    info.p = source;
    info.sline = sline;

    info.generics_type_names = borrow new vector<string>.initialize();

    var name = parse_word(&info);

    xstrncpy(info.sname, sname, PATH_MAX);

    if(gClasses.at(name, null) == null) {
        append_class(name);
    }

    if(*info->p == '<') {
        info->p++;
        skip_spaces_and_lf(&info);

        while(true) {
            string generics_name = parse_word(&info);

            if(strcmp(generics_name, "") != 0) {
                info.generics_type_names.push_back(clone generics_name);
            }

            if(*info->p == ',') {
                info->p++;
                skip_spaces_and_lf(&info);
            }
            else if(*info->p == '\0') {
                fprintf(stderr, "unexpected the source end\n");
                exit(1);
            }
            else if(*info->p == '>') {
                info->p++;
                skip_spaces_and_lf(&info);
                break;
            }
        }
    }

    if(info.err_num > 0) {
        fprintf(stderr, "Parser error. The error number is %d\n", info.err_num);
        delete info.vtables;
        delete info.generics_type_names;
        return false;
    }

    sCLClass* klass = gClasses.at(name, null);

    //expected_next_character('{', &info);

    while(*info.p) {
        var word = parse_word(&info);

        if(strcmp(word, "extends") == 0) {
            var parent_class_name = parse_word(&info);

            sCLClass* parent_class = gClasses.at(parent_class_name, null);
            
            if(parent_class == null) {
                parser_err_msg(&info, xsprintf("Invalid parent class name. class not found(%s)", parent_class_name));
            }

            sCLClass* it = klass;
            while(it) {
                if(it == parent_class) {
                    parser_err_msg(&info, xsprintf("Invalid parent class name. recursive parent class(%s)", parent_class_name));
                    break;
                }
                it = it->mParent;
            }

            klass->mParent = parent_class;
        }
        else if(strcmp(word, "var") == 0) {
            var field_name = parse_word(&info);

            expected_next_character(':', &info);

            sCLType* field_type = null;
            if(!parse_type(&field_type, &info)) {
                delete info.vtables;
                delete info.generics_type_names;
                return false;
            }

            if(*info.p == ';') {
                info.p++;
                skip_spaces_and_lf(&info);
            }


            append_field(klass, field_name, field_type);
        }
        else if(strcmp(word, "def") == 0) {
            info.vtables = borrow new vector<sVarTable*%>.initialize();

            var method_name = parse_word(&info);

            sCLParam params[PARAMS_MAX];
            int num_params = 1;
            xstrncpy(params[0].mName, "self", VAR_NAME_MAX);
            params[0].mType = create_type(name, &info);

            if(!parse_params(params, &num_params, &info)) {
                delete info.vtables;
                delete info.generics_type_names;
                return false;
            }

            expected_next_character(':', &info);

            sCLType* method_type = null;
            if(!parse_type(&method_type, &info)) {
                delete info.vtables;
                delete info.generics_type_names;
                return false;
            }

            if(*info->p == ';') {
                info->p++;
                skip_spaces_and_lf(&info);


                append_method(klass, method_name, method_type, num_params, params, true);
            }
            else {
                expected_next_character('{', &info);

                sCLMethod* method = append_method(klass, method_name, method_type, num_params, params, false);

                sCLNodeBlock* node_block = null;
                int max_var_num = info.max_var_num;
                if(!parse_block(&node_block, num_params, params, &info)) {
                    info.max_var_num = max_var_num;
                    delete info.vtables;
                    delete info.generics_type_names;
                    return false;
                }
                int method_max_var_num = info.max_var_num;
                info.max_var_num = max_var_num;

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
                    delete info.generics_type_names;
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
                    delete info.generics_type_names;
                    return false;
                }

                expected_next_character('}', &info);


                method.mByteCodes = dummy_heap borrow cinfo2.codes;
                method.mNodeBlock = node_block;

                method.mMaxVarNum = method_max_var_num;
            }

            delete info.vtables;
        }
        else if(*info.p == '}') {
            break;
        }
        else {
            if(strcmp(word, "") == 0) {
                compile_err_msg(cinfo, xsprintf("Require var or def keyword in the class. This is %c", *info.p));
                delete info.vtables;
                delete info.generics_type_names;
                return false;
            }
            else {
                compile_err_msg(cinfo, xsprintf("Require var or def keyword in the class. This is %s", word));
                delete info.vtables;
                delete info.generics_type_names;
                return false;
            }
        }
    }

    if(info.err_num > 0) {
        fprintf(stderr, "Parser error. The error number is %d\n", info.err_num);
        delete info.generics_type_names;
        return false;
    }

    delete info.generics_type_names;

    return true;
}

static void save_nullterminated_str(buffer* buf, char* str) 
{
    buf.append_nullterminated_str(str);
    buf.alignment();
}

static void save_type(buffer* buf, sCLType* type)
{
    string str = create_type_name(type);
    
    buf.append_nullterminated_str(str);
    buf.alignment();
}

static bool save_field(buffer* buf, sCLClass* klass, sCLField* field) 
{
    save_nullterminated_str(buf, field->mName);

    save_type(buf, field->mResultType);
    buf.append_int(field->mIndex);

    return true;
}

static bool save_param(buffer* buf, sCLClass* klass, sCLParam* param)
{
    save_nullterminated_str(buf, param->mName);

    save_type(buf, param->mType);

    return true;
}

static bool save_buffer(buffer* buf, buffer* codes)
{
    if(codes == null) {
        buf.append_int(0);
    }
    else {
        buf.append_int(codes.len);
        buf.append(codes.buf, codes.len);
    }

    return true;
}

static bool save_node_block(buffer* buf, sCLNodeBlock* node_block)
{
    return true;
}

static bool save_method(buffer* buf, sCLClass* klass, sCLMethod* method)
{
    save_nullterminated_str(buf, method->mName);

    buf.append_int(method->mNumParams);

    for(int i=0; i<method->mNumParams; i++) {
        sCLParam param = method->mParams[i];
        if(!save_param(buf, klass, &param)) {
            return false;
        }
    }

    save_type(buf, method->mResultType);

    save_buffer(buf, method->mByteCodes);

    //save_node_block(buf, method->mNodeBlock);
    buf.append_int(method->mMaxVarNum);

    return true;
}

bool save_class(sCLClass* klass) 
{
    buffer*% buf = new buffer.initialize();

    save_nullterminated_str(buf, klass->mName);

    buf.append_int(klass.mMethods.length());

    bool return_false = false;
    klass.mMethods.each {
        sCLMethod* method = it2;

        if(!save_method(buf, klass, method)) {
            *it3 = true;
            return_false = true;
            return;
        }
    }

    if(return_false) {
        return false;
    }

    buf.append_int(klass.mFields.length());

    return_false = false;
    klass.mFields.each {
        sCLField* field = it2;

        if(!save_field(buf, klass, field)) {
            *it3 = true;
            return_false = true;
            return;
        }
    }

    if(return_false) {
        return false;
    }

    if(klass.mParent) {
        buf.append_int(1);
        save_nullterminated_str(buf, klass.mParent.mName);
    }
    else {
        buf.append_int(0);
    }

    char path[PATH_MAX];
    snprintf(path, PATH_MAX, "%s.ssc", klass.mName);

    FILE* f = fopen(path, "w");

    if(f == null) {
        return false;
    }

    int n = fwrite(buf.buf, buf.len, 1, f);

    if(n < 0) {
        return false;
    }

    fclose(f);

    return true;
}

static string load_nullterminated_str(int** p)
{
    char* str = (char*)*p;

    int len = strlen(str) + 1;

    alignment(&len);

    len = len / sizeof(int);

    (*p) += len;

    return string(str);
}

static sCLType* load_type(int** p, sParserInfo* info)
{
    string type_name = load_nullterminated_str(p);
    return parse_type_runtime(string(type_name), info);
}

static bool load_field(int** p, int* head, sCLClass* klass, sParserInfo* info)
{
    sCLField*% field = new sCLField;

    field->mName = load_nullterminated_str(p);
    field->mResultType = load_type(p, info);
    field->mIndex = **p;
    (*p)++;

    klass->mFields->insert(string(field->mName), field);

    return true;
}

bool load_param(int** p, sCLClass* klass, sCLParam* param, sParserInfo* info)
{
    string name = load_nullterminated_str(p);
    xstrncpy(param->mName, name, VAR_NAME_MAX);

    param->mType = load_type(p, info);

    return true;
}

buffer*% load_buffer(int** p)
{
    int len = **p;
    (*p)++;

    if(len == 0) {
        return null;
    }
    else {
        var result = new buffer.initialize();

        result.append((char*)*p, len);

        (*p) += len / sizeof(int);

        return result;
    }
}

sCLNodeBlock* load_node_block(int** p, sParserInfo* info)
{
    return null;
}

static bool load_method(int** p, sCLClass* klass, sParserInfo* info)
{
    sCLMethod%* method = new sCLMethod;

    method->mName = load_nullterminated_str(p);

    method->mNumParams = **p;
    (*p)++;

    for(int i=0; i<method->mNumParams; i++) {
        sCLParam param = method->mParams[i];
        if(!load_param(p, klass, method->mParams + i, info)) {
            return false;
        }
    }

    method->mResultType = load_type(p, info);

    method->mByteCodes = load_buffer(p);

    method->mNodeBlock = null;

    method->mMaxVarNum = **p;
    (*p)++;

    klass->mMethods->insert(string(method->mName), method);

    return true;
}

bool load_class(char* name, sParserInfo* info)
{
    char path[PATH_MAX];
    snprintf(path, PATH_MAX, "%s.ssc", name);
    
    FILE* f = fopen(path, "r");

    if(f == null) {
        return false;
    }

    buffer*% buf = new buffer.initialize();

    char buf2[BUFSIZ];

    while(true) {
        int n = fread(buf2, 1, BUFSIZ, f);

        if(n <= 0) {
            break;
        }

        buf.append(buf2, n);
    }

    fclose(f);

    int* p = (int*)buf.buf;

    string str = load_nullterminated_str(&p);

    sCLClass* klass = gClasses.at(name, null);

    if(klass == null) {
        klass = borrow alloc_class(name);

        gClasses.insert(string(name), dummy_heap klass);
    };
    
    klass->mName = string(str);

    int n = *p;
    p++;
    
    for(int i=0; i<n; i++) {
        if(!load_method(&p, klass, info)) {
            return false;
        }
    }

    n = *p;
    p++;

    for(int i=0; i<n; i++) {
        if(!load_field(&p, (int*)buf.buf, klass, info)) {
            return false;
        }
    }

    n = *p;
    p++;

    if(n) {
        string str = load_nullterminated_str(&p);

        klass->mParent = gClasses.at(str, null);
    }

    return true;
}
