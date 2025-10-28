# Start with a lightweight OpenJDK image
FROM eclipse-temurin:17-jdk-alpine

# Set working directory inside the container
WORKDIR /app

# Copy the built jar file into the container
# Make sure the jar name matches your build output
COPY target/article_hub-0.0.1-SNAPSHOT.jar /app/article-hub.jar

# Set environment variables for JVM options
ENV JAVA_OPTS="-Duser.timezone=Asia/Kolkata -Dspring.profiles.active=docker"

# Expose the port your Spring Boot app runs on
EXPOSE 8080

# Run the Spring Boot app with JVM options
ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -jar /app/article-hub.jar"]
