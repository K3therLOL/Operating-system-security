#!/bin/bash

# Задача:
# Разработать сценарий, который для bash.txt (созданного ранее):

# сохранит строки, которые содержат сочетание символов 000000 в файл /tmp/zeros;
# сохранит строки, которые не содержат сочетания символов 000000 - в файл /tmp/nozeros;
# выведет 10 первых и 10 последних строк от каждого из файлов /tmp/zeros и /tmp/nozeros.

BIN=/bin/bash
FILE=bash.txt
ZERO=/tmp/zeroes
NOZERO=/tmp/nozeroes

od ${BIN} > ${FILE}

grep "000000" ${FILE} > ${ZERO}
grep -v "000000" ${FILE} > ${NOZERO}

echo "${ZERO} file:"
head -n 10 ${ZERO}
echo
tail -n 10 ${ZERO}
echo
echo "${NOZERO} file:"
head -n 10 ${NOZERO}
echo
tail -n 10 ${NOZERO}

rm ${FILE}
