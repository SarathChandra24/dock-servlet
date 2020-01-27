FROM mysql
ENV MYSQL_DATABASE eidiko
ENV MYSQL_ROOT_PASSWORD password
RUN mkdir  /usr/sarath/
RUN mkdir /usr/sarath/shfiles
COPY ./dump.sql /docker-entrypoint-initdb.d/
#COPY ./mysql_import.sh /docker-entrypoint-initdb.d/
#run command is only for the os services like mkdir, rmdir

#CMD mysql -uroot -h 127.0.0.1 -p$MYSQL_ROOT_PASSWORD sys < /usr/sarath/eidiko_bank_creation.sql
#CMD mysql -uroot -h 127.0.0.1 -p$MYSQL_ROOT_PASSWORD eidiko < /usr/sarath/eidiko_bank_credit_card_table.sql
#CMD mysql -uroot -h 127.0.0.1 -p$MYSQL_ROOT_PASSWORD eidiko < /usr/sarath/eidiko_bank_customer_details.sql

EXPOSE 3306