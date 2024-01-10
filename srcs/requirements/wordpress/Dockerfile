FROM debian:buster

RUN apt-get -y update

RUN apt-get -y install apt-utils

# Install dependencies

RUN apt-get install -y php-fpm php-mysql curl netcat

COPY config/www.conf /etc/php/7.3/fpm/pool.d/www.conf

# Install wordpress cli

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar

RUN mv wp-cli.phar /usr/local/bin/wp

# Add setup script

COPY tools/setup.sh /setup.sh

RUN chmod +x /setup.sh

WORKDIR /var/www/html

# Add wp-config.php

COPY config/wp-config.php ./wp-config.php

EXPOSE 9000

ENTRYPOINT [ "/setup.sh" ]