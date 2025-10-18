#!/bin/bash

SayHello() {
    echo "Hello, $1"
}

SumOfNumbers() {
    echo $(($1 + $2))
}

SayHello "Igor"
echo "1+2=$(SumOfNumbers 1 2)"
