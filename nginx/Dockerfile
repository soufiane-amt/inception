FROM debian:buster

RUN apt update -y

RUN apt install nginx -y

RUN mkdir -p /home/www/openssl

RUN mkdir -p /home/www/ngconf

COPY openssl.conf /home/www/openssl/

COPY default /home/www/ngconf

COPY set_data_base.sh /

CMD ["/script.sh"]