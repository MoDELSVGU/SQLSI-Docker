FROM mysql:5.7

MAINTAINER Hoang Nguyen "ngpbhoang1406@gmail.com"

ENV MYSQL_DATABASE=sqlsi2021 \
    MYSQL_ROOT_PASSWORD=password

COPY sql-auth-functions.sql ./

ADD init.sql /docker-entrypoint-initdb.d
ADD inject-sql-auth-functions.sh /docker-entrypoint-initdb.d
# RUN mysql -u root -p password < sql-auth-functions.sql

EXPOSE 3306