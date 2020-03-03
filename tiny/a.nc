struct rusage {
    int a;
    int b;
};

pid_t wait4(pid_t __pid, int* __status, int __options, struct rusage* __rusage) __attribute__((annotate("introduced_in=" "18")));

static pid_t wait3(int* status, int options, struct rusage* rusage) { return wait4(-1, status, options, rusage); }
//static pid_t wait3(int* status, int options, struct rusage* rusage) { return wait4(-1, status, options, rusage); }
