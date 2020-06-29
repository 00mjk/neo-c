#######################################################
# installed directories
#######################################################
prefix=/data/data/com.termux/files/home
exec_prefix=${prefix}
bindir=${exec_prefix}/bin
datadir=${datarootdir}
mandir=${datarootdir}/man
sharedstatedir=${prefix}/com
sysconfdir=${prefix}/etc/sevenstars
includedir=${prefix}/include/sevenstars
datarootdir=${prefix}/share/sevenstars
docdir=${datarootdir}/doc
libdir=${exec_prefix}/lib


##########################################################
# environmnet variables
##########################################################
CC=neo-c
INSTALL=/data/data/com.termux/files/usr/bin/install -c
CFLAGS=-Isrc/ -I. -L . -I/data/data/com.termux/files/home/include -L/data/data/com.termux/files/home/lib -fPIC -rdynamic -DPREFIX="\"${DESTDIR}/\"" -O2 -Qunused-arguments
NCFLAGS=
LIBS= -lutil -lncursesw -lreadline -ldl -lm -lpthread -lpcre -lreadline -lrt
OS=LINUX
DESTDIR=/data/data/com.termux/files/home
OBJS=src/vm.o
COMPILER_OBJS=src/parser.o src/node.o

##########################################################
# main
##########################################################
all: iqos 
#	if which ctags > /dev/null; then if test $(OS) = DARWIN; then ctags src/*.c > /dev/null 2>&1; else ctags -R; fi; fi

iqos: config.h src/*.h Makefile configure src/main.nc src/filer.o
	$(CC) -o iqos src/main.nc src/filer.o $(CFLAGS) $(NCFLAGS) $(LIBS) ../sevenstars/src/compiler.o ../sevenstars/src/parser.o ../sevenstars/src/node.o ../sevenstars/src/type.o ../sevenstars/src/class.o ../sevenstars/src/native.o ../sevenstars/src/native2.o ../sevenstars/src/vm.o ../sevenstars/src/vtable.o ../sevenstars/src/heap.o ../sevenstars/src/object.o ../sevenstars/src/block.o ../sevenstars/src/macro.o $(CFLAGS) $(NCFLAGS) $(LIBS)

##########################################################
# objects
##########################################################
src/filer.o: config.h src/*.h Makefile configure src/filer.nc
	$(CC) -c src/filer.nc $(CFLAGS) $(NCFLAGS)

#########################################################
# install
#########################################################
install:
	mkdir -p $(DESTDIR)/share/sevenstars
#	$(INSTALL) -m 644 sevenstars.ss $(DESTDIR)/share/sevenstars

	mkdir -p "$(DESTDIR)/bin"
	$(INSTALL) -m 755 ./iqos "$(DESTDIR)/bin"

#########################################################
# uninstall
#########################################################
uninstall:
	rm -f "$(DESTDIR)"/bin/iqos

#########################################################
# permission
#########################################################
permission:
	chmod 644 *
	chmod 755 .git man src configure
	chmod 644 src/*.c
	chmod 644 src/*.h

########################################################
# clean
########################################################
clean:
	rm -fR iqos iqos.dSYM src/*.o src/*.out src/*.bc src/*.ll config.log config.status *.stackdump autom4te.cache .DS_Store core a.out *.out *.ssc

distclean: clean
	rm -fR  config.h Makefile autom4te.cache

########################################################
# test
########################################################
test: 
	(cd ../..; iqos)

