FROM mysql:5.7.30

ENV MYSQL_ALLOW_EMPTY_PASSWORD=yes

COPY ./wordpress.sql /docker-entrypoint-initdb.d/
