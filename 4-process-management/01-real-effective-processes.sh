#!/bin/bash

# Задача: 
# 1. Найти в системе все процессы, у которых различаются реальные и эффективные пользовательские идентификаторы.
# 2. Для обнаруженных процессов вывести имя программы.

echo "Processes with difference in ruid and euid:"
ps -eo ruser,user,comm | tail -n +2 | awk '{ if ($1 != $2) print $3}'
