FROM openjdk:8-jdk-alpine
COPY ./resources .
ENTRYPOINT ["java", "-jar", "wiremock-standalone-2.20.0.jar", "--verbose"]