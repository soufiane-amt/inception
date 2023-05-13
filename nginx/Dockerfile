FROM debian:buster

RUN apt update -y

RUN apt install nginx -y

RUN mkdir openssl && cd openssl

COPY set_data_base.sh /

CMD ["/script.sh"]