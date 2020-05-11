#include <pcre.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include <wctype.h>
#include <wchar.h>
#include <unistd.h>
#include <limits.h>

/// others ///
void xassert(char* msg, bool exp) 
{
    printf(msg + "...");
    if(!exp) {
        puts("assertion failed");
        exit(2);
    }
    puts("OK");
}

void p(char* str)
{
    puts(str);
}

string xbasename(char* path)
{
    char* p = path + strlen(path);
    
    while(p >= path) {
        if(*p == '/') {
            break;
        }
        else {
            p--;
        }
    }
    
    if(p < path) {
        return string(path);
    }
    else {
        return string(p+1);  
    }
}

string xrealpath(char* path)
{
    char* result = realpath(path, NULL);

    string result2 = string(result);

    free(result);

    return result2;
}

/// buffer ///
impl buffer 
{
    initialize() {
        self.size = 128;
        self.buf = malloc(self.size);
        self.len = 0;
    }

    finalize() {
        free(self.buf);
    }

    int length(buffer* self) {
        return self.len;
    }

    void append(buffer* self, char* mem, size_t size)
    {
        if(self.len + size + 1 >= self.size) {
            int new_size = (self.size + size + 1) * 2;
            self.buf = realloc(self.buf, new_size);
            self.size = new_size;
        }

        xmemcpy(self.buf + self.len, mem, size);
        self.len += size;

        self.buf[self.len] = '\0';
    }

    void append_char(buffer* self, char c)
    {
        if(self.len + 1 + 1 >= self.size) {
            int new_size = (self.size + 10 + 1) * 2;
            self.buf = realloc(self.buf, new_size);
            self.size = new_size;
        }

        self.buf[self.len] = c;
        self.len++;

        self.buf[self.len] = '\0';
    }

    void append_str(buffer* self, char* str)
    {
        self.append(str, strlen(str));
        self.append_char('\0');
    }

    string to_string(buffer* self)
    {
        return (string(self.buf));
    }
}

/// string ///
string string(char* str)
{
    int len = strlen(str);

    string result = new char[len + 1];

    strcpy(result, str);

    result
}

string string_from_wchar_t(wchar_t* wstr, char* default_value)
{
    int len = MB_LEN_MAX*(wcslen(wstr)+1);

    string result = new char[len];

    if(wcstombs(result, wstr, len) < 0) 
    {
        xstrncpy(result, default_value, len);
    }

    result
}

string operator+(char* left, char* right)
{
    int len1 = strlen(left);
    int len2 = strlen(right);

    string result = new char[len1 + len2 + 1];

    strcpy(result, left);
    strcat(result, right);

    result
}

string operator*(char* left, int num)
{
    int len = strlen(left);

    string result = new char[len * num + 1];

    result[0] = '\0';

    for(int i=0; i<num; i++) {
        strcat(result, left);
    }

    result
}

string operator+(string& left, string& right)
{
    int len1 = strlen(left);
    int len2 = strlen(right);

    string result = new char[len1 + len2 + 1];

    strcpy(result, left);
    strcat(result, right);

    result
}

string operator*(string& left, int num)
{
    int len = strlen(left);

    string result = new char[len * num + 1];

    result[0] = '\0';

    for(int i=0; i<num; i++) {
        strcat(result, left);
    }

    result
}

impl string
{
    bool equals(string& left, string& right)
    {
        return strcmp(left, right) == 0;
    }

    int length(string& str)
    {
        return strlen(str);
    }

    int get_hash_key(string& value)
    {
        int result = 0;
        char* p = value;
        while(*p) {
            result += (*p);
            p++;
        }
        return result;
    }

    string reverse(string& str) {
        int len = strlen(str);
        string result = new char[len + 1];

        for(int i=0; i<len; i++) {
            result[i] = str[len-i-1];
        }

        result[len] = '\0';

        return result;
    }

    string substring(string& str, int head, int tail)
    {
        if(str == null) {
            return string("");
        }

        int len = strlen(str);

        if(head < 0) {
            head += len;
        }
        if(tail < 0) {
            tail += len + 1;
        }

        if(head > tail) {
            return str.substring(tail, head).reverse();
        }

        if(head < 0) {
            head = 0;
        }

        if(tail >= len) {
            tail = len;
        }

        if(head == tail) {
            return string("");
        }

        if(tail-head+1 < 1) {
            return string("");
        }

        string result = new char[tail-head+1];

        memcpy(result, str + head, tail-head);
        result[tail-head] = '\0';

        return result;
    }
    int index(string& str, char* search_str, int default_value)
    {
        char* head = strstr(str, search_str);

        if(head == null) {
            return default_value;
        }

        return head - str;
    }
    int rindex(string& str, char* search_str, int default_value)
    {
        int len = strlen(search_str);
        char* p = str + strlen(str) - len;

        while(p >= str) {
            if(strncmp(p, search_str, len) == 0) {
                return p - str;
            }

            p--;
        }

        return default_value;
    }
    int index_regex(string& self, nregex reg, int default_value)
    {
        int ovec_max = 16;
        int start[ovec_max];
        int end[ovec_max];
        int ovec_value[ovec_max * 3];

        int result = default_value;
        
        int offset = 0;

        while(true) {
            int options = PCRE_NEWLINE_LF;
            int len = strlen(self);
            int regex_result = pcre_exec(reg.regex, 0, self, len, offset, options, ovec_value, ovec_max*3);

            for(int i=0; i<ovec_max; i++) {
                start[i] = ovec_value[i*2];
            }
            for(int i=0; i<ovec_max; i++) {
                end[i] = ovec_value[i*2+1];
            }

            /// match and no group strings ///
            if(regex_result == 1 || regex_result > 0) 
            {
                result = start[0];
                break;
            }
            /// no match ///
            {
                break;
            }
        }

        return result;
    }
    int rindex_regex(string& self, nregex reg, int default_value)
    {
        string self2 = self.reverse();
        
        int ovec_max = 16;
        int start[ovec_max];
        int end[ovec_max];
        int ovec_value[ovec_max * 3];

        int result = default_value;
        
        int offset = 0;

        while(true) {
            int options = PCRE_NEWLINE_LF;
            int len = strlen(self2);
            int regex_result = pcre_exec(reg.regex, 0, self2, len, offset, options, ovec_value, ovec_max*3);

            for(int i=0; i<ovec_max; i++) {
                start[i] = ovec_value[i*2];
            }
            for(int i=0; i<ovec_max; i++) {
                end[i] = ovec_value[i*2+1];
            }

            /// match and no group strings ///
            if(regex_result == 1 || regex_result > 0) 
            {
                result = strlen(self) -1 - start[0];
                break;
            }
            /// no match ///
            {
                break;
            }
        }

        return result;
    }
    string& delete(string& str, int position) {
        int len = strlen(str);
        
        if(position < 0) {
            position += len;
        }

        if(position < 0) {
            position = 0;
        }

        if(position >= len) {
            position = len -1;

            if(position < 0) {
                return str;
            }
        }
        
        string sub_str = str.substring(position+1, -1);

        memcpy(str + position, sub_str, sub_str.length()+1);

        return str;
    }
    string& delete_range(string& str, int head, int tail) {
        int len = strlen(str);

        if(strcmp(str, "") == 0) {
            return str;
        }
        
        if(head < 0) {
           head += len;
        }
        
        if(tail < 0) {
           tail += len + 1;
        }

        if(head < 0) {
            head = 0;
        }

        if(tail < 0) {
            return str;
        }

        if(tail >= len) {
            tail = len;
        }
        
        string sub_str = str.substring(tail, -1);

        memcpy(str + head, sub_str, sub_str.length()+1);

        return str;
    }
    string printable(string& str)
    {
        int len = str.length();
        string result = new char[len*2+1];

        int n = 0;
        for(int i=0; i<len; i++) {
            char c = str[i];

            if((c >= 0 && c < ' ') 
                || c == 127)
            {
                result[n++] = '^';
                result[n++] = c + 'A' - 1;
            }
            else {
                result[n++] = c;
            }
        }

        result[n] = '\0'

        return result;
    }

    string sub(string& self, nregex reg, char* replace, list<string>?* group_strings)
    {
        int offset = 0;

        int ovec_max = 16;
        int start[ovec_max];
        int end[ovec_max];
        int ovec_value[ovec_max * 3];

        var result = new buffer.initialize();

        while(true) {
            int options = PCRE_NEWLINE_LF;
            int len = strlen(self);
            int regex_result = pcre_exec(reg.regex, 0, self, len, offset, options, ovec_value, ovec_max*3);

            for(int i=0; i<ovec_max; i++) {
                start[i] = ovec_value[i*2];
            }
            for(int i=0; i<ovec_max; i++) {
                end[i] = ovec_value[i*2+1];
            }

            /// match and no group strings ///
            if(regex_result == 1 || (group_strings == null && regex_result > 0)) 
            {
                string str = self.substring(offset, start[0]);

                result.append_str(str);
                result.append_str(replace);

                if(offset == end[0]) {
                    offset++;
                }
                else {
                    offset = end[0];
                }

                if(!reg.global) {
                    string str = self.substring(offset, -1);
                    result.append_str(str);
                    break;
                }
            }
            /// group strings ///
            else if(regex_result > 1) {
                string str = self.substring(offset, start[0]);
                result.append_str(str);
                result.append_str(replace);

                if(offset == end[0]) {
                    offset++;
                }
                else {
                    offset = end[0];
                }

                if(!reg.global) {
                    group_strings.reset();
                }

                for(int i = 1; i<regex_result; i++) {
                    string match_string = self.substring(start[i], end[i]);
                    group_strings.push_back(match_string);
                }

                if(!reg.global) {
                    string str = self.substring(offset, -1);
                    result.append_str(str);
                    break;
                }
            }
            else
            /// no match ///
            {
                string str = self.substring(offset, -1);
                result.append_str(str);
                break;
            }
        }

        return result.to_string();
    }
    bool match(string& self, nregex reg, list<string>?* group_strings)
    {
        int offset = 0;

        int ovec_max = 16;
        int start[ovec_max];
        int end[ovec_max];
        int ovec_value[ovec_max * 3];

        while(true) {
            int options = PCRE_NEWLINE_LF;
            int len = strlen(self);
            int regex_result = pcre_exec(reg.regex, 0, self, len, offset, options, ovec_value, ovec_max*3);

            for(int i=0; i<ovec_max; i++) {
                start[i] = ovec_value[i*2];
            }
            for(int i=0; i<ovec_max; i++) {
                end[i] = ovec_value[i*2+1];
            }

            /// match and no group strings ///
            if(regex_result == 1 || (group_strings == null && regex_result > 0)) 
            {
                return true;
            }
            /// group strings ///
            else if(regex_result > 1) {
                group_strings.reset();
                for(int i = 1; i<regex_result; i++) {
                    string match_string = self.substring(start[i], end[i]);
                    group_strings.push_back(match_string);
                }

                return true;
            }
            else
            /// no match ///
            {
                return false;
            }
        }

        return false;
    }


    list<string>*% scan(string& self, nregex reg)
    {
        var result = new list<string>.initialize();

        int offset = 0;

        int ovec_max = 16;
        int start[ovec_max];
        int end[ovec_max];
        int ovec_value[ovec_max * 3];

        while(true) {
            int options = PCRE_NEWLINE_LF;
            int len = strlen(self);
            int regex_result = pcre_exec(reg.regex, 0, self, len, offset, options, ovec_value, ovec_max*3);

            for(int i=0; i<ovec_max; i++) {
                start[i] = ovec_value[i*2];
            }
            for(int i=0; i<ovec_max; i++) {
                end[i] = ovec_value[i*2+1];
            }

            /// match and no group strings ///
            if(regex_result == 1)
            {
                string str = self.substring(start[0], end[0]);
                result.push_back(str);

                if(offset == end[0]) {
                    offset++;
                }
                else {
                    offset = end[0];
                }
            }
            /// group strings ///
            else if(regex_result > 1) {
                string str = self.substring(start[0], end[0]);
                result.push_back(str);

                if(offset == end[0]) {
                    offset++;
                }
                else {
                    offset = end[0];
                }

                for(int i= 1; i<regex_result; i++) {
                    string match_string = self.substring(start[i], end[i]);
                    result.push_back(match_string);
                }
            }
            else
            /// no match ///
            {
                break;
            }
        }

        return result;
    }
    list<string>*% split(string& self, nregex reg)
    {
        var result = new list<string>.initialize();

        int offset = 0;

        int ovec_max = 16;
        int start[ovec_max];
        int end[ovec_max];
        int ovec_value[ovec_max * 3];

        while(true) {
            int options = PCRE_NEWLINE_LF;
            int len = strlen(self);
            int regex_result = pcre_exec(reg.regex, 0, self, len, offset, options, ovec_value, ovec_max*3);

            for(int i=0; i<ovec_max; i++) {
                start[i] = ovec_value[i*2];
            }
            for(int i=0; i<ovec_max; i++) {
                end[i] = ovec_value[i*2+1];
            }

            /// match and no group strings ///
            if(regex_result == 1)
            {
                string str = self.substring(offset, start[0]);
                result.push_back(str);

                if(offset == end[0]) {
                    offset++;
                }
                else {
                    offset = end[0];
                }
            }
            /// group strings ///
            else if(regex_result > 1) {
                string str = self.substring(offset, start[0]);
                result.push_back(str);

                if(offset == end[0]) {
                    offset++;
                }
                else {
                    offset = end[0];
                }

                for(int i=1; i<regex_result; i++) {
                    string match_str = self.substring(start[i], end[i]);
                    result.push_back(match_str);
                }
            }
            else
            /// no match ///
            {
                break;
            }
        }

        if(offset < self.length()) {
            string str = self.substring(offset, -1);
            result.push_back(str);
        }

        return result;
    }

    list<string>*% split_char(string& self, char c) {
        var result = new list<string>.initialize();

        var str = new buffer.initialize();

        for(int i=0; i<self.length(); i++) {
            if(self[i] == c) {
                result.push_back(string(str.buf));
                str = new buffer.initialize();
            }
            else {
                str.append_char(self[i]);
            }
        }
        if(str.length() != 0) {
            result.push_back(string(str.buf));
        }

        return result;
    }

    wstring to_wstring(string& self) {
        return wstring(self);
    }
    
    void replace(string& self, int index, char c) {
        int len = strlen(self);

        if(strcmp(self, "") == 0) {
            return;
        }
        
        if(index < 0) {
           index += len;
        }

        if(index >= len) {
            index = len-1;
        }

        if(index < 0) {
            index = 0;
        }
        
        self[index] = c;
    }
    
    char item(string& self, int index, char default_value)
    {
        int len = strlen(self);

        if(strcmp(self, "") == 0) {
            return default_value;
        }
        
        if(index < 0) {
           index += len;
        }

        if(index < 0 || index >= len) {
            return default_value;
        }
        
        
        return self[index];
    }
    
    nregex to_regex(string& self) {
        return regex(self, false, false, false, false, false, false, false, false);
    }
}

/// wstring ///
wstring wstring(char* str)
{
    int len = strlen(str);

    wstring wstr = new wchar_t[len + 1];

    int ret = mbstowcs(wstr, str, len+1);
    wstr[ret] = '\0';

    if(ret < 0) {
        wstr[0] = 0;
    }

    return wstr;
}

wstring wstring_from_wchar_t(wchar_t* str)
{
    int len = wcslen(str);

    wstring wstr = new wchar_t[len + 1];

    wcscpy(wstr, str);

    return wstr;
}

wstring operator+(wchar_t* left, wchar_t* right)
{
    int len1 = wcslen(left);
    int len2 = wcslen(right);

    wstring result = new wchar_t[len1 + len2 + 1];

    wcscpy(result, left);
    wcscat(result, right);

    result
}

wstring operator*(wchar_t* left, int num)
{
    int len = wcslen(left);

    wstring result = new wchar_t[len * num + 1];

    result[0] = '\0';

    for(int i=0; i<num; i++) {
        wcscat(result, left);
    }

    result
}

wstring operator+(wstring& left, wstring& right)
{
    int len1 = wcslen(left);
    int len2 = wcslen(right);

    wstring result = new wchar_t[len1 + len2 + 1];

    wcscpy(result, left);
    wcscat(result, right);

    result
}

wstring operator*(wstring& left, int num)
{
    int len = wcslen(left);

    wstring result = new wchar_t[len * num + 1];

    result[0] = '\0';

    for(int i=0; i<num; i++) {
        wcscat(result, left);
    }

    result
}

impl wchar_t
{
    wstring substring(wchar_t* str, int head, int tail)
    {
        if(str == null) {
            return wstring("");
        }

        int len = wcslen(str);

        if(head < 0) {
            head += len;
        }
        if(tail < 0) {
            tail += len + 1;
        }

        if(head > tail) {
            return wstring("");
        }

        if(head < 0) {
            head = 0;
        }

        if(tail >= len) {
            tail = len;
        }

        if(head == tail) {
            return wstring("");
        }

        if(tail-head+1 < 1) {
            return wstring("");
        }

        wstring result = new wchar_t[tail-head+1];

        memcpy(result, str + head, sizeof(wchar_t)*(tail-head));
        result[tail-head] = '\0';

        return result;
    }
}


impl wstring
{
    bool equals(wstring& left, wstring& right)
    {
        return wcscmp(left, right) == 0;
    }

    int length(wstring& str)
    {
        return wcslen(str);
    }

    int get_hash_key(wstring& value)
    {
        int result = 0;
        wchar_t* p = value;
        while(*p) {
            result += (*p);
            p++;
        }
        return result;
    }

    string to_string(wstring& self, char* default_value) 
    {
        int len = MB_LEN_MAX*(wcslen(self)+1);

        string result = new char[len];

        if(wcstombs(result, self, len) < 0) 
        {
            result = string(default_value);
        }

        result
    }

    wstring reverse(wstring& str) {
        int len = wcslen(str);
        wstring result = new wchar_t[len + 1];

        for(int i=0; i<len; i++) {
            result[i] = str[len-i-1];
        }

        result[len] = '\0';

        return result;
    }

    wstring substring(wstring& str, int head, int tail)
    {
        if(str == null) {
            return wstring("");
        }

        int len = wcslen(str);

        if(head < 0) {
            head += len;
        }
        if(tail < 0) {
            tail += len + 1;
        }

        if(head > tail) {
            return str.substring(tail, head).reverse();
        }

        if(head < 0) {
            head = 0;
        }

        if(tail >= len) {
            tail = len;
        }

        if(head == tail) {
            return wstring("");
        }

        if(tail-head+1 < 1) {
            return wstring("");
        }

        wstring result = new wchar_t[tail-head+1];

        memcpy(result, str + head, sizeof(wchar_t)*(tail-head));
        result[tail-head] = '\0';

        return result;
    }

    int index(wstring& str, wchar_t* search_str, int default_value)
    {
        wchar_t* head = wcsstr(str, search_str);

        if(head == null) {
            return default_value;
        }

        return ((head - str) / sizeof(wchar_t));
    }
    int rindex(wstring& str, wchar_t* search_str, int default_value)
    {
        int len = wcslen(search_str);

        wchar_t* p = str + wcslen(str) - len;

        while(p >= str) {
            if(wcsncmp(p, search_str, len) == 0) {
                return ((p - str) / sizeof(wchar_t));
            }

            p--;
        }

        return default_value;
    }
    wstring& delete(wstring& str, int position) {
        int len = wcslen(str);
        
        if(position < 0) {
            position += len;
        }

        if(position < 0) {
            position = 0;
        }

        if(position >= len) {
            position = len -1;

            if(position < 0) {
                return str;
            }
        }

        wstring sub_str = str.substring(position+1, -1);

        memcpy(str + position, sub_str, sizeof(wchar_t)*(sub_str.length()+1));
        
        return str;
    }
    wstring& delete_range(wstring& str, int head, int tail) {
        int len = wcslen(str);

        if(len == 0) {
            return str;
        }
        
        if(head < 0) {
           head += len;
        }
        
        if(tail < 0) {
           tail += len + 1;
        }

        if(head < 0) {
            head = 0;
        }

        if(tail < 0) {
            return str;
        }

        if(tail >= len) {
            tail = len;
        }
        
        wstring sub_str = str.substring(tail, -1);

        memcpy(str + head, sub_str, sizeof(wchar_t)*(sub_str.length()+1));

        return str;
    }
    wstring printable(wstring& str)
    {
        int len = str.length();
        wstring result = new wchar_t[len*2+1];

        int n = 0;
        for(int i=0; i<len; i++) {
            wchar_t c = str[i];

            if((c >= 0 && c < ' ') 
                || c == 127)
            {
                result[n++] = '^';
                result[n++] = c + 'A' - 1;
            }
            else {
                result[n++] = c;
            }
        }

        result[n] = '\0'

        return result;
    }
    
    void replace(wstring& self, int index, wchar_t c) {
        int len = wcslen(self);

        if(wcscmp(self, wstring("")) == 0) {
            return;
        }
        
        if(index < 0) {
           index += len;
        }

        if(index >= len) {
            index = len-1;
        }

        if(index < 0) {
            index = 0;
        }
        
        self[index] = c;
    }
    
    wchar_t item(wstring& self, int index, wchar_t default_value)
    {
        int len = wcslen(self);

        if(wcscmp(self, wstring("")) == 0) {
            return default_value;
        }
        
        if(index < 0) {
           index += len;
        }

        if(index < 0 || index >= len) {
            return default_value;
        }
        
        
        return self[index];
    }
}

char* xstrncpy(char* des, char* src, int size)
{
    char* result;

    result = strncpy(des, src, size-1);
    des[size-1] = 0;

    return result;
}

char* xstrncat(char* des, char* str, int size)
{
    char* result;

    result = strncat(des, str, size-1);
    des[size-1] = 0;

    return result;
}

nregex regex(char* str, bool ignore_case, bool multiline, bool global, bool extended, bool dotall, bool anchored, bool dollar_endonly, bool ungreedy)
{
    var result = new regex_struct;

    const char* err;
    int erro_ofs;

    int options = PCRE_UTF8 | (ignore_case ? PCRE_CASELESS:0) | (multiline ? PCRE_MULTILINE : 0) | (extended ? PCRE_EXTENDED :0) | (dotall ? PCRE_DOTALL :0) | (dollar_endonly ? PCRE_DOLLAR_ENDONLY:0) | (ungreedy ? PCRE_UNGREEDY:0);

    result.regex = pcre_compile(str, options, &err, &erro_ofs, NULL);

    result.str = string(str);
    result.ignore_case = ignore_case;
    result.multiline = multiline;
    result.global = global;
    result.extended = extended;
    result.dotall = dotall;
    result.anchored = anchored;
    result.dollar_endonly = dollar_endonly;
    result.ungreedy;

    return result;
}
