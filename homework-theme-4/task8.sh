#!/bin/bash

log_path="backuper.log"
count=0

for file in *; do
    if [ -f "$file" ]; then
        cp "$file" "${file}_$(date +%Y%m%d)"
        echo "Скопирован: $file" >> "$log_path"
        ((count++))
    fi
done
echo "Было скопировано: $count файлов, копирование завершено успешно"
