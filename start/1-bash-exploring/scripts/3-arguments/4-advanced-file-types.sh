#!/bin/bash

# Задание:
# Разработать сценарий, который выводит файлы из передаваемого пользователем каталога в следующем порядке:
# 1. Каталоги.
# 2. Обычные файлы.
# 3. Символьные ссылки.
# 4. Символьные устройства.
# 5. Блочные устройства.

MODE=$( ls -ld $1 | cut -c1 )

if [ "x$1" == "x" ];
then
    echo "Usage: $0 <directory>" >&2
elif [ "${MODE}" != "d" ];
then
    echo "Not a directory" >&2
else
    echo "Каталоги:"
    ls -l "$1" | grep ^d
    echo

    echo "Обычные файлы:"
    ls -l "$1" | grep ^-
    echo

    echo "Символьные ссылки:"
    ls -l "$1" | grep ^l
    echo

    echo "Символьные устройства:"
    ls -l "$1" | grep ^c
    echo

    echo "Блочные устройства:"
    ls -l "$1" | grep ^b
    echo
fi
