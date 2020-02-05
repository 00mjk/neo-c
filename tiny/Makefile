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
LIBS= -lutil -ldl -lm -lpcre -lncursesw -lrt
OS=LINUX
DESTDIR=/usr/local

#########################################
# main
##########################################
all: tiny

tiny: configure Makefile config.h tiny.nc tiny01init.o tiny02base.o tiny01init.nc tiny02base.nc 
	neo-c -o tiny tiny.nc tiny01init.o tiny02base.o $(CFLAGS) $(LIBS)

tiny01init.o: configure Makefile config.h tiny01init.nc tiny.h
	neo-c -c tiny01init.nc $(CFLAGS) $(LIBS)

tiny02base.o: configure Makefile config.h tiny01init.nc tiny02base.nc tiny.h
	neo-c -c tiny02base.nc $(CFLAGS) $(LIBS)

#########################################
# install
#########################################
install:
	mkdir -p "$(DESTDIR)/bin"
	$(INSTALL) -m 755 ./tiny "$(DESTDIR)/bin"

#########################################
# uninstall
#########################################
uninstall:
	rm -f "$(DESTDIR)"/bin/tiny

#########################################
# permission
#########################################
permission:
	chmod 644 *
	chmod 755 .git man configure
	chmod 644 *.nc
	chmod 644 *.h
	chmod 755 update_tinyvm.sh

#########################################
# clean
#########################################
clean:
	rm -fR memleak_debug.txt *.ll *.bc *.nc.tmp *.out *.o valgrind.txt memleack_debug.txt
	rm -fR tiny

distclean: clean
	rm -fR  config.h Makefile autom4te.cache 

test:
#	rm -f valgrind.txt memleack_debug.txt
#	valgrind --log-file=valgrind.txt --leak-check=full --show-leak-kinds=all ./neo-vi a.nc
	./neo-vi a.nc

