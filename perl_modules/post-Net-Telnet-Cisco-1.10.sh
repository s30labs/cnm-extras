#!/bin/bash

VERSION=`perl -e 'print substr($^V,1)."\n";'`
cp /opt/cnm-os/perl_modules/extras/Cisco.pm /usr/local/share/perl/$VERSION/Net/Telnet/Cisco.pm

