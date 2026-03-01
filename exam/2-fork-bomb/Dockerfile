FROM ubuntu:latest

RUN apt-get update && apt-get install -y git gcc vim strace man-db

WORKDIR /ddos
RUN git clone https://github.com/K3therLOL/fork-bomb .
RUN chmod +x fork-bomb.sh
RUN chmod +x trace.sh
