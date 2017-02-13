FROM openjdk:8-jre
VOLUME /tmp
ADD JavaHelloWorldApp-1.0-SNAPSHOT.war app.jar
RUN sh -c 'touch /app.jar'
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]
EXPOSE 80
