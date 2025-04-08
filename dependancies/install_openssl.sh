#!/bin/bash
#wget https://www.openssl.org/source/openssl-1.1.1w.tar.gz
tar xzf openssl-1.1.1w.tar.gz
cd openssl-1.1.1w

./config --prefix=/opt/openssl --openssldir=/opt/openssl shared zlib
make -j$(nproc)
sudo make install

#EXPORT PATH
#export LD_LIBRARY_PATH=/opt/openssl/lib:$LD_LIBRARY_PATH

#Make the OpenSSL path permanent
echo "/opt/openssl/lib" | tee /etc/ld.so.conf.d/openssl-1.1.conf
ldconfig

#VERSION TEST
/opt/openssl/bin/openssl version
