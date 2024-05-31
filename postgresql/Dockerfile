FROM postgres:latest

COPY ./createtable.sql /home/createtable.sql
COPY ./seridata.sql /home/seridata.sql
COPY ./init-db.sh /docker-entrypoint-initdb.d/init-db.sh
