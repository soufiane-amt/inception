FROM debian:buster


RUN apt-get update -y 

RUN apt install curl -y

RUN apt install  php-fpm php-mysql vim -y 

COPY set_data_base.sh /

CMD ["/script.sh"]