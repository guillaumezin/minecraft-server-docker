# Use OpenJDK JRE image for runtime

# If 64 bits OS
#FROM openjdk:11-jre-slim AS run

# If 32 bits OS on RPi
FROM arm32v7/openjdk:11-jre-slim AS run

# Create minecraft user
RUN useradd --user-group \
            --no-create-home \
            --home-dir /data \
            --shell /usr/sbin/nologin \
            minecraft

# Ports
EXPOSE 19132/udp

RUN mkdir /data
RUN mkdir /home/minecraft
RUN mkdir /app
RUN chown -R minecraft:minecraft /app /data /home/minecraft

# User and group to run as
USER minecraft:minecraft

# Volumes
VOLUME /data /home/minecraft

# Set runtime workdir
WORKDIR /data

# Run app
ENTRYPOINT ["java"]
CMD [ "-Xmx512M", "-Xms64M", "-jar", "/app/nukkit.jar" ]
