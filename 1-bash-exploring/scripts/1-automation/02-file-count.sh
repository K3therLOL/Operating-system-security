#!/bin/bash

# Задача:
# Вывести количество файлов в домашнем каталоге, которые заканчиваются на .txt. 

find ${HOME} -type f -name "*.txt" | wc -l | tail -n1
