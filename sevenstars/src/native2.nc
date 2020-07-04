#include "common.h"

bool sevenstars_string_index(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-3)->mObjectValue;
    CLObject search_str = (*stack_ptr-2)->mObjectValue;
    CLObject default_value = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "string", info)) {
        vm_err_msg(stack_ptr, info, "type error on string.index");
        return false;
    }
    if(!check_type(search_str, "string", info)) {
        vm_err_msg(stack_ptr, info, "type error on string.index");
        return false;
    }
    if(!check_type(default_value, "int", info)) {
        vm_err_msg(stack_ptr, info, "type error on string.index");
        return false;
    }

    /// sevenstars to neo-c
    char* self_value = get_string_mem(self);
    char* search_str_value = get_string_mem(search_str);
    int default_value_value = get_int_value(default_value);

    /// go ///
    int result = string(self_value).index(search_str_value, default_value_value);

    (*stack_ptr)->mObjectValue = create_int_object(result, info);
    (*stack_ptr)++;
    
    return true;
}

bool sevenstars_string_rindex(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-3)->mObjectValue;
    CLObject search_str = (*stack_ptr-2)->mObjectValue;
    CLObject default_value = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "string", info)) {
        vm_err_msg(stack_ptr, info, "type error on string.rindex");
        return false;
    }
    if(!check_type(search_str, "string", info)) {
        vm_err_msg(stack_ptr, info, "type error on string.rindex");
        return false;
    }
    if(!check_type(default_value, "int", info)) {
        vm_err_msg(stack_ptr, info, "type error on string.rindex");
        return false;
    }

    /// sevenstars to neo-c
    char* self_value = get_string_mem(self);
    char* search_str_value = get_string_mem(search_str);
    int default_value_value = get_int_value(default_value);

    /// go ///
    int result = string(self_value).rindex(search_str_value, default_value_value);

    (*stack_ptr)->mObjectValue = create_int_object(result, info);
    (*stack_ptr)++;
    
    return true;
}

bool sevenstars_string_index_regex(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-3)->mObjectValue;
    CLObject search_str = (*stack_ptr-2)->mObjectValue;
    CLObject default_value = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "string", info)) {
        vm_err_msg(stack_ptr, info, "type error on string.index_regex");
        return false;
    }
    if(!check_type(search_str, "regex", info)) {
        vm_err_msg(stack_ptr, info, "type error on string.index_regex");
        return false;
    }
    if(!check_type(default_value, "int", info)) {
        vm_err_msg(stack_ptr, info, "type error on string.index_regex");
        return false;
    }

    /// sevenstars to neo-c
    char* self_value = get_string_mem(self);
    nregex& search_str_value = get_regex_value(search_str);
    int default_value_value = get_int_value(default_value);

    /// go ///
    int result = string(self_value).index_regex(clone search_str_value, default_value_value);

    (*stack_ptr)->mObjectValue = create_int_object(result, info);
    (*stack_ptr)++;
    
    return true;
}

bool sevenstars_string_rindex_regex(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-3)->mObjectValue;
    CLObject search_str = (*stack_ptr-2)->mObjectValue;
    CLObject default_value = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "string", info)) {
        vm_err_msg(stack_ptr, info, "type error on string.rindex_regex");
        return false;
    }
    if(!check_type(search_str, "regex", info)) {
        vm_err_msg(stack_ptr, info, "type error on string.rindex_regex");
        return false;
    }
    if(!check_type(default_value, "int", info)) {
        vm_err_msg(stack_ptr, info, "type error on string.rindex_regex");
        return false;
    }

    /// sevenstars to neo-c
    char* self_value = get_string_mem(self);
    nregex& search_str_value = get_regex_value(search_str);
    int default_value_value = get_int_value(default_value);

    /// go ///
    int result = string(self_value).rindex_regex(clone search_str_value, default_value_value);

    (*stack_ptr)->mObjectValue = create_int_object(result, info);
    (*stack_ptr)++;
    
    return true;
}

bool sevenstars_string_sub(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-3)->mObjectValue;
    CLObject regex = (*stack_ptr-2)->mObjectValue;
    CLObject replace = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "string", info)) {
        vm_err_msg(stack_ptr, info, "type error on string.sub");
        return false;
    }
    if(!check_type(regex, "regex", info)) {
        vm_err_msg(stack_ptr, info, "type error on string.sub");
        return false;
    }
    if(!check_type(replace, "string", info)) {
        vm_err_msg(stack_ptr, info, "type error on string.sub");
        return false;
    }

    /// sevenstars to neo-c
    char* self_value = get_string_mem(self);
    nregex& regex_value = get_regex_value(regex);
    char* replace_value = get_string_mem(replace);

    /// go ///
    string result = string(self_value).sub(clone regex_value, string(replace_value), null);

    (*stack_ptr)->mObjectValue = create_string_object(result, info);
    (*stack_ptr)++;
    
    return true;
}

bool sevenstars_string_match(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-2)->mObjectValue;
    CLObject regex = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "string", info)) {
        vm_err_msg(stack_ptr, info, "type error on string.match");
        return false;
    }
    if(!check_type(regex, "regex", info)) {
        vm_err_msg(stack_ptr, info, "type error on string.match");
        return false;
    }

    /// sevenstars to neo-c
    char* self_value = get_string_mem(self);
    nregex& regex_value = get_regex_value(regex);

    /// go ///
    int result = string(self_value).match(clone regex_value, null);

    (*stack_ptr)->mObjectValue = create_bool_object(result, info);
    (*stack_ptr)++;
    
    return true;
}

bool sevenstars_string_reverse(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "string", info)) {
        vm_err_msg(stack_ptr, info, "type error on string.reverse");
        return false;
    }

    /// sevenstars to neo-c
    char* self_value = get_string_mem(self);

    /// go ///
    string result = string(self_value).reverse();

    (*stack_ptr)->mObjectValue = create_string_object(result, info);
    (*stack_ptr)++;
    
    return true;
}

bool sevenstars_string_replace(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-3)->mObjectValue;
    CLObject index = (*stack_ptr-2)->mObjectValue;
    CLObject c = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "string", info)) {
        vm_err_msg(stack_ptr, info, "type error on string.replace");
        return false;
    }
    if(!check_type(index, "int", info)) {
        vm_err_msg(stack_ptr, info, "type error on string.replace");
        return false;
    }
    if(!check_type(c, "string", info)) {
        vm_err_msg(stack_ptr, info, "type error on string.replace");
        return false;
    }

    /// sevenstars to neo-c
    char* self_value = get_string_mem(self);
    int index_value = get_int_value(index);
    char* c_value = get_string_mem(c);

    /// go ///
    string(self_value).replace(index_value, c_value[0]);

    return true;
}

bool sevenstars_type_equal(CLVALUE** stack_ptr, sVMInfo* info)
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
    if(!check_type(self, "type", info)) {
        vm_err_msg(stack_ptr, info, "type error on type.equal");
        return false;
    }
    if(!check_type(right, "type", info)) {
        vm_err_msg(stack_ptr, info, "type error on type.equal");
        return false;
    }

    /// sevenstars to neo-c
    sCLTypeObject* self_type_data = CLTYPE(self);
    sCLTypeObject* right_type_data = CLTYPE(right);

    bool result_value = type_identify(self_type_data->mType2, right_type_data->mType2);

    /// go ///
    CLObject obj = create_bool_object(result_value, info);

    (*stack_ptr)->mObjectValue = obj;
    (*stack_ptr)++;

    return true;
}

bool sevenstars_type_not_equal(CLVALUE** stack_ptr, sVMInfo* info)
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
    if(!check_type(self, "type", info)) {
        vm_err_msg(stack_ptr, info, "type error on type.not_equal");
        return false;
    }
    if(!check_type(right, "type", info)) {
        vm_err_msg(stack_ptr, info, "type error on type.not_equal");
        return false;
    }

    /// sevenstars to neo-c
    sCLTypeObject* self_type_data = CLTYPE(self);
    sCLTypeObject* right_type_data = CLTYPE(right);

    bool result_value = !type_identify(self_type_data->mType2, right_type_data->mType2);

    /// go ///
    CLObject obj = create_bool_object(result_value, info);

    (*stack_ptr)->mObjectValue = obj;
    (*stack_ptr)++;

    return true;
}

bool sevenstars_type_initialize(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject name = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(name, "string", info)) {
        vm_err_msg(stack_ptr, info, "type error on type.initialize");
        return false;
    }

    /// sevenstars to neo-c
    char* name_value = get_string_mem(name);

    /// throw exception ///
    sCLClass* klass = gClasses.at("type", null);

    sCLType* type = parse_type_runtime(name_value, info.cinfo.pinfo, klass.types)

    if(type == null|| type->mClass == null)
    {
        vm_err_msg(stack_ptr, info, xsprintf("invalid class name(%s)", name_value));
        return false;
    }
    
    /// go ///
    CLObject obj = create_type_object(type, info);

    (*stack_ptr)->mObjectValue = obj;
    (*stack_ptr)++;

    return true;
}

bool sevenstars_type_name_(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "type", info)) {
        vm_err_msg(stack_ptr, info, "type error on type.name");
        return false;
    }

    /// sevenstars to neo-c
    sCLTypeObject* self_type_data = CLTYPE(self);

    string name = create_type_name(self_type_data->mType2);

    /// go ///
    CLObject obj = create_string_object(name, info);

    (*stack_ptr)->mObjectValue = obj;
    (*stack_ptr)++;

    return true;
}

bool method_name(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject method = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(method, "method", info)) {
        vm_err_msg(stack_ptr, info, "type error on method.name");
        return false;
    }

    /// sevenstars to neo-c
    sCLMethodObject* method_object_data = CLMETHOD(method);

    sCLMethod* method_value = method_object_data->mMethod;

    /// go ///
    CLObject obj = create_string_object(method_value->mName, info);

    (*stack_ptr)->mObjectValue = obj;
    (*stack_ptr)++;

    return true;
}

bool method_param_type(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject method = (*stack_ptr-3)->mObjectValue;
    CLObject n = (*stack_ptr-2)->mObjectValue;
    CLObject default_value = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(method, "method", info)) {
        vm_err_msg(stack_ptr, info, "type error on method.param_types");
        return false;
    }
    if(!check_type(n, "int", info)) {
        vm_err_msg(stack_ptr, info, "type error on method.param_types");
        return false;
    }

    /// sevenstars to neo-c
    sCLMethodObject* method_object_data = CLMETHOD(method);

    sCLMethod* method_value = method_object_data->mMethod;
    int n_value = get_int_value(n);

    /// go ///
    if(n_value < 0 || n_value >= method_value.mNumParams) {
        (*stack_ptr)->mObjectValue = default_value;
        (*stack_ptr)++;
    }
    else {
        sCLParam* param = method_value.mParams + n_value;

        CLObject obj = create_type_object(param->mType, info);

        (*stack_ptr)->mObjectValue = obj;
        (*stack_ptr)++;
    }

    return true;
}

bool method_param_name(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject method = (*stack_ptr-3)->mObjectValue;
    CLObject n = (*stack_ptr-2)->mObjectValue;
    CLObject default_value = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(method, "method", info)) {
        vm_err_msg(stack_ptr, info, "type error on method.param_names");
        return false;
    }
    if(!check_type(n, "int", info)) {
        vm_err_msg(stack_ptr, info, "type error on method.param_names");
        return false;
    }

    /// sevenstars to neo-c
    sCLMethodObject* method_object_data = CLMETHOD(method);

    sCLMethod* method_value = method_object_data->mMethod;
    int n_value = get_int_value(n);

    /// go ///
    if(n_value < 0 || n_value >= method_value.mNumParams) {
        (*stack_ptr)->mObjectValue = default_value;
        (*stack_ptr)++;
    }
    else {
        sCLParam* param = method_value.mParams + n_value;

        CLObject obj = create_string_object(param->mName, info);

        (*stack_ptr)->mObjectValue = obj;
        (*stack_ptr)++;
    }

    return true;
}

bool method_num_params(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject method = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(method, "method", info)) {
        vm_err_msg(stack_ptr, info, "type error on method.num_params");
        return false;
    }

    /// sevenstars to neo-c
    sCLMethodObject* method_object_data = CLMETHOD(method);

    sCLMethod* method_value = method_object_data->mMethod;

    /// go ///
    int num_params = method_value.mNumParams;

    CLObject obj = create_int_object(num_params, info);

    (*stack_ptr)->mObjectValue = obj;
    (*stack_ptr)++;

    return true;
}

bool method_equal(CLVALUE** stack_ptr, sVMInfo* info)
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
    if(!check_type(self, "method", info)) {
        vm_err_msg(stack_ptr, info, "type error on method.equal");
        return false;
    }
    if(!check_type(right, "method", info)) {
        vm_err_msg(stack_ptr, info, "type error on method.equal");
        return false;
    }

    /// sevenstars to neo-c
    sCLMethodObject* self_method_data = CLMETHOD(self);
    sCLMethodObject* right_method_data = CLMETHOD(right);

    bool result_value = self_method_data->mMethod == right_method_data->mMethod;

    /// go ///
    CLObject obj = create_bool_object(result_value, info);

    (*stack_ptr)->mObjectValue = obj;
    (*stack_ptr)++;

    return true;
}

bool method_not_equal(CLVALUE** stack_ptr, sVMInfo* info)
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
    if(!check_type(self, "method", info)) {
        vm_err_msg(stack_ptr, info, "type error on method.not_equal");
        return false;
    }
    if(!check_type(right, "method", info)) {
        vm_err_msg(stack_ptr, info, "type error on method.not_equal");
        return false;
    }

    /// sevenstars to neo-c
    sCLMethodObject* self_method_data = CLMETHOD(self);
    sCLMethodObject* right_method_data = CLMETHOD(right);

    bool result_value = self_method_data->mMethod == right_method_data->mMethod;

    /// go ///
    CLObject obj = create_bool_object(result_value, info);

    (*stack_ptr)->mObjectValue = obj;
    (*stack_ptr)++;

    return true;
}

bool method_result_type(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject method = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(method, "method", info)) {
        vm_err_msg(stack_ptr, info, "type error on method.result_type");
        return false;
    }

    /// sevenstars to neo-c
    sCLMethodObject* method_object_data = CLMETHOD(method);

    sCLMethod* method_value = method_object_data->mMethod;

    /// go ///
    sCLType* type = method_value->mResultType;

    CLObject obj = create_type_object(type, info);

    (*stack_ptr)->mObjectValue = obj;
    (*stack_ptr)++;

    return true;
}

bool field_equal(CLVALUE** stack_ptr, sVMInfo* info)
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
    if(!check_type(self, "field", info)) {
        vm_err_msg(stack_ptr, info, "type error on field.equal");
        return false;
    }
    if(!check_type(right, "field", info)) {
        vm_err_msg(stack_ptr, info, "type error on field.equal");
        return false;
    }

    /// sevenstars to neo-c
    sCLFieldObject* self_field_data = CLFIELD(self);
    sCLFieldObject* right_field_data = CLFIELD(right);

    bool result_value = self_field_data->mField == right_field_data->mField;

    /// go ///
    CLObject obj = create_bool_object(result_value, info);

    (*stack_ptr)->mObjectValue = obj;
    (*stack_ptr)++;

    return true;
}

bool field_not_equal(CLVALUE** stack_ptr, sVMInfo* info)
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
    if(!check_type(self, "field", info)) {
        vm_err_msg(stack_ptr, info, "type error on field.not_equal");
        return false;
    }
    if(!check_type(right, "field", info)) {
        vm_err_msg(stack_ptr, info, "type error on field.not_equal");
        return false;
    }

    /// sevenstars to neo-c
    sCLFieldObject* self_field_data = CLFIELD(self);
    sCLFieldObject* right_field_data = CLFIELD(right);

    bool result_value = self_field_data->mField == right_field_data->mField;

    /// go ///
    CLObject obj = create_bool_object(result_value, info);

    (*stack_ptr)->mObjectValue = obj;
    (*stack_ptr)++;

    return true;
}

bool field_name(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject field = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(field, "field", info)) {
        vm_err_msg(stack_ptr, info, "type error on field.name");
        return false;
    }

    /// sevenstars to neo-c
    sCLFieldObject* field_object_data = CLFIELD(field);

    sCLField* field_value = field_object_data->mField;

    /// go ///
    CLObject obj = create_string_object(field_value->mName, info);

    (*stack_ptr)->mObjectValue = obj;
    (*stack_ptr)++;

    return true;
}

bool field_result_type(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject field = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(field, "field", info)) {
        vm_err_msg(stack_ptr, info, "type error on field.result_type");
        return false;
    }

    /// sevenstars to neo-c
    sCLFieldObject* field_object_data = CLFIELD(field);

    sCLField* field_value = field_object_data->mField;

    /// go ///
    sCLType* type = field_value->mResultType;

    CLObject obj = create_type_object(type, info);

    (*stack_ptr)->mObjectValue = obj;
    (*stack_ptr)++;

    return true;
}

bool string_write(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-2)->mObjectValue;
    CLObject file_name = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "string", info)) {
        vm_err_msg(stack_ptr, info, "type error on string.write");
        return false;
    }
    if(!check_type(file_name, "string", info)) {
        vm_err_msg(stack_ptr, info, "type error on string.write");
        return false;
    }

    /// convert sevenstars to neo-c ///
    char* self_value = get_string_mem(self);
    char* file_name_value = get_string_mem(file_name);

    /// go ///
    FILE* f = fopen(file_name_value, "w");

    if(f == null) {
        vm_err_msg(stack_ptr, info, xsprintf("file open error(%s)", file_name_value));
        return false;
    }

    if(fwrite(self_value, strlen(self_value), 1, f) < 0) {
        vm_err_msg(stack_ptr, info, xsprintf("file write error(%s)", file_name_value));
        return false;
    }

    fclose(f);

    return true;
}

bool string_append(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-2)->mObjectValue;
    CLObject file_name = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "string", info)) {
        vm_err_msg(stack_ptr, info, "type error on string.append");
        return false;
    }
    if(!check_type(file_name, "string", info)) {
        vm_err_msg(stack_ptr, info, "type error on string.append");
        return false;
    }

    /// convert sevenstars to neo-c ///
    char* self_value = get_string_mem(self);
    char* file_name_value = get_string_mem(file_name);

    /// go ///
    FILE* f = fopen(file_name_value, "a");

    if(f == null) {
        vm_err_msg(stack_ptr, info, xsprintf("file open error(%s)", file_name_value));
        return false;
    }

    if(fwrite(self_value, strlen(self_value), 1, f) < 0) {
        vm_err_msg(stack_ptr, info, xsprintf("file write error(%s)", file_name_value));
        return false;
    }

    fclose(f);

    return true;
}

bool sevenstars_string_substring(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-3)->mObjectValue;
    CLObject head = (*stack_ptr-2)->mObjectValue;
    CLObject tail = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "string", info)) {
        vm_err_msg(stack_ptr, info, "type error on string.substring");
        return false;
    }
    if(!check_type(head, "int", info)) {
        vm_err_msg(stack_ptr, info, "type error on string.substring");
        return false;
    }
    if(!check_type(tail, "int", info)) {
        vm_err_msg(stack_ptr, info, "type error on string.substring");
        return false;
    }

    /// convert sevenstars to neo-c ///
    char* self_value = get_string_mem(self);
    int head_value = get_int_value(head);
    int tail_value = get_int_value(tail);

    /// go ///
    string result_value = string(self_value).substring(head_value, tail_value);

    CLObject result = create_string_object(result_value, info);

    (*stack_ptr)->mObjectValue = result;
    (*stack_ptr)++;

    return true;
}

bool class_initialize(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject name = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(name, "string", info)) {
        vm_err_msg(stack_ptr, info, "type error on class.initialize");
        return false;
    }

    /// sevenstars to neo-c
    char* name_value = get_string_mem(name);

    /// throw exception ///
    sCLClass* klass = gClasses.at(name_value, null);

    if(klass == null) {
        vm_err_msg(stack_ptr, info, xsprintf("invalid class name(%s)", name_value));
        return false;
    }

    
    /// go ///
    CLObject obj = create_class_object(name_value, info);

    (*stack_ptr)->mObjectValue = obj;
    (*stack_ptr)++;

    return true;
}

bool class_name_(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject klass = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(klass, "class", info)) {
        vm_err_msg(stack_ptr, info, "type error on class.name");
        return false;
    }

    /// sevenstars to neo-c
    sCLClassObject* class_object_data = CLCLASS(klass);

    sCLClass* klass_value = class_object_data->mClass;

    /// go ///
    CLObject obj = create_string_object(klass_value->mName, info);

    (*stack_ptr)->mObjectValue = obj;
    (*stack_ptr)++;

    return true;
}

bool class_parent(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject klass = (*stack_ptr-2)->mObjectValue;
    CLObject default_value = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(klass, "class", info)) {
        vm_err_msg(stack_ptr, info, "type error on class.name");
        return false;
    }

    /// sevenstars to neo-c
    sCLClassObject* class_object_data = CLCLASS(klass);

    sCLClass* klass_value = class_object_data->mClass;

    /// go ///
    sCLClass* parent_class = klass_value->mParent;

    if(parent_class) {
        CLObject obj = create_class_object(parent_class->mName, info);

        (*stack_ptr)->mObjectValue = obj;
        (*stack_ptr)++;
    }
    else {
        (*stack_ptr)->mObjectValue = default_value;
        (*stack_ptr)++;
    }

    return true;
}

bool class_method(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject klass = (*stack_ptr-3)->mObjectValue;
    CLObject name = (*stack_ptr-2)->mObjectValue;
    CLObject default_value = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(klass, "class", info)) {
        vm_err_msg(stack_ptr, info, "type error on class.method");
        return false;
    }
    if(!check_type(name, "string", info)) {
        vm_err_msg(stack_ptr, info, "type error on class.method");
        return false;
    }

    /// sevenstars to neo-c
    sCLClassObject* class_object_data = CLCLASS(klass);

    sCLClass* klass_value = class_object_data->mClass;
    char* name_value = get_string_mem(name);

    /// go ///
    sCLMethod* method = klass_value->mMethods.at(name_value, null);

    if(method) {
        CLObject obj = create_method_object(method, info);

        (*stack_ptr)->mObjectValue = obj;
        (*stack_ptr)++;
    }
    else {
        (*stack_ptr)->mObjectValue = default_value;
        (*stack_ptr)++;
    }

    return true;
}

bool class_field(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject klass = (*stack_ptr-3)->mObjectValue;
    CLObject name = (*stack_ptr-2)->mObjectValue;
    CLObject default_value = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(klass, "class", info)) {
        vm_err_msg(stack_ptr, info, "type error on class.method");
        return false;
    }
    if(!check_type(name, "string", info)) {
        vm_err_msg(stack_ptr, info, "type error on class.method");
        return false;
    }

    /// sevenstars to neo-c
    sCLClassObject* class_object_data = CLCLASS(klass);

    sCLClass* klass_value = class_object_data->mClass;
    char* name_value = get_string_mem(name);

    /// go ///
    sCLField* field = klass_value->mFields.at(name_value, null);

    if(field) {
        CLObject obj = create_field_object(field, info);

        (*stack_ptr)->mObjectValue = obj;
        (*stack_ptr)++;
    }
    else {
        (*stack_ptr)->mObjectValue = default_value;
        (*stack_ptr)++;
    }

    return true;
}

bool class_equal(CLVALUE** stack_ptr, sVMInfo* info)
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
    if(!check_type(self, "class", info)) {
        vm_err_msg(stack_ptr, info, "type error on class.equal");
        return false;
    }
    if(!check_type(right, "class", info)) {
        vm_err_msg(stack_ptr, info, "type error on class.equal");
        return false;
    }

    /// sevenstars to neo-c
    sCLClassObject* self_class_data = CLCLASS(self);
    sCLClassObject* right_class_data = CLCLASS(right);

    bool result_value = self_class_data->mClass == right_class_data->mClass;

    /// go ///
    CLObject obj = create_bool_object(result_value, info);

    (*stack_ptr)->mObjectValue = obj;
    (*stack_ptr)++;

    return true;
}

bool class_not_equal(CLVALUE** stack_ptr, sVMInfo* info)
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
    if(!check_type(self, "class", info)) {
        vm_err_msg(stack_ptr, info, "type error on class.not_equal");
        return false;
    }
    if(!check_type(right, "class", info)) {
        vm_err_msg(stack_ptr, info, "type error on class.not_equal");
        return false;
    }

    /// sevenstars to neo-c
    sCLClassObject* self_class_data = CLCLASS(self);
    sCLClassObject* right_class_data = CLCLASS(right);

    bool result_value = self_class_data->mClass != right_class_data->mClass;

    /// go ///
    CLObject obj = create_bool_object(result_value, info);

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

bool string_to_command(CLVALUE** stack_ptr, sVMInfo* info)
{ CLObject self = (*stack_ptr-1)->mObjectValue;

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

bool regex_set_value(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-2)->mObjectValue;
    CLObject value = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "regex", info)) {
        vm_err_msg(stack_ptr, info, "type error on regex.set_value");
        return false;
    }
    if(!check_type(value, "regex", info)) {
        vm_err_msg(stack_ptr, info, "type error on regex.set_value");
        return false;
    }

    /// convert sevenstars to neo-c ///
    nregex& value_value = get_regex_value(value);

    /// go ///
    set_regex_value(self, value_value);

    return true;
}

bool regex_to_string(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "regex", info)) {
        vm_err_msg(stack_ptr, info, "type error on regex.to_string");
        return false;
    }

    /// convert sevenstars to neo-c ///
    nregex& self_value = get_regex_value(self);

    /// go ///
    CLObject obj = create_string_object(self_value->str, info);

    (*stack_ptr)->mObjectValue = obj;
    (*stack_ptr)++;

    return true;
}











void native_init2()
{
    gNativeMethods.insert(string("type.equal"), sevenstars_type_equal);
    gNativeMethods.insert(string("type.not_equal"), sevenstars_type_not_equal);
    gNativeMethods.insert(string("type.initialize"), sevenstars_type_initialize);
    gNativeMethods.insert(string("type.name"), sevenstars_type_name_);
    gNativeMethods.insert(string("method.equal"), method_equal);
    gNativeMethods.insert(string("method.not_equal"), method_not_equal);
    gNativeMethods.insert(string("method.name"), method_name);
    gNativeMethods.insert(string("method.param_type"), method_param_type);
    gNativeMethods.insert(string("method.param_name"), method_param_name);
    gNativeMethods.insert(string("method.num_params"), method_num_params);
    gNativeMethods.insert(string("method.result_type"), method_result_type);
    gNativeMethods.insert(string("field.equal"), field_equal);
    gNativeMethods.insert(string("field.not_equal"), field_not_equal);
    gNativeMethods.insert(string("field.name"), field_name);
    gNativeMethods.insert(string("field.result_type"), field_result_type);
    gNativeMethods.insert(string("string.write"), string_write);
    gNativeMethods.insert(string("string.append"), string_append);
    gNativeMethods.insert(string("string.substring"), sevenstars_string_substring);
    gNativeMethods.insert(string("string.compare"), sevenstars_string_compare);
    gNativeMethods.insert(string("string.set_value"), string_set_value);
    gNativeMethods.insert(string("string.to_command"), string_to_command);
    gNativeMethods.insert(string("string.equal"), string_equal);
    gNativeMethods.insert(string("string.not_equal"), string_not_equal);
    gNativeMethods.insert(string("string.compare"), sevenstars_string_compare);
    gNativeMethods.insert(string("class.initialize"), class_initialize);
    gNativeMethods.insert(string("class.name"), class_name_);
    gNativeMethods.insert(string("class.parent"), class_parent);
    gNativeMethods.insert(string("class.method"), class_method);
    gNativeMethods.insert(string("class.field"), class_field);
    gNativeMethods.insert(string("class.equal"), class_equal);
    gNativeMethods.insert(string("class.not_equal"), class_not_equal);
    gNativeMethods.insert(string("string.index"), sevenstars_string_index);
    gNativeMethods.insert(string("string.rindex"), sevenstars_string_rindex);
    gNativeMethods.insert(string("string.index_regex"), sevenstars_string_index_regex);
    gNativeMethods.insert(string("string.rindex_regex"), sevenstars_string_rindex_regex);
    gNativeMethods.insert(string("string.sub"), sevenstars_string_sub);
    gNativeMethods.insert(string("string.match"), sevenstars_string_match);
    gNativeMethods.insert(string("string.reverse"), sevenstars_string_reverse);
    gNativeMethods.insert(string("string.replace"), sevenstars_string_replace);
    gNativeMethods.insert(string("regex.set_value"), regex_set_value);
    gNativeMethods.insert(string("regex.to_string"), regex_to_string);
}
