#!/bin/bash

echo "Текущий PATH: $PATH"
export PATH="$PATH:$1"
echo "Обновленный PATH: $PATH"

# Чтобы обновление PATH работало и после конца работы скрипта, надо прописать в bashrc:
# export PATH="$PATH:$1"
