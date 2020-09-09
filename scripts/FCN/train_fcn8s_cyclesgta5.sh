#!/usr/bin/env bash
gpu=0,1,2,3,4,5,6,7
data=cyclegta5
model=fcn8s

export LC_ALL=C.UTF-8
export LANG=C.UTF-8

datadir=/data/images
batch=48
iterations=30000
snapshot=2000
num_cls=19
data_flag=cyclegan_gta_synthia2cityscapes_noIdentity_TRAIN_60/images

cd /users/danny.barash/MADAN

outdir=/users/danny.barash/MADAN/results/${data}/${data}_${data_flag}/${model}
mkdir -p results/${data}/${data}_${data_flag}/${model}
echo $outdir

python3 scripts/train_fcn.py ${outdir} --model ${model} \
    --num_cls ${num_cls} --gpu ${gpu} \
    -b ${batch} --adam \
    --iterations ${iterations} \
    --datadir ${datadir} \
    --snapshot ${snapshot} \
    --dataset ${data} --data_flag ${data_flag} --nthreads 20
