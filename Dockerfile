# Use OpenJDK 17 (slim variant)
FROM eclipse-temurin:17-jdk-focal

# Set working directory
WORKDIR /app

# Install dependencies
RUN apt-get update && apt-get install -y wget ffmpeg

# Download Lavalink JAR (latest stable release)
RUN wget https://github.com/lavalink-devs/Lavalink/releases/download/4.1.1/Lavalink.jar

# Expose Lavalink port
EXPOSE 2333

# Start Lavalink
CMD ["java", "-jar", "Lavalink.jar"]
