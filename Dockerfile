FROM alpine:latest
#openjdk:17-jdk
# Update and install necessary packages


RUN apk update && apk add --no-cache openjdk21-jdk bash
#RUN apt-get update && apt-get install -y \
#    openjdk-21-jdk \
#    && rm -rf /var/lib/apt/lists/*

# Set the working directory inside the container
WORKDIR /app

COPY build/libs/demo-0.0.1-SNAPSHOT.jar .
COPY src/main/resources/application.properties /app/config/application.properties

EXPOSE 8080

#CMD ["uname", "-a"]
CMD ["java", "-jar", "demo-0.0.1-SNAPSHOT.jar", "--spring.config.location=/app/config/application.properties"]