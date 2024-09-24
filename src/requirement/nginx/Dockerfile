FROM debian:bullseye

RUN apt-get update -y && apt-get upgrade -y

RUN mkdir -p /etc/nginx/ssl

RUN apt-get install -y nginx openssl

RUN  openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=MA/ST=Béni Mellal-Khénifra/L=Khouribga/O=42/OU=42/CN=omahdiou.42.fr/UID=omahdiou"

RUN mkdir -p /var/run/nginx

COPY conf/nginx.conf /etc/nginx/nginx.conf

# RUN chmod +x /usr/local/bin/auto_config.sh

RUN chmod 755 /var/www/html

RUN chown -R www-data:www-data /var/www/html 

CMD [ "nginx", "-g", "daemon off;" ]
CMD [ "nginx", "-g", "daemon off;" ]