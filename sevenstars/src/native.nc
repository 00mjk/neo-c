#include "common.h"

map<string, fNativeMethod>* gNativeMethods;

void create_native_method_name(char* result, sCLClass* klass, sCLMethod* method)
{
    snprintf(result, NATIVE_METHOD_NAME_MAX, "%s.%s", klass.mName, method.mName);
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
    CLObject left = (*stack_ptr-1)->mObjectValue;

    sCLObject* object_data = CLOBJECT(left);

    string type_name = create_type_name(object_data->mType);

    CLObject obj = create_string_object(type_name, info);

    (*stack_ptr)->mObjectValue = obj;
    (*stack_ptr)++;

    return true;
}

bool object_num_fields(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject left = (*stack_ptr-1)->mObjectValue;

    sCLObject* object_data = CLOBJECT(left);

    int num_fields = object_data->mNumFields;

    CLObject obj = create_int_object(num_fields, info);

    (*stack_ptr)->mObjectValue = obj;
    (*stack_ptr)++;

    return true;
}

bool object_field(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject left = (*stack_ptr-3)->mObjectValue;
    CLObject num = (*stack_ptr-2)->mObjectValue;
    CLObject default_value = (*stack_ptr-1)->mObjectValue;

    /// sevenstars to neo-c ///
    int num_value = get_int_value(num);

    sCLObject* object_data = CLOBJECT(left);

    if(num_value < 0 || num_value >= object_data->mNumFields) {
        (*stack_ptr)->mObjectValue = default_value;
        (*stack_ptr)++;
    }
    else {
        CLVALUE field = object_data->uValue.mFields[num_value];

        (*stack_ptr)->mObjectValue = field->mObjectValue;
        (*stack_ptr)++;
    }

    return true;
}

bool sevenstars_map_initialize(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject obj = create_map_object(info);

    (*stack_ptr)->mObjectValue = obj;
    (*stack_ptr)++;

    return true;
}

bool sevenstars_map_insert(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-3)->mObjectValue;
    CLObject key = (*stack_ptr-2)->mObjectValue;
    CLObject item = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "map", info)) {
        vm_err_msg(stack_ptr, info, "type error on map.insert");
        return false;
    }
    if(!check_type(key, "string", info)) {
        vm_err_msg(stack_ptr, info, "type error on map.insert");
        return false;
    }

    /// sevenstars to neo-c
    map<char*,int>* self_value = get_map_value(self);
    char* key_value = get_string_mem(key);
    int item_value = item;

    list<char*>* keys_value = get_map_keys(self);

    /// go ///
    self_value.insert(key_value, item_value);
    keys_value.push_back(key_value);
    
    return true;
}

bool sevenstars_map_at(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-3)->mObjectValue;
    CLObject key = (*stack_ptr-2)->mObjectValue;
    CLObject default_value = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "map", info)) {
        vm_err_msg(stack_ptr, info, "type error on map.at");
        return false;
    }
    if(!check_type(key, "string", info)) {
        vm_err_msg(stack_ptr, info, "type error on map.at");
        return false;
    }

    /// sevenstars to neo-c
    map<char*,int>* self_value = get_map_value(self);
    char* key_value = get_string_mem(key);
    int default_value_value = default_value;

    /// go ///
    int result = self_value.at(key_value, default_value_value);

    (*stack_ptr)->mObjectValue = result;
    (*stack_ptr)++;
    
    return true;
}

bool sevenstars_map_find(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-2)->mObjectValue;
    CLObject key = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "map", info)) {
        vm_err_msg(stack_ptr, info, "type error on map.find");
        return false;
    }
    if(!check_type(key, "string", info)) {
        vm_err_msg(stack_ptr, info, "type error on map.find");
        return false;
    }

    /// sevenstars to neo-c
    map<char*,int>* self_value = get_map_value(self);
    char* key_value = get_string_mem(key);

    /// go ///
    int value = self_value.find(key_value);

    CLObject result = create_bool_object(value, info);

    (*stack_ptr)->mObjectValue = result;
    (*stack_ptr)++;
    
    return true;
}

bool sevenstars_map_length(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "map", info)) {
        vm_err_msg(stack_ptr, info, "type error on map.length");
        return false;
    }

    /// sevenstars to neo-c
    map<char*,int>* self_value = get_map_value(self);

    /// go ///
    int value = self_value.length();

    CLObject result = create_int_object(value, info);

    (*stack_ptr)->mObjectValue = result;
    (*stack_ptr)++;
    
    return true;
}

bool sevenstars_map_equal(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-2)->mObjectValue;
    CLObject right = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "map", info)) {
        vm_err_msg(stack_ptr, info, "type error on map.equal");
        return false;
    }
    if(!check_type(right, "map", info)) {
        vm_err_msg(stack_ptr, info, "type error on map.equal");
        return false;
    }

    /// sevenstars to neo-c
    map<char*,int>* self_value = get_map_value(self);
    map<char*,int>* right_value = get_map_value(right);

    /// go ///
    bool value = false;
    
    if(self_value.len == right_value.len) {
        self_value.each {
            value = true;
            right_value.each {
                if(right_value.find(it)) {
                    int default_value = -1;
                    int item = right_value.at(it, default_value);
                    if(it2 != item) {
                        value = false;
                    }
                }
                else {
                    value = false;
                }
            }
        }
    }

    CLObject result = create_bool_object(value, info);

    (*stack_ptr)->mObjectValue = result;
    (*stack_ptr)++;
    
    return true;
}

static bool vm_invoke_method(CLObject obj, char* method_name, int num_params, CLVALUE** stack_ptr, sVMInfo* info)
{
    sCLObject* object_data = CLOBJECT(obj);
    sCLType* generics_types = object_data->mType;

    sCLClass* klass = object_data->mType->mClass;
    if(klass == null) {
        vm_err_msg(stack_ptr, info, xsprintf("class not found(%s)\n", klass->mName));
        return false;
    }

    char* klass_name = klass->mName;

    sCLMethod* method = null;
    while(klass) {
        method = klass.mMethods.at(method_name, null);

        if(method) {
            break;
        }

        klass = klass->mParent;
    }

    if(method == null) {
        vm_err_msg(stack_ptr, info, xsprintf("method not found(%s.%s)\n", klass_name, method_name));
        return false;
    }

    int var_num = method.mMaxVarNum;

    if(!param_check(method->mParams, method->mNumParams, *stack_ptr, generics_types, info))
    {
        vm_err_msg(stack_ptr, info, xsprintf("method parametor is invalid(%s.%s)\n", klass->mName, method_name));
        return false;
    }

    if(method.mByteCodes == null) {
        if(!invoke_native_method(klass, method, stack_ptr, info)) 
        {
            vm_err_msg(stack_ptr, info, xsprintf("native method error(%s.%s) 2\n", klass->mName, method_name));
            return false;
        }

        CLVALUE result_value = *(*stack_ptr-1);

        (*stack_ptr) -= num_params;
        bool result_existance = !type_identify_with_class_name(method->mResultType, "void", info.pinfo);

        if(result_existance) {
            (*stack_ptr)--;
            (*stack_ptr)->mObjectValue = result_value->mObjectValue;
            (*stack_ptr)++;
        }
        else {
            (*stack_ptr).mObjectValue = create_null_object(info);
            (*stack_ptr)++;
        }
    }
    else {
        buffer* codes = method.mByteCodes;

        int var_num = method.mMaxVarNum;

        CLVALUE result;
        if(!vm(codes, *stack_ptr, num_params, var_num, &result, info)) {
            return false;
        }

        (*stack_ptr) -= num_params;
        bool result_existance = !type_identify_with_class_name(method->mResultType, "void", info.pinfo);

        if(result_existance) {
            (*stack_ptr)->mObjectValue = result->mObjectValue;
            (*stack_ptr)++;
        }
        else {
            (*stack_ptr).mObjectValue = create_null_object(info);
            (*stack_ptr)++;
        }
    }

    return true;
}

bool sevenstars_map_to_string(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "map", info)) {
        vm_err_msg(stack_ptr, info, "type error on map.equal");
        return false;
    }

    /// sevenstars to neo-c
    map<char*,int>* self_value = get_map_value(self);

    /// go ///
    buffer*% buf = new buffer.initialize();

    buf.append_str("map(");

    bool return_false = false;
    
    int n = 0;
    self_value.each {
        CLObject obj = it2;

        char* method_name = "to_string";

        (*stack_ptr)->mObjectValue = obj;
        (*stack_ptr)++;

        int num_params = 1;
        if(!vm_invoke_method(obj, method_name, num_params, stack_ptr, info))
        {
            *it3 = true;
            return_false = true;
            return;
        }

        CLObject to_string_result = (*stack_ptr-1)->mObjectValue;
        (*stack_ptr)--;

        char* string_data = get_string_mem(to_string_result);

        buf.append_str(it);
        buf.append_str(",");
        buf.append_str(string_data);

        if(n != self_value.length() -1) {
            buf.append_str(",");
        }

        n++;
    }
    buf.append_str(")");

    if(return_false) {
        return false;
    }

    CLObject result = create_string_object(buf.to_string(), info);

    (*stack_ptr)->mObjectValue = result;
    (*stack_ptr)++;
    
    return true;
}

bool sevenstars_string_item(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-3)->mObjectValue;
    CLObject position = (*stack_ptr-2)->mObjectValue;
    CLObject default_value = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "string", info)) {
        vm_err_msg(stack_ptr, info, "type error on string.item");
        return false;
    }
    if(!check_type(position, "int", info)) {
        vm_err_msg(stack_ptr, info, "type error on string.item");
        return false;
    }
    if(!check_type(default_value, "string", info)) {
        vm_err_msg(stack_ptr, info, "type error on string.item");
        return false;
    }

    /// sevenstars to neo-c
    char* self_value = get_string_mem(self);
    int position_value = get_int_value(position);
    char* default_value_value = get_string_mem(default_value);

    /// go ///
    int len = strlen(self_value);

    if(position_value < 0) {
        position_value += len;
    }

    if(position_value < 0 || position_value >= len) {
        CLObject result = create_string_object(default_value_value, info);

        (*stack_ptr)->mObjectValue = result;
        (*stack_ptr)++;
        
        return true;
    }

    char buf[128];
    snprintf(buf, 128, "%c", self_value[position_value]);

    CLObject result = create_string_object(buf, info);

    (*stack_ptr)->mObjectValue = result;
    (*stack_ptr)++;
    
    return true;
}

bool sevenstars_string_length(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "string", info)) {
        vm_err_msg(stack_ptr, info, "type error on string.length");
        return false;
    }

    /// sevenstars to neo-c
    char* self_value = get_string_mem(self);

    /// go ///
    int len = strlen(self_value);

    CLObject result = create_int_object(len, info);

    (*stack_ptr)->mObjectValue = result;
    (*stack_ptr)++;
    
    return true;
}

bool sevenstars_string_plus(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-2)->mObjectValue;
    CLObject right = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "string", info)) {
        vm_err_msg(stack_ptr, info, "type error on string.plus");
        return false;
    }
    if(!check_type(right, "string", info)) {
        vm_err_msg(stack_ptr, info, "type error on string.plus");
        return false;
    }

    /// sevenstars to neo-c
    char* self_value = get_string_mem(self);
    char* right_value = get_string_mem(right);

    /// go ///
    CLObject result = create_string_object(string(self_value) + string(right_value), info);

    (*stack_ptr)->mObjectValue = result;
    (*stack_ptr)++;
    
    return true;
}

bool command_to_string(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "command", info)) {
        vm_err_msg(stack_ptr, info, "type error on buffer.to_string");
        return false;
    }

    /// sevenstars to neo-c
    sCLCommand* command_data = CLCOMMAND(self);

    char* self_value = command_data.mOutput;

    /// go ///
    CLObject obj = create_string_object(self_value, info);

    (*stack_ptr)->mObjectValue = obj;
    (*stack_ptr)++;
    
    return true;
}

void native_init()
{
    gNativeMethods = borrow new map<string, fNativeMethod>.initialize();

    gNativeMethods.insert(string("object.type_name"), object_type_name);
    gNativeMethods.insert(string("object.num_fields"), object_num_fields);
    gNativeMethods.insert(string("object.field"), object_field);
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
    gNativeMethods.insert(string("string.plus"), sevenstars_string_plus);
    gNativeMethods.insert(string("map.initialize"), sevenstars_map_initialize);
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
    gNativeMethods.insert(string("map.insert"), sevenstars_map_insert);
    gNativeMethods.insert(string("map.at"), sevenstars_map_at);
    gNativeMethods.insert(string("map.find"), sevenstars_map_find);
    gNativeMethods.insert(string("map.length"), sevenstars_map_length);
    gNativeMethods.insert(string("map.equal"), sevenstars_map_equal);
    gNativeMethods.insert(string("map.to_string"), sevenstars_map_to_string);
    gNativeMethods.insert(string("string.item"), sevenstars_string_item);
    gNativeMethods.insert(string("string.length"), sevenstars_string_length);
    gNativeMethods.insert(string("command.to_string"), command_to_string);
}

void native_final()
{
    delete gNativeMethods;
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
