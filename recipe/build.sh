#!/bin/bash

# Get an updated config.sub and config.guess
cp -r ${BUILD_PREFIX}/share/libtool/build-aux/config.* .

./configure --prefix=$PREFIX --with-tiff=$PREFIX --with-jpeg=$PREFIX
make -j${CPU_COUNT}
make check
make install
