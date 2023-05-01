FROM tomcat:latest
COPY /myshuttledev.war /usr/local/tomcat/webapps
EXPOSE 8080
ENTRYPOINT ["catalina.sh", "run"]
