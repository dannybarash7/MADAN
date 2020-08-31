train.py --name cyclegan_gta_synthia2cityscapes_noIdentity
 --resize_or_crop scale_width_and_crop
 --loadSize 500 --fineSize 400 --model multi_cycle_gan_semantic
 --no_flip --batchSize 1 --dataset_mode gta_synthia_cityscapes --dataroot /home/dannyb/pytorch/datasets
 --CCD --SAD --CCD_weight 0.2 --SAD_frozen_epoch 5 --CCD_frozen_epoch 10 --max_epoch 40
 --weights_syn /home/dannyb/Downloads/madan/MADAN/cycada/pretrained_models/cyclesynthia_drn26_iter2000.pth
 --weights_gta /home/dannyb/Downloads/madan/MADAN/cycada/pretrained_models/drn26_cycada_cyclegta2cityscapes.pth
 --gpu -1 --semantic_loss --nThreads 1
