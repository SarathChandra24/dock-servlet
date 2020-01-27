FROM ubuntu:latest
MAINTAINER Sarath Chandra Oruganti "sarathchandraoruganti@gmail.com"

RUN echo "deb http://cn.archive.ubuntu.com/ubuntu/ xenial main restricted universe multiverse" >> /etc/apt/sources.list

RUN echo "mysql-server mysql-server/root_password password root" | debconf-set-selections
RUN echo "mysql-server mysql-server/root_password_again password root" | debconf-set-selections

RUN apt-get update && \
	apt-get -y install mysql-server && \
	mkdir -p /var/lib/mysql && \
	mkdir -p /var/run/mysqld && \
	mkdir -p /var/log/mysql && \
	chown -R mysql:mysql /var/lib/mysql && \
	chown -R mysql:mysql /var/run/mysqld && \
	chown -R mysql:mysql /var/log/mysql


# UTF-8 and bind-address
RUN sed -i -e "$ a [client]\n\n[mysql]\n\n[mysqld]"  /etc/mysql/my.cnf && \
	sed -i -e "s/\(\[client\]\)/\1\ndefault-character-set = utf8/g" /etc/mysql/my.cnf && \
	sed -i -e "s/\(\[mysql\]\)/\1\ndefault-character-set = utf8/g" /etc/mysql/my.cnf && \
	sed -i -e "s/\(\[mysqld\]\)/\1\ninit_connect='SET NAMES utf8'\ncharacter-set-server = utf8\ncollation-server=utf8_unicode_ci\nbind-address = 0.0.0.0/g" /etc/mysql/my.cnf

VOLUME /var/lib/mysql

COPY ./docker-entrypoint.sh /root/docker-entrypoint.sh
RUN chmod +x /root/startup.sh

ENTRYPOINT ["/root/docker-entrypoint.sh"]
RUN mkdir  /usr/sarath
COPY ./*.sql  /usr/sarath/
CMD mysql -usarath -h 127.0.0.1 -ppassword sys < /usr/sarath/eidiko_bank_credit_card_table.sql
CMD mysql -usarath -h 127.0.0.1 -ppassword sys < /usr/sarath/eidiko_bank_customer_details.sql
EXPOSE 3306
CMD ["/usr/bin/mysqld_safe"]


#docker run --name mysqlDB -e MYSQL_ROOT_PASSWORD="password" -d sarath-sql

# mysql -u root -ppassword sys < /usr/sarath/eidiko_bank_creation.sql

#mysql -u root -h 127.0.0.1 -p


#docker cp .*  7633fede4b1b82e2d3a7eda57b4130dbf579137804c542c84da889720f7d80d6:/usr/sarath/
#docker build -t <image name>:<tag> .
#docker run --name mysqlDB -e MYSQL_ROOT_PASSWORD="T0nwhy@$$@" -d sarath-test
