FROM arm64v8/alpine
#alpine:latest

RUN apk update && apk add --no-cache openjdk21-jdk bash

WORKDIR /app

COPY build/libs/demo-0.0.1-SNAPSHOT-rasp.jar .
COPY src/main/resources/application.properties /app/config/application.properties

EXPOSE 8080

CMD ["java", "-jar", "demo-0.0.1-SNAPSHOT.jar", "--spring.config.location=/app/config/application.properties"]
