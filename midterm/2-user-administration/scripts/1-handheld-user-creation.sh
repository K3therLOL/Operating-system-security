#!/bin/bash

# Задание:
# Создать вручную пользователя системы linux

if [ $# -ne 1 ];
then
    echo "Usage: $0 <username>" >&2
    exit 1
fi

# Ищем свободный UID

# Считываем максимальное возможное значение UID из /etc/login.defs
UID_MAX=$(grep -w "UID_MAX" /etc/login.defs | awk '{ print $2 }')

# Считываем все занятые UID
UID_LIST=$(awk -F: '{ print $3 }' /etc/passwd)

# Проверяем, что рандомный UID не занят и не более UID_MAX
USER_UID=${RANDOM}
while [[ ${USER_UID} -gt ${UID_MAX} || -n "$( echo ${UID_LIST} | grep -w ${USER_UID} )" ]] 
do
    USER_UID=${RANDOM}
done

USER_GID=${USER_UID}
USER_NAME="$1"

# Формируем строчку для /etc/passwd
PASSWD_STR=$(grep -w "^${USER}" /etc/passwd | 
             head -n1 | 
             sed "s/${USER}/${USER_NAME}/g" | 
             sed "s/${UID}/${USER_UID}/g")

# Формируем строчку для /etc/group
GROUP_STR=$(grep -w "^${USER}" /etc/group | 
            head -n1 | 
            sed "s/${USER}/${USER_NAME}/g" | 
            sed "s/${UID}/${USER_UID}/g")

# Записываем в /etc/passwd или /etc/group
echo "${PASSWD_STR}" | sudo tee -a /etc/passwd >/dev/null
echo "${GROUP_STR}"  | sudo tee -a /etc/group >/dev/null

# Создаём домашнюю директорию
sudo mkdir -p "/home/${USER_NAME}"

# Сохраняем конфигурационные файлы в домашнем катологе
sudo cp -a ".conf/." "/home/${USER_NAME}"

# Меняем владельца и группу у созданной директории и конфигурационных файлов внутри
sudo chown -R "${USER_NAME}:${USER_NAME}" "/home/${USER_NAME}"

# Меняем параметры доступа
sudo chmod 750 "/home/${USER_NAME}"

# Выставляем пароль с помощью тулзы для хэширования openssl
SHADOW_STR=$(sudo grep -w "^${USER}" /etc/shadow |
             head -n1 | 
             awk -vuser="$USER_NAME" -vhash="$(openssl passwd)" 'BEGIN{FS=":"; OFS=":"} {$1=user; $2=hash; print $0}')

# Записываем в /etc/shadow
echo "${SHADOW_STR}" | sudo tee -a /etc/shadow >/dev/null 
