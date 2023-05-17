# FROM debian:buster

# RUN apt update -y && apt install -y mariadb-server


# COPY script.sh /var/www/


# COPY my.cnf /etc/mysql/my.cnf


# RUN chmod +x /var/www/script.sh


# ENTRYPOINT ["/var/www/script.sh"]

FROM debian:buster

RUN apt update && apt install -y mariadb-server

COPY tools /var/www/

RUN chmod +x /var/www/script.sh

ENTRYPOINT [ "/var/www/script.sh"] 