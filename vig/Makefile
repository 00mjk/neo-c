##########################################
# installed directories
##########################################
prefix=/data/data/com.termux/files/home exec_prefix=${prefix}
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
INSTALL=/data/data/com.termux/files/usr/bin/install -c
CFLAGS=-Isrc/ -I. -L . -I/data/data/com.termux/files/home/include -L/data/data/com.termux/files/home/lib -DPREFIX="\"${DESTDIR}/\"" -Qunused-arguments
LIBS= -ldl -lm -lpcre -lncursesw -lrt
OS=LINUX
DESTDIR=/data/data/com.termux/files/home

#########################################
# main
##########################################
all: vig

vig: config.h main.nc vig.o vig2.o
	neo-c -o vig main.nc vig.o vig2.o $(CFLAGS) $(LIBS)

vig.o: config.h vig.ncc
	neo-c -c vig.ncc $(CFLAGS) $(LIBS)

vig2.o: config.h vig2.ncc
	neo-c -c vig2.ncc $(CFLAGS) $(LIBS)

#########################################
# install
#########################################
install:
	mkdir -p "$(DESTDIR)/bin"
	$(INSTALL) -m 755 ./vig "$(DESTDIR)/bin"

#########################################
# uninstall
#########################################
uninstall:
	rm -f "$(DESTDIR)"/bin/vig

#########################################
# permission
#########################################
permission:
	chmod 644 *
	chmod 755 .git man configure
	chmod 644 *.nc
	chmod 644 *.h
	chmod 755 update_vig-c.sh

#########################################
# clean
#########################################
clean:
	rm -fR *.ll *.bc *.nc.tmp *.out *.o
	rm -fR vig

distclean: clean
	rm -fR  config.h Makefile autom4te.cache 

