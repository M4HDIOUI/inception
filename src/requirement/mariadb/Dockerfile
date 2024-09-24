FROM debian:bullseye

RUN apt-get update && apt-get upgrade -y      
RUN apt-get install mariadb-server -y
    # apt install curl -y                     \
    # apt install mariadb-client -y           \

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY ./tools/*.sh .

RUN chmod 777 script.sh

CMD ["./script.sh"]

EXPOSE 443