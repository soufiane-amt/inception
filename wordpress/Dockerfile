FROM debian:buster

RUN apt-get update -y 

RUN apt install curl -y

# RUN apt install  php-fpm php-mysql vim -y 

RUN apt install php-cgi \
	php-mysql \
	php-fpm \
	php-pdo \
	php-gd php-cli \
	php-mbstring -y 

COPY script.sh /

RUN chmod +x /script.sh


CMD ["/script.sh"]