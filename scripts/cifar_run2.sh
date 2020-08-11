#!/bin/bash

models=(
    'aug01-advbetace-tor-WRN_40_10',
    'aug01-advbeta.5ce-tor-WRN_40_10'
)
for i in "${models[@]}"
do
    python ../main.py --experiment experiment01 \
        --no-hooks \
        --norm inf --eps 0.031 \
        --dataset cifar10 \
        --model ${i} \
        --attack pgd \
        --random_seed 0
done
