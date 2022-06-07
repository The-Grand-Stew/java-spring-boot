FROM maven:latest as builder

COPY . /usr/local/app
WORKDIR /usr/local/app

RUN mvn clean install 
CMD ["java", "-jar", "target/input2-artifact-0.0.1-SNAPSHOT.jar"]
EXPOSE 8080
