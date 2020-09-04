#!/usr/bin/env bash
gpu=-1
data=cyclegta5
model=fcn8s

export LC_ALL=C.UTF-8
export LANG=C.UTF-8

datadir=/home/dannyb/pytorch/datasets
batch=1
iterations=30000
snapshot=2000
num_cls=19
data_flag=cyclegan_gta_synthia2cityscapes_noIdentity_TRAIN_60

cd /home/dannyb/pytorch/madan/MADAN

outdir=/home/dannyb/pytorch/madan/MADAN/results/${data}/${data}_${data_flag}/${model}
mkdir -p results/${data}/${data}_${data_flag}/${model}
echo $outdir

python3 scripts/train_fcn.py ${outdir} --model ${model} \
    --num_cls ${num_cls} --gpu ${gpu} \
    -b ${batch} --adam \
    --iterations ${iterations} \
    --datadir ${datadir} \
    --snapshot ${snapshot} \
    --dataset ${data} --data_flag ${data_flag}
