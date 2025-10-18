#!/bin/bash

sleep 1 &
sleep 2 &
sleep 3 &
jobs
fg %1
jobs
bg %2
jobs
