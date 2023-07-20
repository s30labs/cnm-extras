#!/bin/bash
#-----------------------------------------------------------------------
echo ">>>>>>>EXEC $0"

#-----------------------------------------------------------------------
DIR_BASE=`pwd`
BUILD_DIR=/tmp/src/perl
mkdir -p $BUILD_DIR

#-----------------------------------------------------------------------
# Se hace por script por la vriable CPATH al hacer gcc
tar -C $BUILD_DIR -xzvf /opt/cnm-extras/debian10/perl_modules/WWW-Curl-4.17.tar.gz
cd $BUILD_DIR/WWW-Curl-4.17

# Incluye la ruta a cur.h dentro de Makefile.PL
cp /opt/cnm-extras/debian10/perl_modules/extras/WWW-Curl-4.17-Makefile.PL ./Makefile.PL

perl Makefile.PL
make
make install

