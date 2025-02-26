#!/bin/bash

# Задача: 
# Разработать сценарий, который для всех файлов с расширением txt в домашнем каталоге пользователя:
# выведет список таких файлов;
# выведет суммарный размер в байтах и строках для файлов с расширением txt.

TMP=/tmp/file

find ${HOME} -type f -name "*.txt" > ${TMP} 

cat ${TMP} | less

echo -n "Number of lines: "
wc -l < ${TMP}

echo -n "Number of bytes: "
wc -c < ${TMP}

rm ${TMP}
