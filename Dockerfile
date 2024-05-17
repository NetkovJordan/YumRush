# Use JDK 17
FROM openjdk:17-jdk
LABEL author="jordan.netkov"
# Create directory inside container of yumrush application
WORKDIR /app

# Copy .jar file from the target directory to the container (First we do mvn clean install)
COPY target/fooddeliverysystem-0.0.1-SNAPSHOT.jar /app/fooddeliverysystem-0.0.1-SNAPSHOT.jar

# Expose port 8080
EXPOSE 8080

# Run command inside container to execute .jar file and run the app
CMD ["java", "-jar", "fooddeliverysystem-0.0.1-SNAPSHOT.jar"]
