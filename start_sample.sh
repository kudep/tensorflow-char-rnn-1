#! /bin/bash

export model_path="/home/kuznetsov/tmp/thread32"
# rm -rf ${model_path}/model
# mkdir  ${model_path}/model
# cp -v $0 ${model_path}/model


python sample.py \
  --model_path $model_path/model/best_model/model-72048 \
  --start_text="Здравствуйте!" \
  --length=250 \
  --init_dir ${model_path}/model
