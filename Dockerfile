FROM ubuntu:14.04.4

RUN apt-get update && apt-get install kmod
COPY longhorn /usr/local/bin
COPY start-controller /usr/local/bin

ENTRYPOINT ["start-controller"]
