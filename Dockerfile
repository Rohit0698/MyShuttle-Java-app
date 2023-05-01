FROM tomcat:latest
RUN aws s3 cp s3://myshuttleartifact/myshuttledev.war /usr/local/tomcat/webapps
EXPOSE 8080
ENTRYPOINT ["catalina.sh", "run"]
