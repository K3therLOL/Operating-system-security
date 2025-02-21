# Вывести количество процессов, запущенных от имени текущего и от имени пользователя root в формате:
# Процессов пользователя:
# <User>
# XX
# Процессов пользователя root:
# YY

#!/bin/bash

USER_COUNT=$(( $(top -b -n1 -u="${USER}" | wc -l) - 7 ))
ROOT_COUNT=$(( $(top -b -n1 -u="root" | wc -l) - 7 ))

clear
echo "Процессов пользователя:"
echo "${USER}"
echo "${USER_COUNT}"
echo "Процессов пользователя root:" 
echo "${ROOT_COUNT}"
