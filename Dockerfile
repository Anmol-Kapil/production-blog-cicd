FROM eclipse-temurin:17-jdk-alpine

LABEL maintainer="Anmol Kapil"
LABEL application="Production Blog Application"
LABEL version="1.0.0"

WORKDIR /opt/app

COPY target/*.jar app.jar

EXPOSE 8080

ENV JAVA_OPTS=""

ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -jar app.jar"]