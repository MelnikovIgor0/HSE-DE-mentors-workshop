#!/bin/bash

echo "input.txt:"
cat input.txt
wc -l < input.txt > output.txt
echo -e "в output.txt записано сколько строк находится в input.txt"
ls "bad_file.txt" 2> error.log
echo -e "Ошибки записаны в error.log"
