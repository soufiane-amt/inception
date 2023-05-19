FROM debian:buster

RUN apt-get update -y 

RUN apt install curl -y

RUN apt install  php-fpm php-mysql  -y 

COPY tools/script.sh /

RUN chmod +x /script.sh

WORKDIR /var/www/html

EXPOSE 9000

CMD ["/script.sh"]