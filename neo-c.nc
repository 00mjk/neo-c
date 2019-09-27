#include "neo-c.h"

extern "C"
{
#include <string.h>
#include <stdlib.h>
#include <stdio.h>

/// string ///
string operator+(char* left, char* right)
{
    int len1 = strlen(left);
    int len2 = strlen(right);

    string result = new char[len1 + len2 + 1];

    strcpy(result, left);
    strcat(result, right);

    result
}

string string(char* str)
{
    int len = strlen(str);

    string result = new char[len + 1];

    strcpy(result, str);

    result
}

void p(char* str)
{
    puts(str);
}

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

impl char
{
    string subString(string str, int head, int tail)
    {
        string result = new char[tail-head+1];
        memcpy(result, str + head, tail-head);
        result[tail-head] = '\0';

        return result;
    }
}

}
