FROM debian:latest

RUN apt-get update && apt-get install -y mariadb-server


# RUN mkdir -p /var/lib/mysql

COPY script.sh /

RUN chmod +x script.sh


CMD ["/script.sh"]

# CMD ["/usr/bin/mysqld_safe"]
# CMD ["ls -al"]
