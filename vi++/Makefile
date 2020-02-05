##########################################
# installed directories
##########################################
prefix=/usr/local exec_prefix=${prefix}
bindir=${exec_prefix}/bin
datadir=${datarootdir}
mandir=${datarootdir}/man
sharedstatedir=${prefix}/com
sysconfdir=${prefix}/etc/neo-c
includedir=${prefix}/include/neo-c
datarootdir=${prefix}/share/neo-c
docdir=${datarootdir}/doc
libdir=${exec_prefix}/lib


#########################################
# environmnet variables
##########################################
CC=gcc
NCC=neo-c
INSTALL=/usr/bin/install -c
CFLAGS=-Isrc/ -I. -L . -DPREFIX="\"${DESTDIR}/\"" -I/usr/local/include -L /usr/local/lib -Qunused-arguments
LIBS= -lutil -ldl -lm -lpcre -lncursesw -lrt -lpthread
OS=LINUX
DESTDIR=/usr/local

#########################################
# main
##########################################
all: vi++

vi++: configure Makefile config.h vi++.nc vi++01init.o vi++02base.o vi++03insert_mode.o vi++04word.o vi++05undo.o vi++06file.o vi++07yank.o vi++08visual.o vi++09search.o vi++10edit.o vi++11move.o vi++12command.o vi++13completion.o vi++14dot.o vi++15filer.o vi++01init.nc vi++02base.nc vi++03insert_mode.nc vi++04word.nc vi++05undo.nc vi++06file.nc vi++07yank.nc vi++08visual.nc vi++09search.nc vi++10edit.nc vi++11move.nc vi++12command.nc vi++13completion.nc vi++14dot.nc vi++15filer.nc
	neo-c -o vi++ vi++.nc vi++01init.o vi++02base.o vi++03insert_mode.o vi++04word.o vi++05undo.o vi++06file.o vi++07yank.o vi++08visual.o vi++09search.o vi++10edit.o vi++11move.o vi++12command.o vi++13completion.o vi++14dot.o vi++15filer.o $(CFLAGS) $(LIBS)

vi++01init.o: configure Makefile config.h vi++01init.nc vi++.h
	neo-c -c vi++01init.nc $(CFLAGS) $(LIBS)

vi++02base.o: configure Makefile config.h vi++01init.nc vi++02base.nc vi++.h
	neo-c -c vi++02base.nc $(CFLAGS) $(LIBS)

vi++03insert_mode.o: configure Makefile config.h vi++01init.nc vi++02base.nc vi++03insert_mode.nc vi++.h
	neo-c -c vi++03insert_mode.nc $(CFLAGS) $(LIBS)

vi++04word.o: configure Makefile config.h vi++01init.nc vi++02base.nc vi++03insert_mode.nc vi++04word.nc vi++.h
	neo-c -c vi++04word.nc $(CFLAGS) $(LIBS)

vi++05undo.o: configure config.h vi++01init.nc vi++02base.nc vi++03insert_mode.nc vi++04word.nc vi++05undo.nc vi++.h
	neo-c -c vi++05undo.nc $(CFLAGS) $(LIBS)

vi++06file.o: configure config.h vi++01init.nc vi++02base.nc vi++03insert_mode.nc vi++04word.nc vi++05undo.nc vi++06file.nc
	neo-c -c vi++06file.nc $(CFLAGS) $(LIBS)

vi++07yank.o: configure config.h vi++01init.nc vi++02base.nc vi++03insert_mode.nc vi++04word.nc vi++05undo.nc vi++06file.nc vi++07yank.nc
	neo-c -c vi++07yank.nc $(CFLAGS) $(LIBS)

vi++08visual.o: configure config.h vi++01init.nc vi++02base.nc vi++03insert_mode.nc vi++04word.nc vi++05undo.nc vi++06file.nc vi++07yank.nc vi++08visual.nc 
	neo-c -c vi++08visual.nc $(CFLAGS) $(LIBS)

vi++09search.o: configure config.h vi++01init.nc vi++02base.nc vi++03insert_mode.nc vi++04word.nc vi++05undo.nc vi++06file.nc vi++07yank.nc vi++08visual.nc vi++09search.nc 
	neo-c -c vi++09search.nc $(CFLAGS) $(LIBS)

vi++10edit.o: configure config.h vi++01init.nc vi++02base.nc vi++03insert_mode.nc vi++04word.nc vi++05undo.nc vi++06file.nc vi++07yank.nc vi++08visual.nc vi++09search.nc vi++10edit.nc
	neo-c -c vi++10edit.nc $(CFLAGS) $(LIBS)

vi++11move.o: configure config.h vi++01init.nc vi++02base.nc vi++03insert_mode.nc vi++04word.nc vi++05undo.nc vi++06file.nc vi++07yank.nc vi++08visual.nc vi++09search.nc vi++10edit.nc vi++11move.nc
	neo-c -c vi++11move.nc $(CFLAGS) $(LIBS)

vi++12command.o: configure config.h vi++01init.nc vi++02base.nc vi++03insert_mode.nc vi++04word.nc vi++05undo.nc vi++06file.nc vi++07yank.nc vi++08visual.nc vi++09search.nc vi++10edit.nc vi++11move.nc vi++12command.nc
	neo-c -c vi++12command.nc $(CFLAGS) $(LIBS)

vi++13completion.o: configure config.h vi++01init.nc vi++02base.nc vi++03insert_mode.nc vi++04word.nc vi++05undo.nc vi++06file.nc vi++07yank.nc vi++08visual.nc vi++09search.nc vi++10edit.nc vi++11move.nc vi++12command.nc vi++13completion.nc
	neo-c -c vi++13completion.nc $(CFLAGS) $(LIBS)

vi++14dot.o: configure config.h vi++01init.nc vi++02base.nc vi++03insert_mode.nc vi++04word.nc vi++05undo.nc vi++06file.nc vi++07yank.nc vi++08visual.nc vi++09search.nc vi++10edit.nc vi++11move.nc vi++12command.nc vi++13completion.nc vi++14dot.nc
	neo-c -c vi++14dot.nc $(CFLAGS) $(LIBS)

vi++15filer.o: configure config.h vi++01init.nc vi++02base.nc vi++03insert_mode.nc vi++04word.nc vi++05undo.nc vi++06file.nc vi++07yank.nc vi++08visual.nc vi++09search.nc vi++10edit.nc vi++11move.nc vi++12command.nc vi++13completion.nc vi++14dot.nc vi++15filer.nc
	neo-c -c vi++15filer.nc $(CFLAGS) $(LIBS)

#########################################
# install
#########################################
install:
	mkdir -p "$(DESTDIR)/bin"
	$(INSTALL) -m 755 ./vi++ "$(DESTDIR)/bin"

#########################################
# uninstall
#########################################
uninstall:
	rm -f "$(DESTDIR)"/bin/vi++

#########################################
# permission
#########################################
permission:
	chmod 644 *
	chmod 755 .git man configure
	chmod 644 *.nc
	chmod 644 *.h
	chmod 755 update_vi++-c.sh

#########################################
# clean
#########################################
clean:
	rm -fR memleak_debug.txt *.ll *.bc *.nc.tmp *.out *.o valgrind.txt memleack_debug.txt
	rm -fR vi++

distclean: clean
	rm -fR  config.h Makefile autom4te.cache 

test:
#	rm -f valgrind.txt memleack_debug.txt
#	valgrind --log-file=valgrind.txt --leak-check=full --show-leak-kinds=all ./vi++ a.nc
	./vi++ a.nc

