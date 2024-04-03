FROM debain:11.7

RUN apt update && apt upgade -y && apt install curl -y
RUN apt install mariadb-client -y
RUN apt-get install mariadb-server -y

COPY ./tools/*.sh .
RUN chmod 777 ./*.sh

CMD ["./script.sh"]