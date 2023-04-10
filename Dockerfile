#Create a dockerfile that extends linuxserver/code-server, but adds java
FROM linuxserver/code-server:latest
USER root
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections


RUN apt-get update && apt-get install -y -q --no-install-recommends \
        ca-certificates \
        curl \
        wget \
	gh \

