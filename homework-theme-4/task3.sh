#!/bin/bash

read -p "Введите число: " num
if [ "$num" -gt 0 ]; then
    echo "Число больше 0"
    counter=1
    while [ $counter -le "$num" ]; do
        echo $((counter++))
    done
elif [ "$num" -lt 0 ]; then
    echo "Число меньше 0"
else
    echo "Вы ввели 0"
fi
