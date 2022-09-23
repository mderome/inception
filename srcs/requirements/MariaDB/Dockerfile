FROM Debian:Buster

RUN apt-get update
RUN apt-get install -y mariadb-server mariadb-client gettext-base

COPY ./conf/server.cnf /etc/mysql/mariadb.conf.d/server.cnf
COPY ./tools/scripth.sh /var/.
COPY ./tools/init.sql /var/.

CMD ["sh", "/var/scrip.sh"]