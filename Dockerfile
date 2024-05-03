FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAR_FILE
COPY ${JAR_FILE} /app.jar
RUN mkdir /datadog
RUN chmod 777 /datadog
COPY datadog/dd-java-agent.jar /datadog
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]