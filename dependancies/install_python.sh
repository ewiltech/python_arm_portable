#!/bin/bash
#wget https://www.python.org/ftp/python/3.9.18/Python-3.9.18.tgz
#tar xzf Python-3.9.18.tgz
cd Python-3.9.18

export LD_LIBRARY_PATH=/opt/openssl/lib
./configure \
  --prefix=/opt/python39 \
  --with-openssl=/opt/openssl \
  --enable-optimizations \
  --with-ensurepip=install

make -j$(nproc)
make altinstall
