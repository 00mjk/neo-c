int fun(int a, int b) {
    char* p = (char*)0;
    *p = 0;
    return a + b;
}

int main() {
    return fun(1, 2);
}
