#!/usr/bin/env bash
# Sequentially load two generators(GTA, Synthia) and finish
how_many=100000

cd /users/danny.barash/MADAN/cyclegan
model=$1
epoch=$2

python3 test.py --name ${model} --resize_or_crop=None \
    --which_model_netD n_layers --n_layers_D 3 \
    --model $3 \
    --no_flip --batchSize 8 --nThreads 4 \
    --dataset_mode $4 --dataroot /data/images \
    --which_direction AtoB \
    --phase train --out_all \
    --how_many ${how_many} --which_epoch ${epoch} --gpu 0


python3 test.py --name ${model} --resize_or_crop=None \
    --which_model_netD n_layers --n_layers_D 3 \
    --model $3 \
    --no_flip --batchSize 8 --nThreads 4 \
    --dataset_mode $5 --dataroot /data/images \
    --which_direction AtoB \
    --phase train --out_all \
    --how_many ${how_many} --which_epoch ${epoch} --gpu 0

# cyclegan/test_templates_cycle.sh cycada_gta_synthia2cityscapes_noIdentity_D12D21D3_SEM_final_scale 15 test synthia_cityscapes gta5_cityscapes
