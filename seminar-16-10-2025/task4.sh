#!/bin/bash

read -p "Введите имя файла: " filename

line_count=$(wc -l < "$filename")
echo "Файл $filename содержит $line_count строк"
