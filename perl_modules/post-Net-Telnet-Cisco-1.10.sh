#!/bin/bash

VERSION=`perl -e 'print substr($^V,1)."\n";'`
DIR_MODULES='/opt/cnm-os/perl_modules'
if [ -d '/opt/cnm-extras/perl_modules' ]; then
  DIR_MODULES='/opt/cnm-extras/perl_modules'
fi
cp $DIR_MODULES/extras/Cisco.pm /usr/local/share/perl/$VERSION/Net/Telnet/Cisco.pm

