FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN dpkg --add-architecture i386 && apt-get update && \
    apt-get install -y wine32 wine p7zip-full

WORKDIR /opt/neverhood
COPY Neverhood.iso .
COPY setup.sh .

RUN 7z x Neverhood.iso

ENTRYPOINT ["/bin/bash", "setup.sh"]
