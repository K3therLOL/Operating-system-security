# Вывести количество файлов в домашнем каталоге, которые заканчиваются на .txt. 

#!/bin/bash
find ${HOME} -type f -name "*.txt" | wc -l | tail -n1
