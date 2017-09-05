#!/bin/bash

#   if(not IO::Socket::SSL::socket_to_SSL($me->{sock},
#-      SSL_version  => "SSLv3 TLSv1")){
#+      SSL_version => "TLSv1")){
#         croak "Couldn't start TLS: ".IO::Socket::SSL::errstr."\n";
#   }

VERSION=`perl -e 'print substr($^V,1)."\n";'`
cp /opt/cnm-os/perl_modules/extras/TLS.pm /usr/local/share/perl/$VERSION/Net/SMTP/TLS.pm

