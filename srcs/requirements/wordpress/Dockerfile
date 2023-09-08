FROM debian:bookworm

RUN apt-get -y update

# install depencencies
RUN apt-get install -y php-fpm wget

COPY setup.sh /setup.sh

RUN chmod +x /setup.sh

ENTRYPOINT [ "/setup.sh" ]