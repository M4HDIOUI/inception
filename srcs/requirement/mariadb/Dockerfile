FROM debian:bullseye

RUN apt-get update && apt-get install -y mariadb-server

EXPOSE 3306

COPY tools/script.sh /

RUN chmod +x script.sh && mkdir -p /run/mysqld/

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

CMD ["./script.sh"]
