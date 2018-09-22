#!/bin/bash
#-----------------------------------------------------------------------
echo ">>>>>>>EXEC $0"

DIR_BASE=`pwd`
BUILD_DIR=/tmp/src/pari
mkdir -p $BUILD_DIR

#-----------------------------------------------------------------------
tar -C $BUILD_DIR -xzvf /os/perl_modules/Math-Pari-2.010808.tar.gz
cd $BUILD_DIR/Math-Pari-2.010808

perl Makefile.PL pari_tgz=/opt/cnm-extras/perl_modules/pari-2.3.5.tgz
make
make install
