FROM debian:buster

RUN apt update -y

RUN apt install vim -y

RUN apt install nginx -y

RUN apt install openssl -y

RUN mkdir -p /home/www/openssl

COPY conf/openssl.conf /home/www/openssl/

COPY conf/default /etc/nginx/sites-available

COPY tools/script.sh /


WORKDIR /var/www/html


EXPOSE 443


CMD ["/script.sh"]