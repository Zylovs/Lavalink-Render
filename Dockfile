# Use OpenJDK 17
FROM openjdk:17-jdk-slim

# Set work directory
WORKDIR /app

# Download Lavalink
RUN apt-get update && apt-get install -y wget ffmpeg
RUN wget https://github.com/freyacodes/Lavalink/releases/download/3.10.10/Lavalink.jar

# Set environment variables
ENV LAVALINK_PASSWORD=youshallnotpass
ENV LAVALINK_PORT=2333

# Expose port
EXPOSE 2333

# Run Lavalink
CMD ["java", "-jar", "Lavalink.jar"]

