# Use the official OpenJDK image for Java 11 as a base image
FROM openjdk:11-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the built JAR file from the target directory to the container
# Assuming your jar is named "my-spring-login-app.jar" after building with Maven.
# If not, replace with the correct jar file name or use a wildcard if you're not sure.
COPY target/*.jar /app/my-spring-login-app.jar

# Expose port 10004 to the outside world
EXPOSE 10004

# The entry point to run the jar file
CMD ["java", "-jar", "/app/my-spring-login-app.jar"]
