#!/bin/bash

# Задача:
# Разработать программу "Good morning", которая:
# 1. Пожелает пользователю доброго утра
# 2. Выведет текущее время и календарь на текущий месяц.
# 3. Выведет список дел из файла TODO домашнего каталога пользователя.


FILE=~/TODO

clear
echo "Good Morning!"
echo

date
cal

if [ -f "${FILE}" ];
then
    cat ${FILE}
else
    echo "You have nothing to do today!"
fi
