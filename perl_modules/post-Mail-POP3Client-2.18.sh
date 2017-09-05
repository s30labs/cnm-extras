#!/bin/bash

VERSION=`perl -e 'print substr($^V,1)."\n";'`
cp /opt/cnm-os/perl_modules/extras/POP3Client.pm /usr/local/share/perl/$VERSION/Mail/POP3Client.pm


