# Разработать сценарий, который создаёт каталог /tmp/shared и устанавливает на него права доступа rwxrwxrwx.

#!/bin/bash
DIR=/tmp/shared
MODE=777
mkdir $DIR
chmod $MODE $DIR
