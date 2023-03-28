FROM maven:latest AS build
COPY src /app/src
COPY pom.xml /app
RUN mvn verify --fail-never
RUN mvn -f /app/pom.xml clean package

FROM ubuntu:lunar
RUN apt-get update && apt-get install -y openjdk-17-jre
COPY --from=build /app/target/maven-docker-0.0.1-SNAPSHOT.jar /usr/local/lib/maven-docker.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/usr/local/lib/maven-docker.jar"]
