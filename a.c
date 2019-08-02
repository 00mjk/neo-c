int atexit(void (*__fn)(void));

void fun2(void)
{
    puts("HEHEHE");
}

int main() {
    void (*fun)(void) = fun2;

    atexit(fun);
    return 0;
}
