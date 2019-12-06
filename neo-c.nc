#include "neo-c.h"

#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include <wctype.h>

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

/// string ///
string string(char* str)
{
    int len = strlen(str);

    string result = new char[len + 1];

    strcpy(result, str);

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

    string substring(string& str, int head, int tail)
    {
        int len = strlen(str);

        if(head < 0) {
            head += len + 1;
        }
        if(tail < 0) {
            tail += len + 1;
        }

        if(head < 0) {
            head = 0;
        }

        if(tail >= len) {
            tail = len;
        }

        if(str == null || head >= tail) {
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
    string& delete(string& str, int position) {
        string sub_str = str.substring(position+1, -1);

        memcpy(str + position, sub_str, sub_str.length()+1);

        return str;
    }
    string& delete_range(string& str, int head, int tail) {
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
}

/// wstring ///
wstring wstring(char* str)
{
    int len = strlen(str);

    wstring wstr = new wchar_t[len + 1];

    int ret = mbstowcs(wstr, str, len+1);
    wstr[ret] = '\0';

    if(ret < 0) {
        wstr[0] = '\0';
    }

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
        int len = wcslen(str);

        if(head < 0) {
            head += len + 1;
        }
        if(tail < 0) {
            tail += len + 1;
        }

        if(head < 0) {
            head = 0;
        }

        if(tail >= len) {
            tail = len;
        }

        if(str == null || head >= tail) {
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

    string toUtf8String(wstring& self) 
    {
        int len = MB_LEN_MAX*(wcslen(self)+1);

        string result = new char[len];

        if(wcstombs(result, self, len) < 0) 
        {
            xstrncpy(result, "", len);
        }

        result
    }

    wstring substring(wstring& str, int head, int tail)
    {
        int len = wcslen(str);

        if(head < 0) {
            head += len + 1;
        }
        if(tail < 0) {
            tail += len + 1;
        }

        if(head < 0) {
            head = 0;
        }

        if(tail >= len) {
            tail = len;
        }

        if(str == null || head >= tail) {
            return wstring("");
        }

        wstring result = new wchar_t[tail-head+1];

        memcpy(result, str + head, sizeof(wchar_t)*(tail-head));
        result[tail-head] = '\0';

        return result;
    }

    int index(wstring& str, wchar_t* search_str, int default_value)
    {
        char* head = wcsstr(str, search_str);

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
        wstring sub_str = str.substring(position+1, -1);

        memcpy(str + position, sub_str, sizeof(wchar_t)*(sub_str.length()+1));

        return str;
    }
    wstring& delete_range(wstring& str, int head, int tail) {
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
