# Вывести на экран дату, время, список активных пользователей в системе на данный момент, 
# время работы системы с момента последней перезагрузки.

#!/bin/bash

USERS=$(cat /etc/passwd | cut -d: -f1)
UPTIME=$(uptime -p)

clear
date
echo

echo "Active users:"
echo "${USERS}"

echo
echo -n "system "
echo "${UPTIME}"
