#!/bin/bash
tar -xzf python39-portable-arm.tar.gz
cd python39-package
cp -rn bin/* /usr/local/bin/
cp -rn lib/* /usr/local/lib/

#add to PATH
