#######################################################
# installed directories
#######################################################
prefix=/usr/local
exec_prefix=${prefix}
bindir=${exec_prefix}/bin
datadir=${datarootdir}
mandir=${datarootdir}/man
sharedstatedir=${prefix}/com
sysconfdir=${prefix}/etc/sevenstar
includedir=${prefix}/include/sevenstar
datarootdir=${prefix}/share/sevenstar
docdir=${datarootdir}/doc
libdir=${exec_prefix}/lib


##########################################################
# environmnet variables
##########################################################
CC=neo-c
INSTALL=/usr/bin/install -c
CFLAGS=-Isrc/ -I. -L . -fPIC -rdynamic -DPREFIX="\"${DESTDIR}/\"" -I/usr/local/include -L /usr/local/lib -O2 -Qunused-arguments
NCFLAGS=
LIBS= -lutil -lncursesw -lreadline -lbsd -ldl -lm -lpthread -lpcre -lrt
OS=LINUX
DESTDIR=/usr/local
OBJS=src/vm.o
COMPILER_OBJS=src/parser.o src/node.o

##########################################################
# main
##########################################################
all: sevenstar
#	if which ctags > /dev/null; then if test $(OS) = DARWIN; then ctags src/*.c > /dev/null 2>&1; else ctags -R; fi; fi

sevenstar: config.h src/*.h Makefile configure src/compiler.nc src/parser.o src/node.o src/type.o src/class.o src/vm.o src/vtable.o src/heap.o src/object.o src/block.o src/macro.o
	$(CC) -o sevenstar src/compiler.nc src/parser.o src/node.o src/type.o src/class.o src/vm.o src/vtable.o src/heap.o src/object.o src/block.o src/macro.o $(CFLAGS) $(NCFLAGS) $(LIBS)

##########################################################
# objects
##########################################################
src/parser.o: config.h src/*.h Makefile configure src/parser.nc
	$(CC) -c src/parser.nc $(CFLAGS) $(NCFLAGS)

src/node.o: config.h src/*.h Makefile configure src/node.nc
	$(CC) -c src/node.nc $(CFLAGS) $(NCFLAGS)

src/type.o: config.h src/*.h Makefile configure src/type.nc
	$(CC) -c src/type.nc $(CFLAGS) $(NCFLAGS)

src/class.o: config.h src/*.h Makefile configure src/class.nc
	$(CC) -c src/class.nc $(CFLAGS) $(NCFLAGS)

src/vm.o: config.h src/*.h Makefile configure src/vm.nc
	$(CC) -c src/vm.nc $(CFLAGS) $(NCFLAGS)

src/vtable.o: config.h src/*.h Makefile configure src/vtable.nc
	$(CC) -c src/vtable.nc $(CFLAGS) $(NCFLAGS)

src/objet.o: config.h src/*.h Makefile configure src/object.nc
	$(CC) -c src/object.nc $(CFLAGS) $(NCFLAGS)

src/heap.o: config.h src/*.h Makefile configure src/heap.nc
	$(CC) -c src/heap.nc $(CFLAGS) $(NCFLAGS)

src/object.o: config.h src/*.h Makefile configure src/object.nc
	$(CC) -c src/object.nc $(CFLAGS) $(NCFLAGS)

src/block.o: config.h src/*.h Makefile configure src/block.nc
	$(CC) -c src/block.nc $(CFLAGS) $(NCFLAGS)

src/macro.o: config.h src/*.h Makefile configure src/macro.nc
	$(CC) -c src/macro.nc $(CFLAGS) $(NCFLAGS)

#########################################################
# install
#########################################################
install:
	mkdir -p $(DESTDIR)/share/sevenstar

	mkdir -p "$(DESTDIR)/bin"
	$(INSTALL) -m 755 ./sevenstar "$(DESTDIR)/bin"

#########################################################
# uninstall
#########################################################
uninstall:
	rm -f "$(DESTDIR)"/bin/sevenstar

#########################################################
# permission
#########################################################
permission:
	chmod 644 *
	chmod 755 .git man src configure
	chmod 644 src/*.c
	chmod 644 src/*.h
	chmod 755 update_clover.sh

########################################################
# clean
########################################################
clean:
	rm -fR sevenstar sevenstar.dSYM src/*.o src/*.out src/*.bc src/*.ll config.log config.status *.stackdump autom4te.cache .DS_Store core.* core a.out *.out

distclean: clean
	rm -fR  config.h Makefile autom4te.cache

########################################################
# test
########################################################
test: 
	@echo "Compile to test code..."
	./sevenstar code/HelloWorld.ss




