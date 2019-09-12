#include "neo-c.h"

extern "C"
{
#include <stdio.h>
}

macro hello {
ruby <<'EOS'
$a = "\"aaa\"";
print <<"REOS"
    puts("HELLO MACRO");
    puts(#{$a});
REOS
EOS
}

ruby_macro hello2 {
    param = ENV['PARAMS'];
    print "puts(\"HELLO RUBY MACRO #{param}\");";
}

ruby_macro hello3 {
    print "123"
}

def main():int 
{
    var str = string("HELLO WORLD");

    str[0] = 'h';

    puts(str);

    var v = new vector<int>.initialize();

    v.push_back(1);
    v.push_back(2);
    v.push_back(3);

    v.each {
        printf("%d\n", it);
    }

    var mmmzzz = extern "C" {
        345
    };

    xassert("c lang result value", mmmzzz == 345);

    hello!(HELLO WORLD);
    hello!{HELLO WORLD, HELLO WORLD2};

    hello2!(I LOVE RUBY);

    var nnn = hello3!();

    xassert("macro result test", nnn == 123);

    var ggg =  extern "C" {
        extern "C" {
            111
        }
    }

    xassert("extern C test", ggg == 111);
    
    0
}
