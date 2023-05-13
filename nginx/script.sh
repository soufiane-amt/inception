openssl genrsa -des3 -out server.key 2048

openssl req -x509 -new -nodes -key server.key -sha256 -days 1825 -out server.crt -config openssl.conf -batch
