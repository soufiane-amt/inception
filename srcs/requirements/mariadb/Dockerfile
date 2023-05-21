FROM debian:buster

RUN apt update && apt install -y mariadb-server

COPY tools /var/www/

RUN chmod +x /var/www/script.sh

EXPOSE 3306

CMD [ "/var/www/script.sh"] 