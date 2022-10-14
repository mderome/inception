FROM debian:buster


RUN apt update -y && apt install mariadb-server mariadb-client gettext-base -y

RUN chown -R mysql:mysql /var/lib/mysql
RUN chmod -R go-rx /var/lib/mysql

COPY ./conf/server.cnf /etc/mysql/mariadb.conf.d/server.cnf

COPY ./tools/script.sh /var/.

COPY ./tools/init.sql /var/.

CMD ["sh", "/var/script.sh"]