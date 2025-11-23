# Use a valid OpenJDK 17 slim image
FROM eclipse-temurin:17-jdk

# Set working directory
WORKDIR /app

# Install dependencies
RUN apt-get update && apt-get install -y wget ffmpeg

# Download Lavalink
RUN wget https://github.com/freyacodes/Lavalink/releases/download/3.10.10/Lavalink.jar

# Set environment variables (can override in Render)
ENV LAVALINK_PASSWORD=youshallnotpass
ENV LAVALINK_PORT=2333

# Expose Lavalink port
EXPOSE 2333

# Start Lavalink
CMD ["java", "-jar", "Lavalink.jar"]

