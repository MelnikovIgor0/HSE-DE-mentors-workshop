#!/bin/bash

read -p "Введите путь к директории для архивации: " source_dir

timestamp=$(date +"%Y-%m-%d")
archive_name="${source_dir}_backup_${timestamp}.tar.gz"

tar -czf "$archive_name" -C "$source_dir" .
echo "Архив $archive_name сгенерирован"
