#include <vector>
#include <string>
#include <stdlib.h>
#include <stdio.h>

int main()
{
    std::vector<int> aaa;

    aaa.push_back(1);
    aaa.push_back(2);
    aaa.push_back(3);
    aaa.push_back(3);
    aaa.push_back(3);
    aaa.push_back(3);
    aaa.push_back(3);
    aaa[5] = 5;

    printf("%d\n", aaa[aaa.size()-1]);

    exit(0);
}
