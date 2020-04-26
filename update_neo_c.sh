#!/bin/bash

if [ -e Makefile ]
then
    make distclean
fi
if [ -e wi/Makefile ]
then
    (cd wi; make distclean)
fi
if [ -e tiny/Makefile ]
then
    (cd tiny; make distclean)
fi
if [ -e clover3/Makefile ]
then
    (cd clover3; make distclean)
fi

if [ ! -e Makefile ]
then
    git add .
    git commit 
    git remote add origin https://github.com/ab25cq/neo-c.git
    git push -f -u origin master
fi

