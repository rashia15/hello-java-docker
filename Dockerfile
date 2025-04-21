# Use a Maven image to build the app
FROM maven:3.9.3-eclipse-temurin-17 as builder

# Set working directory
WORKDIR /app

# Copy the pom and source code
COPY pom.xml .
COPY src ./src

# Package the app
RUN mvn clean package -DskipTests

# ----------- Runtime stage ------------
FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

# Copy the jar from the builder stage
COPY --from=builder /app/target/*.jar app.jar

# Expose port
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
