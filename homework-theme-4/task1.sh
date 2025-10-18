#!/bin/bash

echo "Содержимое текущей директории:"
for item in *; do
    if [ -f "$item" ]; then
        echo "$item - файл"
    elif [ -d "$item" ]; then
        echo "$item - директория"
    else
        echo "$item - ссылка"
    fi
done
if [ -e "$1" ]; then
    echo "Файл $1 найден"
else
    echo "Файл $1 не найден"
fi
echo -e "Права доступа:"
for file in *; do
    if [ -e "$file" ]; then
        permissions=$(stat -c "%a" "$file")
        echo "$file - $permissions"
    fi
done
