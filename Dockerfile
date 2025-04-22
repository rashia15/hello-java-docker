# Use OpenJDK base image
FROM openjdk:17

# Set working directory
WORKDIR /app

# Copy the Java file
COPY HelloWorld.java .

# Compile the Java file
RUN javac HelloWorld.java

EXPOSE 8000

# Run the program
CMD ["java", "HelloWorld"]
