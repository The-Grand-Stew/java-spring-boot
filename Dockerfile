# Build app
FROM maven:latest as build
# The following environment variables are necessary to build the file
ARG SERVER_PORT
ARG DB_HOST
ARG DB_PORT
ARG DB_NAME
ARG DB_USER
ARG DB_PASSWORD
# Copy codebase and create executable jar file 
# Skip unit tests: they'll fail due to lack of a db up & running at build time
COPY . /usr/local/app
WORKDIR /usr/local/app
RUN mvn clean install -Dmaven.test.skip=true

# Deploy and run app
FROM eclipse-temurin:17-jre-alpine as deploy
COPY --from=build /usr/local/app/target .
CMD ["java", "-jar", "./artifact-0.0.1-SNAPSHOT.jar"]
