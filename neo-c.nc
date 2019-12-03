#include "neo-c.h"

#include <string.h>
#include <stdlib.h>
#include <stdio.h>

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

impl char
{
    string substring(char* str, int head, int tail)
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

wstring operator+(wstring& left, wstring& right)
{
    int len1 = wcslen(left);
    int len2 = wcslen(right);

    wstring result = new wchar_t[len1 + len2 + 1];

    wcscpy(result, left);
    wcscat(result, right);

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
