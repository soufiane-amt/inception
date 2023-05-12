FROM debian:buster

RUN apt update -y

RUN apt install nginx -y

COPY set_data_base.sh /

CMD ["/script.sh"]