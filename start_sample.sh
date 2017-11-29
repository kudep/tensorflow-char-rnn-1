#! /bin/bash

export model_path="/home/kuznetsov/tmp/thread32"
# rm -rf ${model_path}/model
mkdir  ${model_path}/model
cp -v $0 ${model_path}/model


python train.py \
  --data_file $model_path/data/sber.txt \
  --model_path $model_path/best_model/model-72048. \ 
  --init_dir ${model_path}/model
