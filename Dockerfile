FROM ubuntu
WORKDIR /home/kristina/laba2
COPY ./laba2.s .
RUN apt update
RUN apt install -y build-essential
RUN apt install -y vim
RUN gcc laba2.s -no-pie -o laba2 -g
ENTRYPOINT /bin/bash
