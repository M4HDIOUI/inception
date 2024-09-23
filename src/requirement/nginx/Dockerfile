FROM debian:11.7

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install -y nginx openssl    \
    apt-get install -y vim curl         \
    mkdir -p /etc/nginx/ssl             \
    openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=MA/ST=Béni Mellal-Khénifra/L=Khouribga/O=42/OU=42/CN=omahdiou.42.fr/UID=omahdiou" \
    mkdir -p /vpar/run/nginx             \

COPY conf/nginx.conf /etc/nginx/nginx.conf

RUN chmod 755 /var/www/html                     \
    chown -R www-data:www-data /var/www/html    \

CMD [ "nginx", "-g", "daemon off;" ]

EXPOSE 9000