#!/usr/bin/env bash
export LC_ALL=C.UTF-8
export LANG=C.UTF-8
cd /users/danny.barash/MADAN

ckpt_path=/users/danny.barash/MADAN/results/cyclegta5/cyclegta5_cyclegan_gta_synthia2cityscapes_noIdentity_TRAIN_60/images/fcn8s/iter_26000.pth
datadir=/data/images/cityscapes
model=fcn8s
num_cls=19
gpu=0,1,2,3,4,5,6,7

python3 scripts/eval_fcn.py ${ckpt_path} \
        --dataset cityscapes \
        --datadir ${datadir} \
        --model ${model} --num_cls ${num_cls} \
        --gpu ${gpu}
