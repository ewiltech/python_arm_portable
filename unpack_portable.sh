#!/bin/bash
tar -xzf python39-arm-portable.tar.gz
cd python39-package
cp -rn python39 /opt/
cd ..
rm -r python39-package

tar -xzf ssl-arm-portable.tar.gz
cd ssl-package
cp -rn openssl /opt/
cd ..
rm -r ssl-package

echo "/opt/openssl/lib" | tee /etc/ld.so.conf.d/openssl-1.1.conf
ldconfig
