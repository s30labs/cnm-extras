#!/bin/bash
#-----------------------------------------------------------------------
echo ">>>>>>>EXEC $0"

#-----------------------------------------------------------------------
DIR_BASE=`pwd`
BUILD_DIR=/tmp/src/perl
mkdir -p $BUILD_DIR

#-----------------------------------------------------------------------
# Se hace por script por la vriable CPATH al hacer gcc
tar -C $BUILD_DIR -xzvf /opt/cnm-extras/debian10/perl_modules/Crypt-SSLeay-0.72.tar.gz
cd $BUILD_DIR/Crypt-SSLeay-0.72

# Incluye la ruta a cur.h dentro de Makefile.PL
cp /opt/cnm-extras/debian10/perl_modules/extras/Crypt-SSLeay-0.72-Makefile.PL ./Makefile.PL

perl Makefile.PL
make
make install

