FROM debian:bookworm

RUN apt-get -y update

RUN apt-get install -y php-fpm php-mysql wget

EXPOSE 9000

COPY setup.sh /setup.sh

RUN chmod +x /setup.sh

ENTRYPOINT [ "/setup.sh" ]