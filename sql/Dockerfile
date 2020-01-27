FROM mysql
ENV MYSQL_DATABASE eidiko
ENV MYSQL_ROOT_PASSWORD sarasu10
RUN mkdir  /usr/sarath/
RUN mkdir /usr/sarath/shfiles
COPY ./dump.sql /docker-entrypoint-initdb.d/
#COPY ./mysql_import.sh /docker-entrypoint-initdb.d/
#run command is only for the os services like mkdir, rmdir

#CMD mysql -uroot -h 127.0.0.1 -p$MYSQL_ROOT_PASSWORD sys < /usr/sarath/eidiko_bank_creation.sql
#CMD mysql -uroot -h 127.0.0.1 -p$MYSQL_ROOT_PASSWORD eidiko < /usr/sarath/eidiko_bank_credit_card_table.sql
#CMD mysql -uroot -h 127.0.0.1 -p$MYSQL_ROOT_PASSWORD eidiko < /usr/sarath/eidiko_bank_customer_details.sql
EXPOSE 3306

#docker build -t sarathchandra24/mysql:latest .

#create a network

#docker network create --subnet=172.18.0.0/16 dock-servlet_default

#docker run --net dock-servlet_default --ip 172.18.0.6 -p 9306:3306 --name sarath-sql sarathchandra24/eid-mysql:latest