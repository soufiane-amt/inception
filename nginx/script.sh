#!/bin/bash


openssl genrsa  -out /home/www/openssl/server.key


openssl req -x509 -new -key /home/www/openssl/server.key -sha256 -days 356 -out /home/www/openssl/server.crt -config /home/www/openssl/openssl.conf 

service nginx start
 