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

if [ ! -e Makefile ]
then
    git add .
    git commit 
    git remote add origin https://github.com/ab25cq/neo-c.git
    git push -f -u origin master
fi

