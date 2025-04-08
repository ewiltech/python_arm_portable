#!/bin/bash
apt install -y ca-certificates
update-ca-certificates
echo 'export SSL_CERT_FILE=/etc/ssl/certs/ca-certificates.crt' >> ~/.bashrc

