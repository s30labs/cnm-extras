#!/bin/bash

# A. Text-Template
#wget https://cpan.metacpan.org/authors/id/M/MS/MSCHOUT/Text-Template-1.61.tar.gz
cd /opt/cnm-extras/perl_modules
./iperl Text-Template-1.61.tar.gz


# B. openssl
# wget https://www.openssl.org/source/openssl-3.1.0.tar.gz
cd /opt/cnm-extras/openssl-3.1.0
./config shared --prefix=/usr/local/
make
mkdir lib 
cp ./*.{so,a,pc} ./lib

# C.Python
# wget https://www.python.org/ftp/python/3.11.3/Python-3.11.3.tgz
apt-get update
apt-get install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev
cd /opt/cnm-extras/Python-3.11.3
./configure --with-openssl=/opt/cnm-extras/openssl-3.1.0
make
make altinstall
rm /usr/bin/python3
ln -s /usr/local/bin/python3.11 /usr/bin/python3
python3 -m pip install --upgrade pip
python3 -m pip install impacket
sed -i 's/set_connect_timeout(30)/set_connect_timeout(5)/g' /usr/local/lib/python3.11/site-packages/impacket/dcerpc/v5/transport.py

echo "Se debe incluir la linea /opt/cnm-extras/openssl-3.1.0 en el fichero /etc/ld.so.conf y ejecutar ldconfig"
echo "En caso contrario, es necesario hacer export LD_LIBRARY_PATH=/opt/cnm-extras/openssl-3.1.0"
