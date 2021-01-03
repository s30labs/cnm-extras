#!/bin/bash
#-----------------------------------------------------------------------
echo ">>>>>>>EXEC $0"

DIR_BASE=`pwd`
BUILD_DIR=/tmp/src/pari
mkdir -p $BUILD_DIR

#-----------------------------------------------------------------------
unzip -d $BUILD_DIR /opt/cnm-extras/debian10/perl_modules/Math-Pari-2.030518.zip
cd $BUILD_DIR/Math-Pari-2.030518

perl Makefile.PL pari_tgz=/opt/cnm-extras/debian10/perl_modules/pari-2.11.2.tar.gz
make
make install
