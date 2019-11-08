#include "neo-c.h"

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

enum EnumTest
{
    EnumA, EnumB
}

int GlobalVar = 2;
char* GlobalVar2 = "ABC";
const int GlobalConstantInt = 123;

extern int gGlobalVar;

int GlobalArray[3] = { 1, 2, 3 };

int GlobalArray2[] = { 1, 2, 3 };

char GlobalArray3[] = "ABC";

char GlobalArray4[4] = "ABC";

struct GlobalStruct {
    int a;
    int b;
};

struct GlobalStruct GlobalStructData = {
    123, 345
};

typedef int (*pFun)(int, int);

typedef int pfunXXX(int, int);

typedef enum { kTypedefEnumC, kTypedefEnumD } eEnumX;

typedef union { int a; long b; } UnionTest4;

struct unistdStruct 
{
    //char aaa[true?128:64];
    char _dummy_pkey[(__alignof__(void *) < sizeof(short) ? sizeof(short) : __alignof__(void *))];
    int _si_pad[128 / sizeof(int)];
};

typedef int garray[34];

typedef union sigval {
    int a;
    int b;
} sigval_t;

int sigqueue(pid_t __pid, int __signal, union sigval __value) __attribute__((annotate("introduced_in=" "23")));

enum
{
    _PC_LINK_MAX,

    _PC_MAX_CANON,

    _PC_MAX_INPUT,

    _PC_NAME_MAX,

    _PC_PATH_MAX,

    _PC_PIPE_BUF,

    _PC_CHOWN_RESTRICTED,

    _PC_NO_TRUNC,

    _PC_VDISABLE,

    _PC_SYNC_IO,

    _PC_ASYNC_IO,

    _PC_PRIO_IO,

    _PC_SOCK_MAXBUF,

    _PC_FILESIZEBITS,

    _PC_REC_INCR_XFER_SIZE,

    _PC_REC_MAX_XFER_SIZE,

    _PC_REC_MIN_XFER_SIZE,

    _PC_REC_XFER_ALIGN,

    _PC_ALLOC_SIZE_MIN,

    _PC_SYMLINK_MAX,

    _PC_2_SYMLINKS

  };

enum
  {
    _SC_ARG_MAX,

    _SC_CHILD_MAX,

    _SC_CLK_TCK,

    _SC_NGROUPS_MAX,

    _SC_OPEN_MAX,

    _SC_STREAM_MAX,

    _SC_TZNAME_MAX,

    _SC_JOB_CONTROL,

    _SC_SAVED_IDS,

    _SC_REALTIME_SIGNALS,

    _SC_PRIORITY_SCHEDULING,

    _SC_TIMERS,

    _SC_ASYNCHRONOUS_IO,

    _SC_PRIORITIZED_IO,

    _SC_SYNCHRONIZED_IO,

    _SC_FSYNC,

    _SC_MAPPED_FILES,

    _SC_MEMLOCK,

    _SC_MEMLOCK_RANGE,

    _SC_MEMORY_PROTECTION,

    _SC_MESSAGE_PASSING,

    _SC_SEMAPHORES,

    _SC_SHARED_MEMORY_OBJECTS,

    _SC_AIO_LISTIO_MAX,

    _SC_AIO_MAX,

    _SC_AIO_PRIO_DELTA_MAX,

    _SC_DELAYTIMER_MAX,

    _SC_MQ_OPEN_MAX,

    _SC_MQ_PRIO_MAX,

    _SC_VERSION,

    _SC_PAGESIZE,


    _SC_RTSIG_MAX,

    _SC_SEM_NSEMS_MAX,

    _SC_SEM_VALUE_MAX,

    _SC_SIGQUEUE_MAX,

    _SC_TIMER_MAX,


    _SC_BC_BASE_MAX,

    _SC_BC_DIM_MAX,

    _SC_BC_SCALE_MAX,

    _SC_BC_STRING_MAX,

    _SC_COLL_WEIGHTS_MAX,

    _SC_EQUIV_CLASS_MAX,

    _SC_EXPR_NEST_MAX,

    _SC_LINE_MAX,

    _SC_RE_DUP_MAX,

    _SC_CHARCLASS_NAME_MAX,


    _SC_2_VERSION,

    _SC_2_C_BIND,

    _SC_2_C_DEV,

    _SC_2_FORT_DEV,

    _SC_2_FORT_RUN,

    _SC_2_SW_DEV,

    _SC_2_LOCALEDEF,


    _SC_PII,

    _SC_PII_XTI,

    _SC_PII_SOCKET,

    _SC_PII_INTERNET,

    _SC_PII_OSI,

    _SC_POLL,

    _SC_SELECT,

    _SC_UIO_MAXIOV,

    _SC_IOV_MAX = _SC_UIO_MAXIOV,

    _SC_PII_INTERNET_STREAM,

    _SC_PII_INTERNET_DGRAM,

    _SC_PII_OSI_COTS,

    _SC_PII_OSI_CLTS,

    _SC_PII_OSI_M,

    _SC_T_IOV_MAX,


    _SC_THREADS,

    _SC_THREAD_SAFE_FUNCTIONS,

    _SC_GETGR_R_SIZE_MAX,

    _SC_GETPW_R_SIZE_MAX,

    _SC_LOGIN_NAME_MAX,

    _SC_TTY_NAME_MAX,

    _SC_THREAD_DESTRUCTOR_ITERATIONS,

    _SC_THREAD_KEYS_MAX,

    _SC_THREAD_STACK_MIN,

    _SC_THREAD_THREADS_MAX,

    _SC_THREAD_ATTR_STACKADDR,

    _SC_THREAD_ATTR_STACKSIZE,

    _SC_THREAD_PRIORITY_SCHEDULING,

    _SC_THREAD_PRIO_INHERIT,

    _SC_THREAD_PRIO_PROTECT,

    _SC_THREAD_PROCESS_SHARED,


    _SC_NPROCESSORS_CONF,

    _SC_NPROCESSORS_ONLN,

    _SC_PHYS_PAGES,

    _SC_AVPHYS_PAGES,

    _SC_ATEXIT_MAX,

    _SC_PASS_MAX,


    _SC_XOPEN_VERSION,

    _SC_XOPEN_XCU_VERSION,

    _SC_XOPEN_UNIX,

    _SC_XOPEN_CRYPT,

    _SC_XOPEN_ENH_I18N,

    _SC_XOPEN_SHM,


    _SC_2_CHAR_TERM,

    _SC_2_C_VERSION,

    _SC_2_UPE,


    _SC_XOPEN_XPG2,

    _SC_XOPEN_XPG3,

    _SC_XOPEN_XPG4,


    _SC_CHAR_BIT,

    _SC_CHAR_MAX,

    _SC_CHAR_MIN,

    _SC_INT_MAX,

    _SC_INT_MIN,

    _SC_LONG_BIT,

    _SC_WORD_BIT,

    _SC_MB_LEN_MAX,

    _SC_NZERO,

    _SC_SSIZE_MAX,

    _SC_SCHAR_MAX,

    _SC_SCHAR_MIN,

    _SC_SHRT_MAX,

    _SC_SHRT_MIN,

    _SC_UCHAR_MAX,

    _SC_UINT_MAX,

    _SC_ULONG_MAX,

    _SC_USHRT_MAX,


    _SC_NL_ARGMAX,

    _SC_NL_LANGMAX,

    _SC_NL_MSGMAX,

    _SC_NL_NMAX,

    _SC_NL_SETMAX,

    _SC_NL_TEXTMAX,


    _SC_XBS5_ILP32_OFF32,

    _SC_XBS5_ILP32_OFFBIG,

    _SC_XBS5_LP64_OFF64,

    _SC_XBS5_LPBIG_OFFBIG,


    _SC_XOPEN_LEGACY,

    _SC_XOPEN_REALTIME,

    _SC_XOPEN_REALTIME_THREADS,


    _SC_ADVISORY_INFO,

    _SC_BARRIERS,

    _SC_BASE,

    _SC_C_LANG_SUPPORT,

    _SC_C_LANG_SUPPORT_R,

    _SC_CLOCK_SELECTION,

    _SC_CPUTIME,

    _SC_THREAD_CPUTIME,

    _SC_DEVICE_IO,

    _SC_DEVICE_SPECIFIC,

    _SC_DEVICE_SPECIFIC_R,

    _SC_FD_MGMT,

    _SC_FIFO,

    _SC_PIPE,

    _SC_FILE_ATTRIBUTES,

    _SC_FILE_LOCKING,

    _SC_FILE_SYSTEM,

    _SC_MONOTONIC_CLOCK,

    _SC_MULTI_PROCESS,

    _SC_SINGLE_PROCESS,

    _SC_NETWORKING,

    _SC_READER_WRITER_LOCKS,

    _SC_SPIN_LOCKS,

    _SC_REGEXP,

    _SC_REGEX_VERSION,

    _SC_SHELL,

    _SC_SIGNALS,

    _SC_SPAWN,

    _SC_SPORADIC_SERVER,

    _SC_THREAD_SPORADIC_SERVER,

    _SC_SYSTEM_DATABASE,

    _SC_SYSTEM_DATABASE_R,

    _SC_TIMEOUTS,

    _SC_TYPED_MEMORY_OBJECTS,

    _SC_USER_GROUPS,

    _SC_USER_GROUPS_R,

    _SC_2_PBS,

    _SC_2_PBS_ACCOUNTING,

    _SC_2_PBS_LOCATE,

    _SC_2_PBS_MESSAGE,

    _SC_2_PBS_TRACK,

    _SC_SYMLOOP_MAX,

    _SC_STREAMS,

    _SC_2_PBS_CHECKPOINT,


    _SC_V6_ILP32_OFF32,

    _SC_V6_ILP32_OFFBIG,

    _SC_V6_LP64_OFF64,

    _SC_V6_LPBIG_OFFBIG,


    _SC_HOST_NAME_MAX,

    _SC_TRACE,

    _SC_TRACE_EVENT_FILTER,

    _SC_TRACE_INHERIT,

    _SC_TRACE_LOG,


    _SC_LEVEL1_ICACHE_SIZE,

    _SC_LEVEL1_ICACHE_ASSOC,

    _SC_LEVEL1_ICACHE_LINESIZE,

    _SC_LEVEL1_DCACHE_SIZE,

    _SC_LEVEL1_DCACHE_ASSOC,

    _SC_LEVEL1_DCACHE_LINESIZE,

    _SC_LEVEL2_CACHE_SIZE,

    _SC_LEVEL2_CACHE_ASSOC,

    _SC_LEVEL2_CACHE_LINESIZE,

    _SC_LEVEL3_CACHE_SIZE,

    _SC_LEVEL3_CACHE_ASSOC,

    _SC_LEVEL3_CACHE_LINESIZE,

    _SC_LEVEL4_CACHE_SIZE,

    _SC_LEVEL4_CACHE_ASSOC,

    _SC_LEVEL4_CACHE_LINESIZE,

    _SC_IPV6 = _SC_LEVEL1_ICACHE_SIZE + 50,

    _SC_RAW_SOCKETS,


    _SC_V7_ILP32_OFF32,

    _SC_V7_ILP32_OFFBIG,

    _SC_V7_LP64_OFF64,

    _SC_V7_LPBIG_OFFBIG,


    _SC_SS_REPL_MAX,


    _SC_TRACE_EVENT_NAME_MAX,

    _SC_TRACE_NAME_MAX,

    _SC_TRACE_SYS_MAX,

    _SC_TRACE_USER_EVENT_MAX,


    _SC_XOPEN_STREAMS,


    _SC_THREAD_ROBUST_PRIO_INHERIT,

    _SC_THREAD_ROBUST_PRIO_PROTECT

  };


void unsupported_function();

int main()
{
/*
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

    printf("aaaa\n");

    int a = fun();

    xassert("function result test", a == 2);

    int b = 1;

    void fun2(bool exp) 
    {
        xassert("function param cast test", exp);
    }

    fun2(b);

    int n = 1+1;

    xassert("local variable test", n == 2);

    n = 777

    xassert("local variable test", n == 777);

    int m = n + 1;

    xassert("local variable test", m == 778);

    int fun3(int x, int y)
    {
        x + y
    }

    int l = fun3(1, 2);

    xassert("function result test", l == 3);

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

    xassert("if test", x == 5);

    int i = 1;

    xassert("operator test", i > 0);

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
    xassert("operator test2", i++ == 123 && i == 124);

    i = 123;
    xassert("operator test3", i-- == 123 && i == 122);

    i = 123;
    xassert("operator test4", ++i == 124 && i == 124);

    i = 124;
    xassert("operator test5", --i == 123 && i == 123);

    struct OpTest 
    {
        int a;
        int b;
    };

    OpTest* obj = alloca OpTest;

    obj.a = 123;
    xassert("operator test6", obj.a++ == 123);

    obj.a = 123;
    xassert("operator test7", obj.a-- == 123 && obj.a == 122);

    obj.a = 123;
    xassert("operator test8", ++obj.a == 124 && obj.a == 124);

    xassert("operator test9", --obj.a == 123 && obj.a == 123);

    i = 2;
    i += 2;

    xassert("operator test10", i == 4);

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

    xassert("lambda test", fun(1,2) == 7 && bb == 2);

    int fun5(int lambda(int,int) block)
    {
        block(1,2)
    }

    int xxx = fun5(fun);

    xassert("lambda test", xxx == 7);
    xassert("lambda test2", bb == 2);

    int xa = if(false) {
        111
    }
    else {
        222
    }

    xassert("if test", xa == 222);

    struct TestData 
    {
        int a;
        int b;
    };

    TestData* test11 = alloca TestData;
    test11.a = 123;
    test11.b = 234;

    xassert("struct test", test11.a == 123 && test11.b == 234);

    void fun6(TestData data) 
    {
        xassert("struct test2", data.a == 123 && data.b == 234);
    }

    fun6(*test11);

    int iii = 111;

    int* p = &iii;

    void fun7(int* value) 
    {
        xassert("reffernce test", *value == 111);
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

    xassert("lambda test1", nn == 3);

    nn = 0;
    3.times {
        puts("HE!");
        nn++;
    }

    xassert("simple lambda param test", nn == 3);

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

    xassert("simple lambda param test2", mm == 7 && xmm == 9);

    struct Data {
        int a;
        int b;
    };

    impl Data {
        initialize() {
            self.a = 111;
            self.b = 123;
        }
    }

    Data*% ya = new Data;

    Data*% xobj = ya.initialize();

    Data*% xobj2 = xobj;

    xassert("std::move test", xobj2.a == 111);

    struct Data2 {
        Data* a;
        int b;
    };

    impl Data2 {
        initialize() {
            self.a = borrow new Data;

            self.a.a = 123;
            self.a.b = 234;

            self.b = 123;
        }
        finalize() {
            delete self.a;
        }
    }

    var yb = new Data2.initialize();

    xassert("struct test", yb.b == 123 && yb.a.a == 123 && yb.a.b == 234);

    int nx = 123;

    string str = xasprintf("abc %d", nx);

    puts(str);

    struct Data3 {
        int a;
        int b;
    };

    struct Data4 {
        Data3 a;
        int b;
    };

    var za = new Data4;

    za.a.a = 123;

    xassert("struct test X", za.a.a == 123);

    struct Data10 {
        int a;
        int b;
    };

    struct Data11 {
        Data10* a;
        int b;
    };

    impl Data11 {
        finalize() {
            delete self.a;
        }
    }

    new Data11.a = borrow new Data10;

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

    xassert("lambda test X", lll(1,2) == 3);

    struct GenericsTest <T, T2> {
        T a;
        T2 b;
        T lambda(T,T) c;
    };

    var gvar = new GenericsTest<int, char>;

    gvar.a = 111;
    gvar.b = 'c';
    gvar.c = lambda(int x, int y):int {
        x + y
    }

    xassert("generics test", gvar.a == 111 && gvar.b == 'c' && gvar.c->(1, 2) == 3);

    var aaaa = "AAA" + "BBB";

    xassert("operator test", strcmp(aaaa, "AAABBB") == 0);

    template <I> I method_generics_fun2(I a, I b)
    {
        a + b
    }

    xassert("method generics test", method_generics_fun2(1, 2) == 3);

    xassert("method generics test2", strcmp(method_generics_fun2(string("AAA"), string("BBB")), "AAABBB") == 0);

    xassert("method generics test3", method_generics_fun2(2, 3) == 5);

    struct GenericsTest2<T> {
        T a;
        T b;
    };

    impl GenericsTest2<T> {
        T add(GenericsTest2<T>* self, T a, T b) {
            a + b
        }
    }

    var generics_test = new GenericsTest2<int>;

    xassert("generics test", generics_test.add(1,2) == 3);

    struct MapTest2<T> {
        T a;
    };

    struct MapTest<T,T2> {
        T a;
        T2 b;
    };

    impl MapTest<T,T2> {
        template <R> MapTest2<R>%* fun(MapTest<T,T2>* self, R a, int b)
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

    xassert("method generics test X2", aaa2 == 1);

    var aaa = map_test.fun(1,2);

    xassert("method generics test X", aaa.a == 1);

    struct HeapTest2 {
        int a;
        int b;
    };

    struct HeapTest<T> {
        T&* a;
        int b;
        HeapTest2* c;
    };

    impl HeapTest<T> {
        initialize()
        {
            self.a = borrow new T[5];
        }
        finalize()
        {
            delete self.a;
            delete self.c;
        }

        template <R> HeapTest<R>*% map(HeapTest<T>* self, T data, R data2)
        {
            var result = new HeapTest<R>.initialize();

            snprintf(result.a, 5, "%d", data);

            result
        }
    }

    var ax = new HeapTest<int>.initialize();

    var bx = ax.map(1, 'a');

    puts(bx.a);

    struct Hello<T>
    {
        T a;
    };

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
        T& a;
    };

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

        finalize() {
            if(isheap(T)) {
                delete self.a;
            }
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
        printf("it %p\n", it);
        3
    }

    cc.loop {
        puts("HE!");
    }

    var v = new vector<int>.initialize();

    v.push_back(1);
    v.push_back(2);
    v.push_back(3);

    printf("%d\n", v.item(0, -1));
    printf("%d\n", v.item(1, -1));
    printf("%d\n", v.item(2, -1));

    v.each {
        printf("%d --> %d\n", it2, it);
    }

    var v2 = new vector<int>.initialize();

    v2.push_back(111);
    v2.push_back(222);
    v2.push_back(333);

    v2.each {
        printf("%d --> %d\n", it2, it);
    }

    var v3 = new vector<int>.initialize();
    v3.push_back(111);
    v3.push_back(555);
    v3.push_back(666);

    v3.each {
        printf("%d --> %d\n", it2, it);
    }

    var vvv4 = new vector<char*%>.initialize();

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

    var vv1 = new vector<int>.initialize();

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

    xassert("macro test", ABC == 123);

    xassert("global var test", GlobalVar == 2);

    GlobalVar = 1;

    xassert("global var test2", GlobalVar == 1);

    xassert("global var test3", strcmp(GlobalVar2, "ABC") == 0);

    xassert("global constant int", GlobalConstantInt == 123);

    struct {
        int a;
        int b;
    } var_x;

    var_x.a = 1;
    var_x.b = 2;

    xassert("anonymous struct test", var_x.a == 1 && var_x.b == 2);

    struct StructTest {
        struct {
            int a;
            int b;
        } B;

        int c;
        int d;
    };

    StructTest*% axz = new StructTest;

    axz.B.a = 1;
    axz.B.b = 2;
    axz.c = 3;
    axz.d = 4;

    xassert("inner struct test", axz.B.a == 1 && axz.B.b == 2 && axz.c == 3 && axz.d == 4);

    union UnionTest {
        int a;
        long b;
    };

    UnionTest*% data = new UnionTest;

    data.a = 1;

    xassert("union test", data.a == 1);
    
    data.b = 2;

    xassert("union test2", data.b == 2);

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
    };

    var data2 = new UnionTest2;

    data2.c.a = 1;
    data2.c.b = 2;
    data2.c.c = 3;

    xassert("union test3", data2.c.a == 1 && data2.c.b == 2 && data2.c.c == 3);
    
    union {
        struct {
            int a;
            int b;
        } a;
        long b;
    } data3;

    data3.a.a = 1;
    data3.a.b = 2;

    xassert("union test4", data3.a.a == 1 && data3.a.b == 2);
    
    struct UnionTest3 {
        union {
            long a;
            long b;
        } a;

        int b;
    };

    var data4 = new UnionTest3;

    data4.a.a = 1;
    data4.a.b = 2;

    data4.b = 3;

    xassert("union test5", data4.a.a == 2 && data4.a.b == 2 && data4.b == 3);

    struct GenericsTest3 <T>
    {
        union {
            int a;
            long b;
        } a;
        T b;
    };

    var data5 = new GenericsTest3<long>;

    data5.a.a = 5;
    data5.b = 6;

    xassert("union test6", data5.a.a == 5 && data5.b == 6);
    xassert("union test6", data5.a.a == 5 && data5.b == 6);

    struct GenericsTest4 <T>
    {
        struct {
            int a;
            int b;
        } a;

        union {
            int a;
            int b; 
        } b;
    };

    var data6 = new GenericsTest4<long>;

    data6.a.a = 111;
    data6.a.b = 222;
    data6.b.b = 666;

    xassert("union test7", data6.a.a == 111 && data6.a.b == 222 && data6.b.a == 666);

    xassert("extern test2", gGlobalVar == 1);

    inline void inline_fun1() {
        puts("HELLO INLINE");
    }

    inline_fun1();

    inline int inline_fun2() {
        123
    }

    xassert("inline function test", inline_fun2() == 123);

    inline void inline_fun3(int a, int b) {
        printf("a %d b %d\n", a, b);
    }

    inline_fun3(1, 2);

    inline int inline_fun4(int x, int y) 
    {
        x + y
    }

    xassert("inline function test2", inline_fun4(2, 3) == 5);

    struct StructTest2 <T>
    {
        T a;
        T b;
    };

    impl StructTest2 <T> {
        inline T fun(StructTest2<T>* self, T a, T b) {
            self.a = a;
            self.b = b

            T c = self.a + self.b

            c
        }
    }

    var data7 = new StructTest2<int>;

    xassert("inline function test4", data7.fun(1,2) == 3 && data7.a == 1 && data7.b == 2);

    int aax = 2 >> 1;

    xassert("operator test", aax == 1);

    int bxy = 2;

    bxy *= 2;

    xassert("operator test2", bxy == 4);

    char* pxy = "ABC";

    pxy++;

    xassert("operator test3", *pxy == 'B');

    int* pxyy = new int[128];

    void* pxz = (void*)pxyy;


    int funXYZ2() {
        if(true) {
            return 1;
        }
        
        0
    }

    xassert("return test", funXYZ2() == 1);

    inline int inline_fun6(int x, int y) {
        if(false) {
            return x + y;
        }

        3
    }

    xassert("inline fun6", inline_fun6(1, 2) == 3);

    inline int inline_fun7(int x, int y) {
        if(true) {
            return x + y;
        }

       return 0; 
    }

    xassert("inline fun7", inline_fun7(1, 2) == 3);

    inline int inline_fun8(int x, int y) {
        if(false) {
            return x + y;
        }

       return 3; 
    }

    xassert("inline fun8", inline_fun8(1, 2) == 3);

    inline int inline_fun9(int x, int y) {
        xassert("inline inline fun8", inline_fun8(1, 2) == 3);

        if(false) {
            return x + y;
        }
        else {
            return 3; 
        }
    }

    xassert("inline fun9", inline_fun9(1, 2) == 3);

    inline int inline_fun10(int x, int y) {
        inline_fun8(1, 2)
    }

    xassert("inline fun10", inline_fun10(1, 2) == 3);
    void fun11(int*? self) {
        if(self == null) {
            return;
        }
    }

    fun11(null);

    struct StructTest4 {
        int a;
        int b;
    };

    impl StructTest4 {
        initialize() {
            self.a = 111;
            self.b = 123;
        }

        finalize() {
            xassert("struct test13", self.a == 111 && self.b == 123);
            puts("calling finalize");
        }
    }

    var struct_var = new StructTest4.initialize();

    xassert("struct test12", struct_var.a == 111 && struct_var.b == 123);

    UnionTest4 aaa4;

    aaa4.a = 111;
    
    xassert("typedef test13", aaa4.a == 111);

    const int gA = 111;

    xassert("const test", gA == 111);

    unsigned int ua = 111;

    xassert("unsigned int test", ua == 111);

    unsigned char uc = 255;

    printf("uc %u\n", uc);

    xassert("unsigned char test", uc == 255);

    long long int along = 111;

    xassert("long long int", along == 111);

    long int along2 = 111;

    xassert("long int", along2 == 111);

    short int ashort = 111;

    xassert("short int", ashort == 111);

    unsigned long long int along3 = 123;

    xassert("unsigned long long int", along3 == 123);

    signed int asigned = 111;

    xassert("signed", asigned == 111);

    signed int asigned2 = -111;

    xassert("minus", asigned2 == -111);

    int funcXXX(void) {
        return 111;
    }

    xassert("func(void)", funcXXX() == 111);

    struct StructTest5 {
        int a[123];
    };

    StructTest5 astruct1;

    int aaaray[123];

    int array_size_fun() {
        return 3;
    }

    int aarray2[array_size_fun()];

    aarray2[0] = 111;
    aarray2[1] = 222;
    aarray2[2] = 333;

    xassert("dynamic array test", aarray2[0] == 111 && aarray2[1] == 222 && aarray2[2] == 333);

    int%* intarray = new int[123];

    intarray[0] = 123;
    intarray[1] = 234;
    intarray[2] = 345;

    xassert("new array test", intarray[0] == 123 && intarray[1] == 234 && intarray[2] == 345);

    int* intarray2 = alloca int[123];

    intarray2[0] = 123;
    intarray2[1] = 234;
    intarray2[2] = 345;

    xassert("alloca array test", intarray2[0] == 123 && intarray2[1] == 234 && intarray2[2] == 345);

    xassert("sizeof test", sizeof(int) == 4 && sizeof(char) == 1 && sizeof(long) == 8);

    int avalue, bvalue, cvalue;

    avalue = 111; 
    bvalue = 222;
    cvalue = 333;

    xassert("avalue", avalue == 111 && bvalue == 222 && cvalue == 333);

    int *aptr, *bptr, *cptr;

    aptr = &avalue;
    bptr = &bvalue;
    cptr = &cvalue;

    xassert("avalue", *aptr == 111 && *bptr == 222 && *cptr == 333);

    struct StructTest6 {
        int a;
        int b;
    };

    struct StructTest6 sxdata;

    sxdata.a = 111;
    sxdata.b = 222;

    xassert("struct testX", sxdata.a == 111 && sxdata.b == 222);

    union UnionTest5 {
        int a;
        long b;
    };

    union UnionTest5 uxdata;

    uxdata.b = 222;

    xassert("union testX", uxdata.b == 222);

    int funp(int a, int b) {
        return a + b;
    }

    int (*fp)(int, int) = funp;

    xassert("function pointer test", fp(1,2) == 3);

    struct StructTest7 {
        int a;
        struct StructTest7* data;
    };

    struct StructTest7* struct_test_var = alloca StructTest7;

    struct_test_var.a = 111;

    struct_test_var.data = alloca StructTest7;

    struct_test_var.data.a = 222;

    xassert("self-refference struct", struct_test_var.a == 111 && struct_test_var.data.a == 222);

    struct StructTest8;

    struct StructTest8* struct_test_var2;

    struct StructTest8 {
        int a;
        int b;
    };

    struct_test_var2 = alloca StructTest8;

    struct_test_var2.a = 111;
    struct_test_var2.b = 222;

    xassert("undefined struct", struct_test_var2.a == 111 && struct_test_var2.b == 222);


    union UnionTest6;

    union UnionTest6* union_test_var;

    union UnionTest6 {
        int a;
        long b;
    };

    union_test_var = alloca UnionTest6;

    union_test_var.a = 111;

    xassert("undefined union", union_test_var.a == 111);

    int aarray3[3] = { 1, 2, 3 };

    xassert("aarray3 test", aarray3[0] == 1 && aarray3[1] == 2 && aarray3[2] == 3);

    char char_array[4] = "ABC";

    xassert("char_array test", strcmp(char_array, "ABC") == 0);

    {
        int a = 111;

        xassert("normal block test", a == 111);

        int b = 222;

        xassert("normal block test", b == 222);
    }

    pFun pfun = lambda(int a, int b):int {
        return a + b;
    }

    xassert("typedef function pointer test", pfun(1,2) == 3);

    int aarray4[] = { 1, 2, 3 }

    xassert("array initialize test", aarray4[0] == 1 && aarray4[1] == 2 && aarray4[2] == 3);

    char str4[] = "ABC";

    xassert("array initialize test2", str4 != "ABC" && strcmp(str4, "ABC") == 0);

    printf("%d %d %d\n", GlobalArray[0], GlobalArray[1], GlobalArray[2]);

    xassert("global array test", GlobalArray[0] == 1 && GlobalArray[1] == 2 && GlobalArray[2] == 3);

    xassert("global array2 test", GlobalArray2[0] == 1 && GlobalArray2[1] == 2 && GlobalArray2[2] == 3);

    xassert("global array3 test", strcmp(GlobalArray3, "ABC") == 0);

    xassert("global array4 test", strcmp(GlobalArray4, "ABC") == 0);

    int%* aaadata = new int[3] {
        1, 2, 3
    }

    xassert("new array initializer", aaadata[0] == 1 && aaadata[1] == 2 && aaadata[2] == 3);


    struct sStruct {
        int a;
        int b;
    };

    struct sStruct sssdata = {
        111, 222
    };

    xassert("struct initializer", sssdata.a == 111 && sssdata.b == 222);

    sStruct%* sss2data = new sStruct {
        123, 1
    }


    xassert("new struct initializer", sss2data.a == 123 && sss2data.b == 1);

    xassert("global struct data", GlobalStructData.a == 123 && GlobalStructData.b == 345);

    enum { kA, kB };

    xassert("enum test", kA == 0 && kB == 1);

    enum { kA2, kB2 = 999, kC2 };

    xassert("enum test", kA2 == 0 && kB2 == 999 && kC2 == 1000);

    enum eEnum { kA3, kB3, kC3 };

    enum eEnum aenum = kA3;

    xassert("enum test", aenum == kA3);

    enum { kA4, kB4 = 999, kC4 = 1000 + 1 , kD4 = kC4 + 1};

    xassert("enum test X", kA4 == 0 && kB4 == 999 && kC4 == 1001 && kD4 == 1002);

    int aaaa2 = 1;

    aaaa2++;

    xassert("aaaa", aaaa2 == 2);

    int switcha = 2;

    switch(switcha) {
        case 1:
            puts("1");
            break;

        case 2:
        case 4:
        case 5:
            xassert("switch test", true);
            break;

        default:
            puts("3");
            break;
    }

    goto label1;

label1:
    xassert("label test", true);

    int axxx[10];

    axxx[0] = 123;

    xassert("array test", axxx[0] == 123);

    int* bxxx = new int[3];

    bxxx[0] = 123;

    xassert("array test", bxxx[0] == 123);

    struct StructTest9 {
       int a[3+1+sizeof(int)];
       double aaa;
    };

    StructTest9* data10 = new StructTest9;

    data10.a[0] = 123;

    xassert("array test", data10.a[0] == 123);

    int axyxy = (1 + 1) * 2;

    xassert("test", axyxy == 4);

    signed aaaaaaaaaa = 11111;
    void pfun_test(void) {
        puts("XXX");
    }

    void (*pfunX)(void) = pfun_test;

    pfunX();

    int pfun_test2(int aaa, int bbb)
    {
        return aaa + bbb;
    }

    pfunXXX pfunX2 = pfun_test2;

    xassert("typedef function pointer", pfunX2(111, 222) == 333);

    enum { kTypedefEnumA, kTypedefEnumB } enum_value = kTypedefEnumA;

    xassert("anonymous enum test", enum_value == kTypedefEnumA);

    eEnumX enum_value2 = kTypedefEnumC;
    xassert("typedef enum test", enum_value2 == kTypedefEnumC);

    struct AAAAAAA {
        int a;
        int b;
    } abcabc;

    abcabc.a = 111;
    abcabc.b = 222;

    xassert("struct test", abcabc.a == 111 && abcabc.b == 222);

    union BBBBBBBBB {
        int a;
        int b;
    } abcabc2;

    abcabc2.a = 111;
    abcabc2.b = 222;

    xassert("union test", abcabc2.a == 222 && abcabc2.b == 222);

    struct aaaxxx
    {
        int a;

        union
        {
            double y;
            int x;
        };
    };

    struct aaaxxx data11;

    data11.x = 123;

    xassert("AnonymousUnion", data11.x == 123);

    struct yyyxxx 
    {
        struct {
            int b;
            int c;
        };
        int a;
    };

    struct yyyxxx data12;

    data12.b = 111;
    data12.c = 222;

    xassert("AnonymousStruct", data12.b == 111 && data12.c == 222);

    string str5 = string("AAA");

    xassert("is heap test", isheap(str5));

    xassert("is heap test2", !isheap("AAAA"));

    xassert("is heap test3", !isheap(1));

    int none_heap = 123;

    xassert("is heap test4", !isheap(none_heap));

    struct StructTest10 {
        struct StructTest11* data[10];
    };

    struct StructTest11 {
        int a;
        int b;
    };

    var llll = new StructTest10;

    printf("EnumA %d\n", EnumA);

    int aaazzz[] = { 1, 2, 3 };

    xassert("int array size", sizeof(aaazzz) == 12);

    var nnnzzz = {
        123
    };

    xassert("normal block result value", nnnzzz == 123);

    typeof(1) axyuuuu = 123;

    xassert("typeof test", axyuuuu == 123);

    typeof(axyuuuu) axyuuuu2 = 234;
    xassert("typeof test", axyuuuu2 == 234);

    var gxy = 111;

    xassert("class name", strcmp(class_name(gxy), "int") == 0);

    var gxll = "abc";

    xassert("class name test2", strcmp(class_name(gxll), "char*") == 0);

    var gxll2 = new StructTest2<int>;

    xassert("class name test3", strcmp(class_name(gxll2), "StructTest2*%<int>") == 0);

    struct Data5 {
        int a;
        int b;
    };

    impl Data5 {
        initialize() {
            self.a = 111;
            self.b = 222;
        }
    }


    string zz8 = "AAA" + "BBB"

    puts(zz8);

    xassert("string test", strcmp("AAA" + "BBB", "AAABBB") == 0);

    var vv4 = new vector<int>.initialize();

    vv4.push_back(1);
    vv4.push_back(2);
    vv4.push_back(3);

    printf("vv4 %d\n", vv4.item(0, -1));
    printf("vv4 %d\n", vv4.item(1, -1));
    printf("vv4 %d\n", vv4.item(2, -1));

    vv4.each {
        printf("vv4 %d\n", it);
    }

    var vv5 = vv4.map(char*% lambda(int it) {
        var result = new char[256];
        snprintf(result, 256, "%d", it);
        result + "aaa"
    });

    printf("vv5 %s\n", vv5.item(0, null));
    printf("vv5 %s\n", vv5.item(1, null));
    printf("vv5 %s\n", vv5.item(2, null));

    vv5.each {
        printf("%s\n", it);
    }

    printf("vv5.len %d\n", vv5.len);

    var acon = (1 == 1) ? 128:0;
    xassert("condtional operator", acon == 128);

    xassert("align operator", __alignof__(int) == 4);

    var aunistd = new unistdStruct;

    var xyzX = 0x10;

    xassert("hex test", xyzX == 16);

    var xyzY = 010;

    xassert("oct test", xyzY == 8);

    inline <T> T inline_fun5(T x, T y) 
    {
        x + y;

        T z = x + y;

        z
    }

    xassert("inline function test3", inline_fun5(2, 3) == 5);

    char* aaaaxxxx = string("AAA");

    char* straaaaaaaaa = "ABC";

    char** p111111 = &straaaaaaaaa;

    xassert("pointer operator", *p111111 - straaaaaaaaa == 0);

    struct StructTest3 {
        int a;
        int b;
    };

    StructTest3 data8;

    data8.a = 1;
    data8.b = 2;

    xassert("struct test", data8.a == 1 && data8.b == 2);
    void funXYZ(StructTest3 data) 
    {
        xassert("struct test2", data8.a == 1 && data8.b == 2);
    }

    funXYZ(data8);

    StructTest3%* data9 = new StructTest3;

    data9->a = 1;
    data9->b = 2;

    xassert("struct test3", data9->a == 1 && data9->b == 2);

    funXYZ(*data9);

    var zz = new Data5.initialize();

    var zz2 = clone zz;

    xassert("struct test X2", zz2.a == 111 && zz2.b == 222);

    struct Data6 {
        Data5*% a;
        int b;
        string c;
    };

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

    xassert("struct test X3", zz4.a.a == 111 && zz4.a.b == 222 && zz4.b == 333);
    xassert("struct test X4", zz3.a.a == 111 && zz3.a.b == 222 && zz3.b == 333);

    var zz5 = new char[5];
    var zz6 = zz5;

    char* zz7 = zz6;

    void fun_test_borrow(char* aaa) 
    {
    }

    fun_test_borrow(zz6);

    int aaaaaaaxxxxxx = 1111;

    int* bbbbbbxxxxxxx = &aaaaaaaxxxxxx;

    *bbbbbbxxxxxxx = 123;

    xassert("derefference test", *bbbbbbxxxxxxx == 123);

    int bbxyz[4];

    bbxyz[0] = 1;
    bbxyz[1] = 2;

    int* pbbxyz = bbxyz;

    *pbbxyz = 3;
    *(pbbxyz +1) = 4;

    xassert("pointer test", bbxyz[0] == 3 && bbxyz[1] == 4);

    int* pbbxyz2 = pbbxyz + 1;

    *(pbbxyz2 -1 ) = 5;

    xassert("pointer test2", bbxyz[0] == 5);

    int* pbbxyz3 = bbxyz + 1;

    *(pbbxyz3 -1 ) = 6;

    xassert("pointer test3", bbxyz[0] == 6);

    int axv = 123;
    axv++;
    xassert("inc test", axv == 124);

    char*$ ppppx = string("FTR");
    char* ppppx2 = ppppx;

    ppppx2++;
    *ppppx2 = 'X';

    xassert("inc test2", strcmp(ppppx, "FXR") == 0);
*/

    int aaarray[] = { 1, 2, 3 };

    int* bbbbbbbbbbb = aaarray;

printf("%p %d %p %d %p %p\n", bbbbbbbbbbb, *bbbbbbbbbbb, aaarray, *aaarray, aaarray, &*bbbbbbbbbbb);

    (*bbbbbbbbbbb)++;

printf("%d\n", aaarray[0]);

    xassert("inc test3", aaarray[0] == 2);

/*
    (bbbbbbbbbbb+1)++;

    xassert("inc test4", aaarray[1] == 3);
    aaarray[0] ++;

    xassert("inc test5", aaarray[0] == 2);
*/

    0
}

void unsupported_function()
{
/*
    const int const_a = 1;

    xassert("local constant int", const_a == 1);

    void constant_test_fun(const int a) {
        xassert("constant test", a == 1);
    }

    constant_test_fun(1);

    void va_list_test(char* str, ...)
    {
        va_list vlist;

        va_start(vlist, str);
        vprintf(str, vlist);
        va_end(vlist);
    }

    va_list_test("aaa %d\n", 1);

    void va_list_test2(int num_args, ...)
    {
        int sum = 0;
        va_list vlist;

        va_start(vlist, num_args);
        int n = va_arg(vlist, int);
        va_end(vlist);
    }

    va_list_test2(2, 1, 2);
*/
}
