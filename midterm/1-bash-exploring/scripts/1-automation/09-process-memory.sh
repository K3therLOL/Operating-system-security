#!/bin/bash

# Задание:
# Найти и вывести 5 процессов, потребляющих больше всего памяти в системе.

clear
echo "Top 5 processes that are eating the most of memory:"
echo

ps aux --sort=-%mem | column -t | tr -s " " "\t" | cut -f11 | tail -n+2 | head -n5
