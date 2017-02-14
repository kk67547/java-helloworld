FROM tomcat:7

RUN rm -rf /usr/local/tomcat/webapps/ROOT

ADD JavaHelloWorldApp.war /usr/local/tomcat/webapps/ROOT.war

CMD ["catalina.sh", "run"]

EXPOSE 8080
