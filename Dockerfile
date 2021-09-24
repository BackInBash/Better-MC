FROM ubuntu:latest

RUN ["apt-get", "update"]
RUN ["apt-get", "-y", "upgrade"]
RUN ["apt-get", "install", "-y", "openjdk-8-jre-headless"]

COPY ["server", "/opt"]
COPY ["eula.txt", "/opt"]
COPY ["server.properties", "/opt"]

WORKDIR /opt

ENTRYPOINT [ "bash", "start.sh" ]