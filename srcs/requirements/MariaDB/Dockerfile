FROM debian:buster

RUN apt-get update
RUN apt-get install -y mariadb-server mariadb-client gettext-base

WORKDIR /home/mderome/inception/srcs/requirements/MariaDB/

COPY ./conf/server.cnf /etc/mysql/mariadb.conf.d/server.cnf

WORKDIR /home/mderome/inception/requirements/MariaDB/

COPY ./tools/script.sh /var/.

WORKDIR /home/mderome/inception/requirements/MariaDB/

COPY ./tools/init.sql /var/.

CMD ["sh", "/var/scrip.sh"]
