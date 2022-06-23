FROM maven:latest as build
ARG SERVER_PORT
ARG DB_HOST
ARG DB_PORT
ARG DB_NAME
ARG DB_USER
ARG DB_PASSWORD
COPY . /usr/local/app
WORKDIR /usr/local/app
RUN mvn clean install 

FROM eclipse-temurin:17-jre-alpine as deploy
COPY --from=build /usr/local/app/target .
CMD ["java", "-jar", "./artifact-0.0.1-SNAPSHOT.jar"]
