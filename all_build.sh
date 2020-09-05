(cd wi; make distclean)
(cd ayataka; make distclean)
(cd sevenstars; make distclean)
make distclean
./configure --with-optimize && make && sudo make install && make test && cd sevenstars && ./configure --with-optimize  && make && sudo make install && make test && cd ../wi && ./configure --with-optimize && make && sudo make install && cd ../ayataka && ./configure --with-optimize && make && sudo make install
