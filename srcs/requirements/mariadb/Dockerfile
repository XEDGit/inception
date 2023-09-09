FROM debian:bookworm

RUN apt-get -y update

RUN apt-get -y install mariadb-server

EXPOSE 3306

COPY setup.sh /setupp.sh

RUN chmod +x /setupp.sh

ENTRYPOINT [ "/setupp.sh" ]