FROM debian:buster

RUN apt-get update -y && apt-get install -y mariadb-server


COPY set_data_base.sh /

RUN chmod +x set_data_base.sh


CMD ["/set_data_base.sh"]

