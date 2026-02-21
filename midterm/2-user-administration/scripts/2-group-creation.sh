#!/bin/bash

# Задание:
# Создать группу consultants с GID 40000, создать в ней пользователей для Ивана, Полины и Дмитрия. 
# Основная группа должна быть группой с именем пользователя
# Задать каждому пользователю пароль 
# Потребовать смены пароля пользователей каждые 30 дней, за исключением Полины — ей 15 дней
# Аккаунты должны истечь через 90 дней
# После первого входа пользователи должны сменить свой пароль


# Если группа с GID=40000 существует, выходим с ошибкой
if [[ -n $(awk -F: '{ print $4 }' /etc/passwd | grep -w 40000) ]];
then
    echo "GID=40000 is taken" >&2
    exit 1
fi

# Имена пользователей
USERS=("Ivan" "Dmitry" "Polina")

# Зашифрованные пароли
HASHES=('$y$j9T$sJmdzpJsTWRKVRu6aqRRf0$/Gavd0qbsH2t0fk9wdb0EThvbn3J6fHp1mreeP43lp6'
        '$y$j9T$Oc.pOiGqk2DmEAYyrtFKF/$gN1yrVaV3pjXzW/D0YMbQVsDq2eGST5fZIRQGcB9rAD'
        '$y$j9T$koN4PVvEi5RqCRZFTXswB1$uXhDXXcuWtg3DPvbtfj58teYB1SA9OfdtF8.ROX5b74')

# Количество дней, через которое надо сменить пароль
MAX_DAYS=30

for i in ${!USERS[@]};
do
    # Количество дней для смены пароля для Полины
    if [ $i == 2 ]; 
    then
        MAX_DAYS=$(( ${MAX_DAYS} / 2 ))
    fi

    # Задаём всем пользователем пароль, домашнюю директорию и оболочку
    sudo useradd -p "${HASHES[$i]}" -m -s "/bin/bash" "${USERS[$i]}"

    # Задаём время истечения учётной записи, принуждаем сменить пароль при входе и менять пароль каждые MAX_DAYS дней
    sudo chage -E "$(date -d +90days +%Y-%m-%d)" "${USERS[$i]}" 
    sudo chage -d 0 -m 0 -M "${MAX_DAYS}" "${USERS[$i]}"
done

# Создание группы и добавление в неё пользователей
sudo groupadd -g 40000 consultants 

for usr in ${USERS[@]};
do
    sudo usermod -a -G consultants $usr
done
