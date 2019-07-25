#include "neo-c.h"
#include "neo-c-stdc.h"

typedef char*% string;

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

void assert(char* msg, bool exp) 
{
    printf(msg + "...");
    if(!exp) {
        puts("assertion failed");
        exit(2);
    }
    puts("OK");
}

struct vector<T> 
{
    T*% items;
    int len;
    int size;
}

impl vector<T> 
{
    initialize(void lambda(vector<T>*)? block) 
    {
        self.size = 16;
        self.len = 0;
        self.items = new T[self.size];

        if(block != null) {
            block(self);
        }
    }
    
    void push_back(vector<T>* self, T item) {
        if(self.len == self.size) {
            var new_size = self.size;
            var items = self.items;

            self.items = new T[new_size];

            memcpy((char*)self.items, (char*)items, 8*self.size);
            self.size = new_size;
        }

        self.items[self.len] = item;
        self.len++;
    }

    T item(vector<T>* self, int index) {
        self.items[index]
    }
    void each(vector<T>*  self, void lambda(T,int) block) {
        for(int i=0; i<self.len; i++) {
            block(self.items[i], i);
        };
    }

    template <R> vector<R>*% map(vector<T>* self, R lambda(T) block)
    {
        var result = new vector<R>.initialize(null);

        self.each {
            result.push_back(block(it));
        }

        result
    }
}

int GlobalVar = 2;
char* GlobalVar2 = "ABC";
const int GlobalConstantInt = 123;

extern int gGlobalVar;

int GlobalArray[3] = { 1, 2, 3 };

int GlobalArray2[] = { 1, 2, 3 };

char GlobalArray3[] = "ABC";

char GlobalArray4[4] = "ABC";

int main()
{
    if(1 == 1) {
        puts("TRUE");
    }
    else {
        puts("FALSE");
    }

    int fun()
    {
        puts("HELLO WORLD");
        1+1
    }

    int a = fun();

    assert("function result test", a == 2);

    int b = 1;

    void fun2(bool exp) 
    {
        assert("function param cast test", exp);
    }

    fun2(b);

    int n = 1+1;

    assert("local variable test", n == 2);

    n = 777

    assert("local variable test", n == 777);

    int m = n + 1;

    assert("local variable test", m == 778);

    int fun3(int x, int y)
    {
        x + y
    }

    int l = fun3(1, 2);

    assert("function result test", l == 3);

    int x = 4;

    if(x == 3) {
    }
    else if(x == 2) {
    }
    else if(x == 4) {
        x = 5;
    }
    else {
    }

    assert("if test", x == 5);

    int i = 1;

    assert("operator test", i > 0);

    void fun4(char* str) 
    {
        puts(str);
    }

    fun4("aaa");

    i = 0;
    while(i < 3) {
        puts("HO!");
        i++;
    }

    i = 123;
    assert("operator test2", i++ == 123 && i == 124);

    i = 123;
    assert("operator test3", i-- == 123 && i == 122);

    i = 123;
    assert("operator test4", ++i == 124 && i == 124);

    i = 124;
    assert("operator test5", --i == 123 && i == 123);

    struct OpTest 
    {
        int a;
        int b;
    }

    OpTest* obj = alloca OpTest;

    obj.a = 123;
    assert("operator test6", obj.a++ == 123);

    obj.a = 123;
    assert("operator test7", obj.a-- == 123 && obj.a == 122);

    obj.a = 123;
    assert("operator test8", ++obj.a == 124 && obj.a == 124);

    assert("operator test9", --obj.a == 123 && obj.a == 123);

    i = 2;
    i += 2;

    assert("operator test10", i == 4);

    int iii3;

    for(int i=0; i<3; i++) {
        puts("HO!");
    }

    for(int i=0; i<3; i++) {
        puts("HE!");
    }

    int aa = 4;
    int bb = 1;

    int lambda(int,int) fun = lambda(int x, int y):int {
        bb = 2;
        x + y + aa
    }

    assert("lambda test", fun(1,2) == 7 && bb == 2);

    int fun5(int lambda(int,int) block)
    {
        block(1,2)
    }

    int xxx = fun5(fun);

    assert("lambda test", xxx == 7);
    assert("lambda test2", bb == 2);

    int xa = if(false) {
        111
    }
    else {
        222
    }

    assert("if test", xa == 222);

    struct TestData 
    {
        int a;
        int b;
    }

    TestData* test11 = alloca TestData;
    test11.a = 123;
    test11.b = 234;

    assert("struct test", test11.a == 123 && test11.b == 234);

    void fun6(TestData data) 
    {
        assert("struct test2", data.a == 123 && data.b == 234);
    }

    //fun6(test11->*);

    int iii = 111;

    int* p = &iii;

    void fun7(int* value) 
    {
        assert("reffernce test", *value == 111);
    }

    fun7(p);

    int nn = 0;

    impl int {
        void times(int n, void lambda() block) 
        {
            for(int i=0; i<n; i++) {
                block();
            };
        }
    }

    3.times(lambda() {
        puts("HO!");
        nn++;
    })

    assert("lambda test1", nn == 3);

    nn = 0;
    3.times {
        puts("HE!");
        nn++;
    }

    assert("simple lambda param test", nn == 3);

    int xb = 3;

    int xmm = 1;

    int fun8(int lambda(int,int) block)
    {
        block(2,2)
    }

    int mm = fun8() {
        xmm = 9;
        it + it2 + xb
    }

    assert("simple lambda param test2", mm == 7 && xmm == 9);

    struct Data {
        int a;
        int b;
    }

    impl Data {
        initialize() {
            self.a = 111;
            self.b = 123;
        }
    }

    Data*% ya = new Data;

    Data*% xobj = ya.initialize();

    Data*% xobj2 = xobj;

    assert("std::move test", xobj2.a == 111);

    struct Data2 {
        Data*% a;
        int b;
    }

    impl Data2 {
        initialize() {
            self.a = new Data;

            self.a.a = 123;
            self.a.b = 234;

            self.b = 123;
        }
    }

    var yb = new Data2.initialize();

    assert("struct test", yb.b == 123 && yb.a.a == 123 && yb.a.b == 234);

    int nx = 123;

    string str = xasprintf("abc %d", nx);

    puts(str);

    struct Data3 {
        int a;
        int b;
    }

    struct Data4 {
        Data3 a;
        int b;
    }

    var za = new Data4;

    za.a.a = 123;

    assert("struct test X", za.a.a == 123);

    struct Data5 {
        int a;
        int b;
    }

    impl Data5 {
        initialize() {
            self.a = 111;
            self.b = 222;
        }
    }

    var zz = new Data5.initialize();

    var zz2 = clone zz;

    assert("struct test X2", zz2.a == 111 && zz2.b == 222);

    struct Data6 {
        Data5*% a;
        int b;
        string c;
    }

    impl Data6 {
        initialize() {
            self.a = new Data5;
            self.a.a = 111;
            self.a.b = 222;
            self.b = 333;
            self.c = new char[5];
        }
    }

    var zz3 = new Data6.initialize();

    var zz4 = clone zz3;

    assert("struct test X3", zz4.a.a == 111 && zz4.a.b == 222 && zz4.b == 333);
    assert("struct test X4", zz3.a.a == 111 && zz3.a.b == 222 && zz3.b == 333);

    var zz5 = new char[5];
    var zz6 = zz5;

    char* zz7 = zz6;

    void fun_test_borrow(char* aaa) 
    {
    }

    fun_test_borrow(zz6);

    string zz8 = "AAA" + "BBB"

    puts(zz8);

    assert("string test", strcmp("AAA" + "BBB", "AAABBB") == 0);

    struct Data10 {
        int a;
        int b;
    }

    struct Data11 {
        Data10*% a;
        int b;
    }

    new Data11.a = new Data10;

    printf("1 + 1 == %d\n", 1 + 1);
    printf("(%s)\n", "AAA" + "BBB");

    char* axy = "xyz";
    string str1 = new char[5];

    strcpy(str1, axy);

    printf("str1 %s\n", str1);

    str1[0] = 'X';

    printf("str[0] %c\n", str1[0]);

    int lambda(int,int) lll = lambda(int a, int b):int {
        a + b
    }

    assert("lambda test X", lll(1,2) == 3);

    struct GenericsTest <T, T2> {
        T a;
        T2 b;
        T lambda(T,T) c;
    }

    var gvar = new GenericsTest<int, char>;

    gvar.a = 111;
    gvar.b = 'c';
    gvar.c = lambda(int x, int y):int {
        x + y
    }

    assert("generics test", gvar.a == 111 && gvar.b == 'c' && gvar.c->(1, 2) == 3);

    var aaaa = "AAA" + "BBB";

    assert("operator test", strcmp(aaaa, "AAABBB") == 0);

    template <I> I method_generics_fun2(I a, I b)
    {
        a + b
    }

    assert("method generics test", method_generics_fun2(1, 2) == 3);

    assert("method generics test2", strcmp(method_generics_fun2("AAA", "BBB"), "AAABBB") == 0);
    assert("method generics test3", method_generics_fun2(2, 3) == 5);

    struct GenericsTest2<T> {
        T a;
        T b;
    }

    impl GenericsTest2<T> {
        T add(GenericsTest2<T>* self, T a, T b) {
            a + b
        }
    }

    var generics_test = new GenericsTest2<int>;

    assert("generics test", generics_test.add(1,2) == 3);

    struct MapTest2<T> {
        T a;
    }

    struct MapTest<T,T2> {
        T a;
        T2 b;
    }

    impl MapTest<T,T2> {
        template <R> MapTest2<R>* fun(MapTest<T,T2>* self, R a, int b)
        {
            var result = new MapTest2<R>;
            result.a = 1;
            result
        }
        
        template <R> R fun2(MapTest<T,T2>* self, R a, void lambda(R) block)
        {
            puts("AAA");
            1
        }
    }

    var map_test = new MapTest<int, int>;

    var aaa2 = map_test.fun2(1, lambda(int a):void {
            puts("BBB");
        }
    );

    assert("method generics test X2", aaa2 == 1);

    var aaa = map_test.fun(1,2);

    assert("method generics test X", aaa.a == 1);

    struct HeapTest2 {
        int a;
        int b;
    }

    struct HeapTest<T> {
        T*% a;
        int b;
        HeapTest2*% c;
    }

    impl HeapTest<T> {
        void initialize(HeapTest<T>* self)
        {
            self.a = new T[5];
        }

        template <R> HeapTest<R>*% map(HeapTest<T>* self, T data, R data2)
        {
            var result = new HeapTest<R>;

            result.initialize();

            snprintf(result.a, 5, "%d", data);

            result
        }
    }

    var ax = new HeapTest<int>;

    ax.initialize();

    var bx = ax.map(1, 'a');

    puts(bx.a);

    struct Hello<T>
    {
        T a;
    }

    impl Hello<T> {
        void loop(Hello<T>* self, void lambda() block)
        {
            for(int i=0; i < self.a; i++)
            {
                block();
            }
        }

        template <R> R test(Hello<T>* self, R lambda() block) 
        {
            self.a = 3;
            self.loop {
                puts("HO!");
            }
            block()
        }
    }

    struct Hello2<T>
    {
        T a;
    }

    impl Hello2<T> {
        void loop(Hello2<T>* self, void lambda() block)
        {
            for(int i=0; i < self.a; i++)
            {
                block();
            }
        }

        initialize()
        {
            self.a = 3;
        }

        template <R> Hello2<R>*% test(Hello2<T>* self, R lambda(T) block)
        {
            var result = new Hello2<R>.initialize();

            result.loop {
                puts("HO!");
            }

            block(string("aaa"));

            result
        }
    }

    var aaa3 = new Hello<int>;

    aaa3.test {
        1
    }

    var bb2 = new Hello2<char*%>;

    var cc = bb2.test {
        3
    }

    cc.loop {
        puts("HE!");
    }

    var v = new vector<int>.initialize(null);

    v.push_back(1);
    v.push_back(2);
    v.push_back(3);

    printf("%d\n", v.item(0));
    printf("%d\n", v.item(1));
    printf("%d\n", v.item(2));

    v.each {
        printf("%d --> %d\n", it2, it);
    }

    var v2 = new vector<int>.initialize(
        lambda(vector<int>* it) {
            it.push_back(111);
            it.push_back(222);
            it.push_back(333);
        }
    ) 

    v2.each {
        printf("%d --> %d\n", it2, it);
    }

    var v3 = new vector<int>.initialize {
        it.push_back(111);
        it.push_back(555);
        it.push_back(666);
    }

    v3.each {
        printf("%d --> %d\n", it2, it);
    }

    var vv4 = new vector<int>.initialize(null);

    vv4.push_back(1);
    vv4.push_back(2);
    vv4.push_back(3);

    printf("vv4 %d\n", vv4.item(0));
    printf("vv4 %d\n", vv4.item(1));
    printf("vv4 %d\n", vv4.item(2));

    vv4.each {
        printf("vv4 %d\n", it);
    }

    var vv5 = vv4.map(char*% lambda(int it) {
        var result = new char[256];
        snprintf(result, 256, "%d", it);
        result + "aaa"
    });

    printf("vv5 %s\n", vv5.item(0));
    printf("vv5 %s\n", vv5.item(1));
    printf("vv5 %s\n", vv5.item(2));

    vv5.each {
        printf("%s\n", it);
    }

    printf("vv5.len %d\n", vv5.len);

    var vvv4 = new vector<char*%>.initialize(null);

    vvv4.push_back(string("1"));
    vvv4.push_back(string("2"));
    vvv4.push_back(string("3"));

    var vvv5 = vvv4.map {
        atoi(it)
    }

    vvv5.each {
        printf("%d -- > %d\n", it2, it);
    }

    printf("vvv5.len %d\n", vvv5.len);

    var vv1 = new vector<int>.initialize(null);

    vv1.push_back(1);
    vv1.push_back(2);
    vv1.push_back(3);

    var vv2 = vv1.map {
        var result = new char[128];
        snprintf(result, 128, "%d", it);
        result
    }

    vv2.each {
        printf("%s\n", it);
    }

    var str3 = string("aaa");

    void fun9(string str) {
        str[1] = 'b';
        puts(str);
    }

    fun9(str3);

#define ABC 123

    assert("macro test", ABC == 123);

    assert("global var test", GlobalVar == 2);

    GlobalVar = 1;

    assert("global var test2", GlobalVar == 1);

    assert("global var test3", strcmp(GlobalVar2, "ABC") == 0);

    assert("global constant int", GlobalConstantInt == 123);

    const int const_a = 1;

    assert("local constant int", const_a == 1);

    void constant_test_fun(const int a) {
        assert("constant test", a == 1);
    }

    constant_test_fun(1);

    struct {
        int a;
        int b;
    } var_x;

    var_x.a = 1;
    var_x.b = 2;

    assert("anonymous struct test", var_x.a == 1 && var_x.b == 2);

    struct StructTest {
        struct {
            int a;
            int b;
        } B;

        int c;
        int d;
    }

    StructTest*% axz = new StructTest;

    axz.B.a = 1;
    axz.B.b = 2;
    axz.c = 3;
    axz.d = 4;

    assert("inner struct test", axz.B.a == 1 && axz.B.b == 2 && axz.c == 3 && axz.d == 4);

    union UnionTest {
        int a;
        long b;
    }

    UnionTest*% data = new UnionTest;

    data.a = 1;

    assert("union test", data.a == 1);
    
    data.b = 2;

    assert("union test2", data.b == 2);

    union UnionTest2 {
        struct {
            long a;
            long b;
        } a;
        long b;
        struct {
            long a;
            long b;
            long c;
        } c;
    }

    var data2 = new UnionTest2;

    data2.c.a = 1;
    data2.c.b = 2;
    data2.c.c = 3;

    assert("union test3", data2.c.a == 1 && data2.c.b == 2 && data2.c.c == 3);
    
    union {
        struct {
            int a;
            int b;
        } a;
        long b;
    } data3;

    data3.a.a = 1;
    data3.a.b = 2;

    assert("union test4", data3.a.a == 1 && data3.a.b == 2);
    
    struct UnionTest3 {
        union {
            long a;
            long b;
        } a;

        int b;
    }

    var data4 = new UnionTest3;

    data4.a.a = 1;
    data4.a.b = 2;

    data4.b = 3;

    assert("union test5", data4.a.a == 2 && data4.a.b == 2 && data4.b == 3);

    struct GenericsTest3 <T>
    {
        union {
            T a;
            T b;
        } a;
        
        T b;
    }

    var data5 = new GenericsTest3<long>;

    data5.a.a = 5;
    data5.b = 6;

    assert("union test6", data5.a.a == 5 && data5.b == 6);

    struct GenericsTest4 <T>
    {
        struct {
            T a;
            T b;
        } a;

        union {
            T a;
            T b;
        } b;
    }

    var data6 = new GenericsTest4<long>;

    data6.a.a = 111;
    data6.a.b = 222;
    data6.b.b = 666;

    assert("union test7", data6.a.a == 111 && data6.a.b == 222 && data6.b.a == 666);

    extern char* malloc(long size);
    extern void free(char* mem);

    char* mem = malloc(1);
    free(mem);

    assert("extern test2", gGlobalVar == 1);

    inline void inline_fun1() {
        puts("HELLO INLINE");
    }

    inline_fun1();

    inline int inline_fun2() {
        123
    }

    assert("inline function test", inline_fun2() == 123);

    inline void inline_fun3(int a, int b) {
        printf("a %d b %d\n", a, b);
    }

    inline_fun3(1, 2);

    inline int inline_fun4(int x, int y) 
    {
        x + y
    }

    assert("inline function test2", inline_fun4(2, 3) == 5);

    inline <T> T inline_fun5(T x, T y) 
    {
        x + y;

        T z = x + y;

        z
    }

    assert("inline function test3", inline_fun5(2, 3) == 5);

    struct StructTest2 <T>
    {
        T a;
        T b;
    }

    impl StructTest2 <T> {
        inline T fun(StructTest2<T>* self, T a, T b) {
            self.a = a;
            self.b = b

            T c = self.a + self.b

            c
        }
    }

    var data7 = new StructTest2<int>;

    assert("inline function test4", data7.fun(1,2) == 3 && data7.a == 1 && data7.b == 2);

    int aax = 2 >> 1;

    assert("operator test", aax == 1);

    int bxy = 2;

    bxy *= 2;

    assert("operator test2", bxy == 4);

    char* pxy = "ABC";

    pxy++;

    assert("operator test3", *pxy == 'B');

    int* pxyy = new int[128];

    void* pxz = (void*)pxyy;

    struct StructTest3 {
        int a;
        int b;
    }

    StructTest3 data8;

    data8.a = 1;
    data8.b = 2

    assert("struct test", data8.a == 1 && data8.b == 2);

    void funXYZ(StructTest3 data) 
    {
        assert("struct test", data8.a == 1 && data8.b == 2);
    }

    funXYZ(data8);

    StructTest3* data9 = new StructTest3;

    data9->a = 1;
    data9->b = 2;

    assert("struct test", data9->a == 1 && data9->b == 2);

    funXYZ(*data9);

    int funXYZ2() {
        if(true) {
            return 1;
        }
        
        0
    }

    assert("return test", funXYZ2() == 1);

    inline int inline_fun6(int x, int y) {
        if(false) {
            return x + y;
        }

        3
    }

    assert("inline fun6", inline_fun6(1, 2) == 3);

    inline int inline_fun7(int x, int y) {
        if(true) {
            return x + y;
        }

       return 0; 
    }

    assert("inline fun7", inline_fun7(1, 2) == 3);

    inline int inline_fun8(int x, int y) {
        if(false) {
            return x + y;
        }

       return 3; 
    }

    assert("inline fun8", inline_fun8(1, 2) == 3);

    inline int inline_fun9(int x, int y) {
        assert("inline inline fun8", inline_fun8(1, 2) == 3);

        if(false) {
            return x + y;
        }
        else {
            return 3; 
        }
    }

    assert("inline fun9", inline_fun9(1, 2) == 3);

    inline int inline_fun10(int x, int y) {
        inline_fun8(1, 2)
    }

    assert("inline fun10", inline_fun10(1, 2) == 3);
    void fun11(int*? self) {
        if(self == null) {
            return;
        }
    }

    fun11(null);

    struct StructTest4 {
        int a;
        int b;
    }

    impl StructTest4 {
        initialize() {
            self.a = 111;
            self.b = 123;
        }

        finalize() {
            assert("struct test13", self.a == 111 && self.b == 123);
            puts("calling finalize");
        }
    }

    var struct_var = new StructTest4.initialize();

    assert("struct test12", struct_var.a == 111 && struct_var.b == 123);

    typedef union { int a; long b; } UnionTest4;

    UnionTest4 aaa4;

    aaa4.a = 111;
    
    assert("typedef test13", aaa4.a == 111);

    const int gA = 111;

    assert("const test", gA == 111);

    unsigned int ua = 111;

    assert("unsigned int test", ua == 111);

    unsigned char uc = 255;

    printf("uc %u\n", uc);

    assert("unsigned char test", uc == 255);

    long long int along = 111;

    assert("long long int", along == 111);

    long int along2 = 111;

    assert("long int", along2 == 111);

    short int ashort = 111;

    assert("short int", ashort == 111);

    unsigned long long int along3 = 123;

    assert("unsigned long long int", along3 == 123);

    signed int asigned = 111;

    assert("signed", asigned == 111);

    signed int asigned2 = -111;

    assert("minus", asigned2 == -111);

    int funcXXX(void) {
        return 111;
    }

    assert("func(void)", funcXXX() == 111);

    struct StructTest5 {
        int a[123];
    }

    StructTest5 astruct1;

    int aaaray[123];

    int array_size_fun() {
        return 3;
    }

    int aarray2[array_size_fun()];

    aarray2[0] = 111;
    aarray2[1] = 222;
    aarray2[2] = 333;

    assert("dynamic array test", aarray2[0] == 111 && aarray2[1] == 222 && aarray2[2] == 333);

    int* intarray = new int[123];

    intarray[0] = 123;
    intarray[1] = 234;
    intarray[2] = 345;

    assert("new array test", intarray[0] == 123 && intarray[1] == 234 && intarray[2] == 345);

    int* intarray2 = alloca int[123];

    intarray2[0] = 123;
    intarray2[1] = 234;
    intarray2[2] = 345;

    assert("alloca array test", intarray2[0] == 123 && intarray2[1] == 234 && intarray2[2] == 345);

    assert("sizeof test", sizeof(int) == 4 && sizeof(char) == 1 && sizeof(long) == 8);

    int avalue, bvalue, cvalue;

    avalue = 111; 
    bvalue = 222;
    cvalue = 333;

    assert("avalue", avalue == 111 && bvalue == 222 && cvalue == 333);

    int *aptr, *bptr, *cptr;

    aptr = &avalue;
    bptr = &bvalue;
    cptr = &cvalue;

    assert("avalue", *aptr == 111 && *bptr == 222 && *cptr == 333);

    struct StructTest6 {
        int a;
        int b;
    }

    struct StructTest6 sxdata;

    sxdata.a = 111;
    sxdata.b = 222;

    assert("struct testX", sxdata.a == 111 && sxdata.b == 222);

    union UnionTest5 {
        int a;
        long b;
    }

    union UnionTest5 uxdata;

    uxdata.b = 222;

    assert("union testX", uxdata.b == 222);

    int funp(int a, int b) {
        return a + b;
    }

    int (*fp)(int, int) = funp;

    assert("function pointer test", fp(1,2) == 3);

    struct StructTest7 {
        int a;
        struct StructTest7* data;
    }

    struct StructTest7* struct_test_var = alloca StructTest7;

    struct_test_var.a = 111;

    struct_test_var.data = alloca StructTest7;

    struct_test_var.data.a = 222;

    assert("self-refference struct", struct_test_var.a == 111 && struct_test_var.data.a == 222);

    struct StructTest8;

    struct StructTest8* struct_test_var2;

    struct StructTest8 {
        int a;
        int b;
    }

    struct_test_var2 = alloca StructTest8;

    struct_test_var2.a = 111;
    struct_test_var2.b = 222;

    assert("undefined struct", struct_test_var2.a == 111 && struct_test_var2.b == 222);


    union UnionTest6;

    union UnionTest6* union_test_var;

    union UnionTest6 {
        int a;
        long b;
    }

    union_test_var = alloca UnionTest6;

    union_test_var.a = 111;

    assert("undefined union", union_test_var.a == 111);

    int aarray3[3] = { 1, 2, 3 };

    assert("aarray3 test", aarray3[0] == 1 && aarray3[1] == 2 && aarray3[2] == 3);

    char char_array[4] = "ABC";

    assert("char_array test", strcmp(char_array, "ABC") == 0);

    {
        int a = 111;

        assert("normal block test", a == 111);

        int b = 222;

        assert("normal block test", b == 222);
    }

    typedef int (*pFun)(int, int);

    pFun pfun = lambda(int a, int b):int {
        return a + b;
    }

    assert("typedef function pointer test", pfun(1,2) == 3);

    int aarray4[] = { 1, 2, 3 }

    assert("array initialize test", aarray4[0] == 1 && aarray4[1] == 2 && aarray4[2] == 3);

    char str4[] = "ABC";

    assert("array initialize test2", str4 != "ABC" && strcmp(str4, "ABC") == 0);

    printf("%d %d %d\n", GlobalArray[0], GlobalArray[1], GlobalArray[2]);

    assert("global array test", GlobalArray[0] == 1 && GlobalArray[1] == 2 && GlobalArray[2] == 3);

    assert("global array2 test", GlobalArray2[0] == 1 && GlobalArray2[1] == 2 && GlobalArray2[2] == 3);

    assert("global array3 test", strcmp(GlobalArray3, "ABC") == 0);

    assert("global array4 test", strcmp(GlobalArray4, "ABC") == 0);

    int%* aaadata = new int[3] {
        1, 2, 3
    }

    assert("new array initializer", aaadata[0] == 1 && aaadata[1] == 2 && aaadata[2] == 3);


    struct sStruct {
        int a;
        int b;
    };

    struct sStruct sssdata = {
        111, 222
    };

    assert("struct initializer", sssdata.a == 111 && sssdata.b == 222);

    sStruct%* sss2data = new sStruct {
        123, 1
    }

    assert("new struct initializer", sss2data.a == 123 && sss2data.b == 1);

    0
}

