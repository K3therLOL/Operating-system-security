#!/usr/bin/env bash

log=metric

formated_stats() {
    echo -n "$(date +%H:%M:%S) " >> $log
    docker stats --no-stream | tail -n +2 | awk '{ print $3, $4, $14 }' >> $log
};

echo -n "" > $log
while [ -n $(docker ps -q) ]; do
    echo $(formated_stats)
done
