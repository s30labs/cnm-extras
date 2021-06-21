#!/bin/bash
#-----------------------------------------------------------------------
# Al descomprimir el directorio es: IO-stringy-2.110 con la s minuscula !!!
echo ">>>>>>>EXEC $0"

#-----------------------------------------------------------------------
DIR_BASE=`pwd`
BUILD_DIR=/tmp/src/perl
mkdir -p $BUILD_DIR

#-----------------------------------------------------------------------
# Se hace por script por el nombre del subdirectorio de instalacion 
tar -C $BUILD_DIR -xzvf /opt/cnm-extras/perl_modules/IO-Stringy-2.110.tar.gz
cd $BUILD_DIR/IO-stringy-2.110

perl Makefile.PL
make
make install

