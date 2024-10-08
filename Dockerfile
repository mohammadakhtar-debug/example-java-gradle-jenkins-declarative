# Use a base image with Java runtime environment
FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /app

# Copy the jar file into the container
COPY lib/build/libs/lib.jar /app/java-application.jar

# Specify the command to run the jar file
CMD ["java", "-jar", "/app/java-application.jar"]

# Expose the port your application will run on
EXPOSE 3000
