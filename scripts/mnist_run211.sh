#!/bin/bash

models=(
    'advbeta2ce-tor-CNN002'
    'advbetace-tor-CNN002'
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
© 2020 GitHub, Inc.
