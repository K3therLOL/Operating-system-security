FROM ubuntu:latest

RUN apt-get update && apt-get install -y git gcc vim strace man-db openssh-client tmux

RUN git config --global user.email "g3roylol@gmail.com"
RUN git config --global user.name "kether"

WORKDIR /reverse-engineering

RUN git clone https://github.com/artemtsygankov/linux-course.git
RUN mv linux-course/2_sem/raw.run .
RUN rm -rf linux-course
