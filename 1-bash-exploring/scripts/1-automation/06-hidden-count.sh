#!/bin/bash

# Задача:
# Подсчитать количество файлов, количество скрытых файлов в домашнем каталоге текущего пользователя и 
# вывести результат в формате:

# Домашний каталог пользователя
# <User>
# содержит обычных файлов:
# XX
# скрытых файлов:
# YY


ALL_FILES=$(ls -la ${HOME} | wc -l)
USUAL_FILES=$(ls -l ${HOME} | wc -l)

clear
echo "Домашний каталог пользователя"
echo "$USER"
echo "содержит обычных файлов:"
echo "$(( ${USUAL_FILES} - 1 ))"
echo "скрытых файлов:"
echo "$(( ${ALL_FILES} - ${USUAL_FILES} ))"
