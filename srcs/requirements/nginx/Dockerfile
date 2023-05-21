FROM debian:buster

RUN apt update  -y && apt install nginx -y && apt install openssl -y && mkdir -p /home/www/openssl

COPY conf/openssl.conf /home/www/openssl/

COPY conf/default /etc/nginx/sites-available

COPY tools/script.sh /

WORKDIR /var/www/html

EXPOSE 443

ENTRYPOINT ["/script.sh"]