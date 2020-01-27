FROM tomcat:9.0.30-jdk13-openjdk-oracle

COPY ./out/artifacts/dock_servlet_war/dock-servlet_war.war  /usr/local/tomcat/webapps/eidiko.war
#docker build -t <name of the image> <location of the file> .
COPY ./lib/* /usr/bin/
COPY ./lib/* /usr/local/tomcat/lib/

EXPOSE 8080

CMD ["catalina.sh","run"]