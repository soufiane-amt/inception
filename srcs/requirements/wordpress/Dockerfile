FROM debian:buster

RUN apt-get update -y  && apt install curl -y && apt install  php-fpm php-mysql  -y 

COPY tools/script.sh /script.sh

RUN chmod +x /script.sh

WORKDIR /var/www/html

EXPOSE 9000

CMD ["/script.sh"]