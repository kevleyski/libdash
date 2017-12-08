#!/bin/bash

# KJSL: script to build libdash on OSX

set -x

if [ ! -d /usr/local/Cellar/libxml2/2.9.7/include ]; then
brew install automake libxml2
fi

ROOT=$PWD

cd $ROOT/libdash/libdash
mkdir build
cd build
cmake ../ -DLIBXML2_INCLUDE_DIR:PATH=/usr/local/Cellar/libxml2/2.9.7/include/libxml2
make

