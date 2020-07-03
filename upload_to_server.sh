#!/bin/bash

if [ -e Makefile ]
then
    make distclean
fi
if [ -e neo-vi/Makefile ]
then
    (cd neo-vi; make distclean)
fi
if [ -e tinyvm/Makefile ]
then
    (cd tinyvm; make distclean)
fi
if [ -e wi/Makefile ]
then
    (cd wi; make distclean)
fi
if [ -e ayataka/Makefile ]
then
    (cd ayataka; make distclean)
fi

if [ ! -e Makefile ]
then
    (cd ..; tar cvfz neo-c.tgz neo-c)
    (cd ..; scp neo-c.tgz ab25cq@clover-lang.org:)
    ssh ab25cq@clover-lang.org bash -c '"cp -f neo-c.tgz repo/; cd repo; rm -rf neo-c; tar xvfz neo-c.tgz"'
fi

