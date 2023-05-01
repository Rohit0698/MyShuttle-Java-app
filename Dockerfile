FROM tomcat:latest
RUN apt-get update && \
    apt-get install -y awscli
ENV AWS_ACCESS_KEY_ID=AKIA5QBKAIF4OCW2PSVV
ENV AWS_SECRET_ACCESS_KEY=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
RUN aws s3 cp s3://myshuttleartifact/myshuttledev.war /usr/local/tomcat/webapps
EXPOSE 8080
ENTRYPOINT ["catalina.sh", "run"]
