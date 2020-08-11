#!/bin/bash

models=(
    'stradesce-tor-CNN002'
    'tulipce-tor-CNN002'
    'ce-tor-CNN002'
    'advce-tor-CNN002'
    'sllrce-tor-CNN002'
)

for i in "${models[@]}"
do
    python ../main.py --experiment experiment01 \
        --no-hooks \
        --norm inf --eps 0.1 \
        --dataset mnist \
        --model ${i} \
        --attack pgd \
        --random_seed 0
done
