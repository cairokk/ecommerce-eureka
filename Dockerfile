# Etapa de build (opcional, se você quiser compilar o projeto no Docker)
# FROM maven:3.9.6-eclipse-temurin-17 AS build
# WORKDIR /app
# COPY . .
# RUN mvn clean package -DskipTests

# Etapa de runtime
FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app
COPY target/Eureka-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8761
ENTRYPOINT ["java", "-jar", "app.jar"]
