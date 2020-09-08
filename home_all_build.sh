(cd wi; make distclean)
(cd ayataka; make distclean)
(cd sevenstars; make distclean)
make distclean

./configure --with-optimize --prefix=$HOME && make && make install && make test && cd sevenstars && ./configure --prefix=$HOME --with-optimize && make && make install && make test && cd ../wi && ./configure --with-optimize --prefix=$HOME && make && make install && cd ../ayataka && ./configure --prefix=$HOME --with-optimize && make && make install
