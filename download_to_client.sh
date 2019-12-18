#!/bin/bash

ssh ab25cq@clover-lang.org bash -c '"cd repo/neo-c; make distclean; cd ..; tar cvfz neo-c.tgz neo-c"'
scp ab25cq@clover-lang.org:repo/neo-c.tgz ..
(cd ..; tar xvfz neo-c.tgz)
cd .

