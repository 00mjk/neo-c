#include "common.h"

bool sevenstars_list_initialize(CLVALUE** stack_ptr, sVMInfo* info)
{
    list<int>*% list_ = new list<int>.initialize();

    CLObject obj = create_list_object(list_, info);

    (*stack_ptr)->mObjectValue = obj;
    (*stack_ptr)++;

    return true;
}

bool sevenstars_list_length(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "list", info)) {
        vm_err_msg(stack_ptr, info, "type error on list.length");
        return false;
    }

    /// convert sevenstars to neo-c ///
    list<int>* self_value = get_list_value(self);

    /// go ///
    CLObject obj = create_int_object(self_value.length(), info);

    (*stack_ptr)->mObjectValue = obj;
    (*stack_ptr)++;

    return true;
}

bool sevenstars_list_item(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-3)->mObjectValue;
    CLObject position = (*stack_ptr-2)->mObjectValue;
    CLObject default_value = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "list", info)) {
        vm_err_msg(stack_ptr, info, "type error on list.item");
        return false;
    }
    if(!check_type(position, "int", info)) {
        vm_err_msg(stack_ptr, info, "type error on list.item");
        return false;
    }

    /// convert sevenstars to neo-c ///
    list<int>* self_value = get_list_value(self);
    int position_value = get_int_value(position);
    CLObject default_value_value = default_value;

    /// go ///
    CLObject result = self_value.item(position_value, default_value_value);
    (*stack_ptr)->mObjectValue = result;
    (*stack_ptr)++;

    return true;
}

bool sevenstars_list_set_value(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-2)->mObjectValue;
    CLObject right = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "list", info)) {
        vm_err_msg(stack_ptr, info, "type error on list.set_value");
        return false;
    }
    if(!check_type(right, "list", info)) {
        vm_err_msg(stack_ptr, info, "type error on list.set_value");
        return false;
    }

    /// convert sevenstars to neo-c ///
    list<int>* self_value = get_list_value(self);
    list<int>* right_value = get_list_value(right);

    /// go ///
    set_list_value(self, right_value);

    return true;
}

bool sevenstars_list_push_back(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-2)->mObjectValue;
    CLObject item = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "list", info)) {
        vm_err_msg(stack_ptr, info, "type error on list.push_back");
        return false;
    }

    /// convert sevenstars to neo-c ///
    list<int>* self_value = get_list_value(self);
    CLObject item_value = item;

    /// go ///
    self_value.push_back(item_value);

    return true;
}

bool sevenstars_list_reset(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "list", info)) {
        vm_err_msg(stack_ptr, info, "type error on list.reset");
        return false;
    }

    /// convert sevenstars to neo-c ///
    list<int>* self_value = get_list_value(self);

    /// go ///
    self_value.reset();

    return true;
}

bool sevenstars_list_insert(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-3)->mObjectValue;
    CLObject position = (*stack_ptr-2)->mObjectValue;
    CLObject item = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "list", info)) {
        vm_err_msg(stack_ptr, info, "type error on list.insert");
        return false;
    }
    if(!check_type(position, "int", info)) {
        vm_err_msg(stack_ptr, info, "type error on list.insert");
        return false;
    }


    /// convert sevenstars to neo-c ///
    list<int>* self_value = get_list_value(self);
    int position_value = get_int_value(position);
    CLObject item_value = item;

    /// go ///
    self_value.insert(position_value, item_value);

    return true;
}

bool sevenstars_list_delete(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-2)->mObjectValue;
    CLObject position = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "list", info)) {
        vm_err_msg(stack_ptr, info, "type error on list.delete");
        return false;
    }
    if(!check_type(position, "int", info)) {
        vm_err_msg(stack_ptr, info, "type error on list.delete");
        return false;
    }

    /// convert sevenstars to neo-c ///
    list<int>* self_value = get_list_value(self);
    int position_value = get_int_value(position);

    /// go ///
    self_value.delete(position_value);

    return true;
}

bool sevenstars_list_replace(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-3)->mObjectValue;
    CLObject position = (*stack_ptr-2)->mObjectValue;
    CLObject item = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "list", info)) {
        vm_err_msg(stack_ptr, info, "type error on list.replace");
        return false;
    }
    if(!check_type(position, "int", info)) {
        vm_err_msg(stack_ptr, info, "type error on list.replace");
        return false;
    }

    /// convert sevenstars to neo-c ///
    list<int>* self_value = get_list_value(self);
    int position_value = get_int_value(position);
    CLObject item_value = item;

    /// go ///
    self_value.replace(position_value, item_value);

    return true;
}

bool sevenstars_list_delete_range(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-3)->mObjectValue;
    CLObject head = (*stack_ptr-2)->mObjectValue;
    CLObject tail = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "list", info)) {
        vm_err_msg(stack_ptr, info, "type error on list.delete_range");
        return false;
    }
    if(!check_type(head, "int", info)) {
        vm_err_msg(stack_ptr, info, "type error on list.delete_range");
        return false;
    }
    if(!check_type(tail, "int", info)) {
        vm_err_msg(stack_ptr, info, "type error on list.delete_range");
        return false;
    }

    /// convert sevenstars to neo-c ///
    list<int>* self_value = get_list_value(self);
    int head_value = get_int_value(head);
    int tail_value = get_int_value(tail);

    /// go ///
    self_value.delete_range(head_value, tail_value);

    return true;
}

bool sevenstars_list_sublist(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-3)->mObjectValue;
    CLObject head = (*stack_ptr-2)->mObjectValue;
    CLObject tail = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "list", info)) {
        vm_err_msg(stack_ptr, info, "type error on list.sublist");
        return false;
    }
    if(!check_type(head, "int", info)) {
        vm_err_msg(stack_ptr, info, "type error on list.sublist");
        return false;
    }
    if(!check_type(tail, "int", info)) {
        vm_err_msg(stack_ptr, info, "type error on list.sublist");
        return false;
    }

    /// convert sevenstars to neo-c ///
    list<int>* self_value = get_list_value(self);
    int head_value = get_int_value(head);
    int tail_value = get_int_value(tail);

    /// go ///
    list<int>*% list_ = self_value.sublist(head_value, tail_value);

    CLObject result = create_list_object(list_, info);

    (*stack_ptr)->mObjectValue = result;
    (*stack_ptr)++;


    return true;
}

bool sevenstars_list_reverse(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "list", info)) {
        vm_err_msg(stack_ptr, info, "type error on list.reverse");
        return false;
    }

    /// convert sevenstars to neo-c ///
    list<int>* self_value = get_list_value(self);

    /// go ///
    list<int>*% list_ = self_value.reverse();

    CLObject result = create_list_object(list_, info);

    (*stack_ptr)->mObjectValue = result;
    (*stack_ptr)++;

    return true;
}

bool sevenstars_list_sort(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-2)->mObjectValue;
    CLObject compare = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "list", info)) {
        vm_err_msg(stack_ptr, info, "type error on list.sort");
        return false;
    }

    /// convert sevenstars to neo-c ///
    list<int>* self_value = get_list_value(self);
    CLObject compare_value = compare

    /// go ///
    bool result_false = false;
    list<int>*% list_ = self_value.sort_block {
        CLObject block_object = compare_value;
        CLObject left_obj = it;
        CLObject right_obj = it2;

        (*stack_ptr)->mObjectValue = block_object;
        (*stack_ptr)++;
        (*stack_ptr)->mObjectValue = left_obj;
        (*stack_ptr)++;
        (*stack_ptr)->mObjectValue = right_obj;
        (*stack_ptr)++;

        if(!invoke_block(block_object, true, 2, stack_ptr, info))
        {
            result_false = true;
        }

        CLObject result_object = (*stack_ptr-1)->mObjectValue;
        (*stack_ptr)--;

        get_int_value(result_object)
    }

    if(result_false) {
        return false;
    }

    CLObject result = create_list_object(list_, info);

    (*stack_ptr)->mObjectValue = result;
    (*stack_ptr)++;

    return true;
}

bool sevenstars_string_scan(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-2)->mObjectValue;
    CLObject reg = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "string", info)) {
        vm_err_msg(stack_ptr, info, "type error on string.scan");
        return false;
    }
    if(!check_type(reg, "regex", info)) {
        vm_err_msg(stack_ptr, info, "type error on string.scan");
        return false;
    }

    /// convert sevenstars to neo-c ///
    char* self_value = get_string_mem(self);
    nregex& reg_value = get_regex_value(reg);

    /// go ///
    list<string>*% list_ = string(self_value).scan(clone reg_value);
    list<int>*% list2_ = new list<int>.initialize();

    list_.each {
        CLObject obj = create_string_object(it, info);
        (*stack_ptr)->mObjectValue = obj;
        (*stack_ptr)++;
        list2_.push_back(obj);
    }

    CLObject result = create_list_object(list2_, info);

    (*stack_ptr) -=list_.length();

    (*stack_ptr)->mObjectValue = result;
    (*stack_ptr)++;

    return true;
}

bool sevenstars_string_split(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-2)->mObjectValue;
    CLObject reg = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "string", info)) {
        vm_err_msg(stack_ptr, info, "type error on string.split");
        return false;
    }
    if(!check_type(reg, "regex", info)) {
        vm_err_msg(stack_ptr, info, "type error on string.split");
        return false;
    }

    /// convert sevenstars to neo-c ///
    char* self_value = get_string_mem(self);
    nregex& reg_value = get_regex_value(reg);

    /// go ///
    list<string>*% list_ = string(self_value).split(clone reg_value);
    list<int>*% list2_ = new list<int>.initialize();

    list_.each {
        CLObject obj = create_string_object(it, info);
        (*stack_ptr)->mObjectValue = obj;
        (*stack_ptr)++;
        list2_.push_back(obj);
    }

    CLObject result = create_list_object(list2_, info);

    (*stack_ptr) -=list_.length();

    (*stack_ptr)->mObjectValue = result;
    (*stack_ptr)++;

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

    list<int>* keys_value = get_map_keys(self);

    /// go ///
    self_value.insert(key_value, item_value);
    keys_value.push_back(key);
    
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

bool sevenstars_map_keys(CLVALUE** stack_ptr, sVMInfo* info)
{
    CLObject self = (*stack_ptr-1)->mObjectValue;

    /// check type ///
    if(!check_type(self, "map", info)) {
        vm_err_msg(stack_ptr, info, "type error on map.keys");
        return false;
    }

    /// sevenstars to neo-c
    map<char*,int>* self_value = get_map_value(self);
    list<int>* keys_value = get_map_keys(self);

    /// go ///
    (*stack_ptr)->mObjectValue = create_list_object(keys_value, info);
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

    if(check_type(self, "void", info) || check_type(right, "void", info))
    {
        int value = check_type(self, "void", info) == check_type(right, "void", info);
        
        CLObject obj = create_bool_object(value, info);

        (*stack_ptr)->mObjectValue = obj;
        (*stack_ptr)++;

        return true;
    }

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

bool sevenstars_map_not_equal(CLVALUE** stack_ptr, sVMInfo* info)
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

    CLObject result = create_bool_object(!value, info);

    (*stack_ptr)->mObjectValue = result;
    (*stack_ptr)++;
    
    return true;
}

bool vm_invoke_method(CLObject obj, char* method_name, int num_params, CLVALUE** stack_ptr, sVMInfo* info)
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

void native_init3()
{
    gNativeMethods.insert(string("list.length"), sevenstars_list_length);
    gNativeMethods.insert(string("list.initialize"), sevenstars_list_initialize);
    gNativeMethods.insert(string("list.item"), sevenstars_list_item);
    gNativeMethods.insert(string("list.set_value"), sevenstars_list_set_value);
    gNativeMethods.insert(string("list.push_back"), sevenstars_list_push_back);
    gNativeMethods.insert(string("list.reset"), sevenstars_list_reset);
    gNativeMethods.insert(string("list.insert"), sevenstars_list_insert);
    gNativeMethods.insert(string("list.delete"), sevenstars_list_delete);
    gNativeMethods.insert(string("list.replace"), sevenstars_list_replace);
    gNativeMethods.insert(string("list.delete_range"), sevenstars_list_delete_range);
    gNativeMethods.insert(string("list.sublist"), sevenstars_list_sublist);
    gNativeMethods.insert(string("list.reverse"), sevenstars_list_reverse);
    gNativeMethods.insert(string("list.sort"), sevenstars_list_sort);
    gNativeMethods.insert(string("string.scan"), sevenstars_string_scan);
    gNativeMethods.insert(string("string.split"), sevenstars_string_split);
    gNativeMethods.insert(string("map.insert"), sevenstars_map_insert);
    gNativeMethods.insert(string("map.at"), sevenstars_map_at);
    gNativeMethods.insert(string("map.find"), sevenstars_map_find);
    gNativeMethods.insert(string("map.length"), sevenstars_map_length);
    gNativeMethods.insert(string("map.equal"), sevenstars_map_equal);
    gNativeMethods.insert(string("map.not_equal"), sevenstars_map_not_equal);
    gNativeMethods.insert(string("map.to_string"), sevenstars_map_to_string);
    gNativeMethods.insert(string("map.keys"), sevenstars_map_keys);
    gNativeMethods.insert(string("map.initialize"), sevenstars_map_initialize);
}
