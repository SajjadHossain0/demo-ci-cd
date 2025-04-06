FROM maven:3.8.3-openjdk-17 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

FROM openjdk:17-jdk-slim
WORKDIR /app
COPY --from=build /app/target/demo_ci_cd-0.0.1-SNAPSHOT.jar demo_ci_cd.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "demo_ci_cd.jar"]











