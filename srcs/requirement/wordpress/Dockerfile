FROM debian:bullseye

RUN apt-get update \
    && apt-get install -y php php7.4-fpm wget php-mysql \
    && mkdir -p /var/www/html && \
    cd /var/www/html && rm -rf *

COPY tools/auto_config.sh /usr/local/bin/auto_config.sh

RUN chmod +x /usr/local/bin/auto_config.sh

EXPOSE 9000

CMD ["/usr/local/bin/auto_config.sh"]