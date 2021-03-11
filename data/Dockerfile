# Running on tomcat 8.5 with java development kit version 11
FROM tomcat:8.5-jdk11

MAINTAINER Hoang Nguyen "ngpbhoang1406@gmail.com"

# Adding application layer: SQLSI web-archive
# To test : http://localhost:8080/sqlsirest/
COPY ./sqlsirest.war /usr/local/tomcat/webapps/

# Adding presentation layer: SQLSI Website interface
# To test : http://localhost:8080/sqlsi/
RUN mkdir /usr/local/tomcat/webapps/sqlsi
COPY ./index.html /usr/local/tomcat/webapps/sqlsi
COPY ./sqlsi.js /usr/local/tomcat/webapps/sqlsi
COPY ./styles.css /usr/local/tomcat/webapps/sqlsi
COPY ./elm-logo.svg /usr/local/tomcat/webapps/sqlsi
COPY ./VGU2c.png /usr/local/tomcat/webapps/sqlsi
COPY ./favicon.png /usr/local/tomcat/webapps/sqlsi

# Run Tomcat catalina shell
CMD ["catalina.sh", "run"]

# docker image build -t testing-webapp .
# docker run -d --name mytomcat -p 8080:8080 testing-webapp
# docker run --name mytomcat -p 8080:8080 --link mysqlstandalone:mysql -d testing-webapp