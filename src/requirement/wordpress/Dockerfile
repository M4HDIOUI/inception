FROM debian:bullseye

RUN apt-get update && apt-get install -y \
    wget \
    php7.4 \
    php7.4-fpm \
    php-mysql \
    mariadb-client
RUN wget https://fr.wordpress.org/wordpress-6.0-fr_FR.tar.gz -P /var/www
RUN cd /var/www && tar -xzf wordpress-6.0-fr_FR.tar.gz && rm wordpress-6.0-fr_FR.tar.gz
RUN chown -R root:root /var/www/wordpress
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

# Create the required directory for PHP socket
RUN mkdir -p /run/php && chown -R www-data:www-data /run/php

COPY conf/auto_config.sh /usr/local/bin/auto_config.sh


RUN chmod +x /usr/local/bin/auto_config.sh

ENTRYPOINT ["/usr/local/bin/auto_config.sh"]

EXPOSE 9000