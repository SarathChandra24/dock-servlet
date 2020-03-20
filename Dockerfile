FROM tomcat:9.0.30-jdk13-openjdk-oracle

MAINTAINER sarathchandraoruganti@gmail.com

#docker build -t <name of the image> <location of the file> .
COPY ./lib/* /usr/bin/
COPY ./lib/* /usr/local/tomcat/lib/

COPY ./out/artifacts/dock_servlet_war/dock-servlet_war.war  /usr/local/tomcat/webapps/eidiko.war
#Please change the location of the wat file in the place of COPY

EXPOSE 8080

CMD ["catalina.sh","run"]

#docker build -t sarathchandra24/eid-tomcat .
#docker run --net dock-servlet_default --ip 172.18.0.5 -p 9080:8080 --name sarath-tomcat sarathchandra24/eid-tomcat
