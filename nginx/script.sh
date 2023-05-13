#!/bin/bash

cd /home/www/openssl

openssl genrsa -des3 -passout pass:"0000" -out server.key 2048

openssl req -x509 -new -nodes -key server.key -sha256 -days 1825 -out server.crt -config openssl.conf -batch -passin pass:"0000"

service nginx restart

nginx -g "daemon off"
