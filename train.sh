##!/usr/bin/env bash
#echo Demo of the training process

#training_set=${1-CUFED}

# # download training set
#python download_dataset.py --dataset_name ${training_set}

# # calculate the swapped feature map in the offline manner
#python offline_patchMatch_textureSwap.py --data_folder data/train/${training_set}


# train a new model
#python main.py \
#    --is_train True \
#    --input_dir data/train/CUFED/input \
#    --ref_dir data/train/CUFED/ref \
#    --map_dir data/train/CUFED/map_321 \
#    --use_pretrained_model False \
#    --w_per  0.0 \
#    --w_rec 1.0 \
#    --w_tex 0.0 \
#    --w_adv 0.0 \
#    --num_init_epochs 2 \
#    --num_epochs 20 \
#    --save_dir ./lossceshi/model_lrec
#
#python main.py \
#    --is_train True \
#    --input_dir data/train/CUFED/input \
#    --ref_dir data/train/CUFED/ref \
#    --map_dir data/train/CUFED/map_321 \
#    --use_pretrained_model False \
#    --w_per  1e-4 \
#    --w_rec 1.0 \
#    --w_tex 0.0 \
#    --w_adv 0.0 \
#    --num_init_epochs 2 \
#    --num_epochs 20 \
#    --save_dir ./lossceshi/model_lrec+lper
#
#python main.py \
#    --is_train True \
#    --input_dir data/train/CUFED/input \
#    --ref_dir data/train/CUFED/ref \
#    --map_dir data/train/CUFED/map_321 \
#    --use_pretrained_model False \
#    --w_per  1e-4 \
#    --w_rec 1.0 \
#    --w_tex 0.0 \
#    --w_adv 1e-6 \
#    --num_init_epochs 2 \
#    --num_epochs 20 \
#    --save_dir ./lossceshi/model_lrec+lper+ladv
#
#python main.py \
#    --is_train True \
#    --input_dir data/train/CUFED/input \
#    --ref_dir data/train/CUFED/ref \
#    --map_dir data/train/CUFED/map_321 \
#    --use_pretrained_model False \
#    --w_per  1e-4 \
#    --w_rec 1.0 \
#    --w_tex 1e-4 \
#    --w_adv 1e-6 \
#    --num_init_epochs 2 \
#    --num_epochs 20 \
#    --save_dir ./lossceshi/model_lrec+lper+ladv+ltex


python main.py \
    --is_train True \
    --input_dir data/train/CUFED/input \
    --ref_dir data/train/CUFED/ref \
    --map_dir data/train/CUFED/map_321 \
    --use_pretrained_model False \
    --is_L1_loss=False \
    --batch_size 1 \
    --w_per  0.0 \
    --w_rec 1.0 \
    --w_tex 0.0 \
    --w_adv 0.0 \
    --num_init_epochs 2 \
    --num_epochs 20 \
    --save_dir ./lossceshi/11111

#python main.py \
#    --is_train True \
#    --save_dir demo_training_srntt\
#    --input_dir data/train/CUFED/input\
#    --ref_dir data/train/CUFED/ref\
#    --map_dir data/train/CUFED/map_321\
#    --batch_size  9\
 #   --num_epochs  10\
#    --input_size  40\
#    --use_weight_map  False\

## train based on a pre-trained model
#python main.py \
#    --is_train True \
#    --input_dir data/train/CUFED/input \
#    --ref_dir data/train/CUFED/ref \
#    --map_dir data/train/CUFED/map_321 \
#    --use_pretrained_model True \
#    --num_init_epochs 0 \
#    --num_epochs 5 \
#    --save_dir init_epoch2+epoch30

