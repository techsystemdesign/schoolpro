# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jre-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the container at /app
COPY target/thymeleaf-crud-example-0.0.1-SNAPSHOT.jar /app/schoolpro.jar

# Specify the command to run your application
ENTRYPOINT ["java", "-jar", "schoolpro.jar"]
