#!/bin/bash

read -p "Введите путь к директории: " directory

cd "$directory"

files=()
while IFS= read -r -d $'\0' file; do
    files+=("${file#./}")
done < <(find . -maxdepth 1 -type f -print0)

for file in "${files[@]}"; do
    mv -v -- "$file" "backup_$file"
done

echo "Префикс backup_ добавлен"
