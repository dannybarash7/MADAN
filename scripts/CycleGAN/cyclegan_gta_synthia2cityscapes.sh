#!/usr/bin/env bash
cd /users/danny.barash/MADAN/cyclegan
#--DSC --DSC_weight 20
python3 train.py --name cyclegan_gta_synthia2cityscapes_noIdentity \
    --resize_or_crop scale_width_and_crop --loadSize 500 --fineSize 400 \
    --model multi_cycle_gan_semantic --no_flip --batchSize 4 \
    --dataset_mode gta_synthia_cityscapes --dataroot /data/images \
     --general_semantic_weight 20 --CCD --SAD --CCD_weight 0.2 --SAD_frozen_epoch 5 --CCD_frozen_epoch 10 --max_epoch 40 \
    --weights_syn /users/danny.barash/MADAN/pretrained_models/drn26_cycada_synthia2cityscapes.pth \
    --weights_gta /users/danny.barash/MADAN/pretrained_models/drn26_cycada_cyclegta2cityscapes.pth \
    --gpu 0,1,2 --semantic_loss

