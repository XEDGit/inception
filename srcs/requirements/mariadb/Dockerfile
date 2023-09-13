FROM debian:bookworm

RUN apt-get -y update

RUN apt-get -y install mariadb-server

RUN mkdir -p /var/log/mysql 

COPY my.cnf /etc/my.cnf

COPY setup.sh /setup.sh

RUN chmod +x /setup.sh

EXPOSE 3306

ENTRYPOINT [ "/setup.sh" ]