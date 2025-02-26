#!/bin/bash

# Задача:
# Разработать сценарий-тестировщик, который будет тестировать ваши сценарии на различные входные данные.
# Первым аргументом данный сценарий должен принимать имя файла сценария, который необходимо протестировать. 

if [ $# -eq 0 ];
then
    echo "Usage: "$0" <script> [args...]" >&2
else
    ARGS=$(echo "$*" | awk '{ $1=""; print $0 }' )
    echo "${ARGS}"
    "$1" "${ARGS}"
fi
