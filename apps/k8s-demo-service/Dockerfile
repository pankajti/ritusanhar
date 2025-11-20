# 1️⃣ Build stage — compile the Spring Boot app
FROM eclipse-temurin:17-jdk AS builder
WORKDIR /app

# Copy everything to the container
COPY . .

# Build the application using Maven Wrapper
RUN ./mvnw clean package -DskipTests


# 2️⃣ Run stage — lightweight JVM image
FROM eclipse-temurin:17-jre
WORKDIR /app

# Copy only the final JAR from the build stage
COPY --from=builder /app/target/k8s-demo-service-0.0.1-SNAPSHOT.jar app.jar

# Run the application
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
