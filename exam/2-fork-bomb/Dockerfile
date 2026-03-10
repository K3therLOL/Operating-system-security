FROM ubuntu:latest

RUN apt-get update && apt-get install -y git gcc vim strace openssh-client tmux psmisc

RUN git config --global user.email "g3roylol@gmail.com"
RUN git config --global user.name "kether"

WORKDIR /ddos
RUN git clone https://github.com/K3therLOL/fork-bomb .
RUN git init
RUN git branch -M main
RUN git remote set-url origin git@github.com:K3therLOL/Fork-bomb.git

RUN chmod +x fork-bomb.sh
RUN chmod +x trace.sh
RUN chmod +x stats.sh
RUN chmod +x defend.sh
