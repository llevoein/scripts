#!/bin/bash

# 1. Параметры и переменные
#   - Специальные переменные ($0, $#, $@, $?, $$)
#   - Косвенное обращение к переменным (${!var})
#   - Массивы и ассоциативные массивы

#Используется для вывода "помощи" (--help) или сообщений об ошибках, где нужно сослаться на имя скрипта.

#echo "I - $0"

#Проверка, что пользователь передал нужное количество аргументов:

#echo "get $# arg"
#(( $# < 2 )) && { echo "Нужно 2 аргумента, передано $#"; exit 1; }

#$@ - all 
#$* - all in one string

# for arg in "$@"; do
#   echo "arg: $arg"
# done

# Передача всех аргументов другой команде:
# cat "pattern" "$@"

# Код возврата последней команды
# cat daemon.sh
# if (($? != 0 )); then
#     echo "No such directory or file"
# fi

#or 

# if ! cat daemon.sh; then
#      echo "No such directory or file"
# fi

# Проверка успешности выполнения команд в скрипте:

# mkdir last_command
# if (($? != 0)); then 
#     echo "not created folder "$?"" >&2
#     exit 1
# fi
#rm -r last_command

# echo "Этот скрипт запущен с PID $$"

# tempfile="tst.$$.txt"
# echo "tmp data">"$tempfile"

#mkdir last_command && cd $_ && pwd

echo "скрипт $0 запущен с $# аргументов"
echo "передано pid $$"

for arg in $@; do
    echo "arg:$arg"
done 
grep $1 $2 > /dev/null

if (($? == 0 )); then
    echo "all ok"
else
    echo "all not ok (код $?)"
fi