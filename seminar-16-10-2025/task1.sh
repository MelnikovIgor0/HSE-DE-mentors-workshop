#!/bin/bash

read -p "Как тебя зовут? " name
read -p "Сколько тебе лет? " age

next_age=$((age + 1))
echo "Привет, $name! Через год тебе будет $next_age лет."
