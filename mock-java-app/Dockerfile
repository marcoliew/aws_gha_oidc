# Build stage (with test capabilities)
FROM maven:3.8.6-eclipse-temurin-17 AS build
WORKDIR /app
COPY . .
RUN mvn -B verify

# Production stage
FROM eclipse-temurin:17-jre-jammy
COPY --from=build /app/target/*.jar /app.jar
CMD ["java", "-jar", "/app.jar"]