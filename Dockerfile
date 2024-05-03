FROM openjdk:8-jdk-alpine
WORKDIR /usr/src/app
ARG JAR_FILE
COPY ${JAR_FILE} /usr/src/app/app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/usr/src/app/app.jar"]