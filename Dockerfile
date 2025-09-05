# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jre-slim

# Set working directory inside the container
WORKDIR /app

# Copy the built JAR from your target directory into the container
COPY target/jenkins-docker-app-1.0-SNAPSHOT.jar app.jar

# Run the JAR file
CMD ["java", "-jar", "app.jar"]
