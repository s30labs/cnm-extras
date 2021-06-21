#!/bin/bash
#-----------------------------------------------------------------------
echo ">>>>>>>EXEC $0"

#-----------------------------------------------------------------------
DIR_BASE=`pwd`
BUILD_DIR=/tmp/src/perl
mkdir -p $BUILD_DIR

#-----------------------------------------------------------------------
# Se hace por script por la vriable CPATH al hacer gcc
tar -C $BUILD_DIR -xzvf /opt/cnm-extras/perl_modules/Filesys-SmbClient-3.2.tar.gz
cd $BUILD_DIR/Filesys-SmbClient-3.2

export CPATH=/usr/include/samba-4.0/ && perl Makefile.PL
make
make install

