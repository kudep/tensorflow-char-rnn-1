#! /bin/bash

export model_path="/home/kuznetsov/tmp/thread32"
# rm -rf ${model_path}/model
mkdir  ${model_path}/model
cp -v $0 ${model_path}/model


python train.py \
  --data_file $model_path/data/sber.txt \
  --n_save 5 \
  --hidden_size 2048 \
  --num_layers 2 \
  --num_unrollings 64 \
  --num_epochs 256 \
  --batch_size 128 \
  --dropout 0.2 \
  --output_dir ${model_path}/model
