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
    string subString(char* str, int head, int tail)
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

}
