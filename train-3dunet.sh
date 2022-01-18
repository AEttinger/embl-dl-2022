#!/bin/bash

source ./.bashrc
conda activate 3dunet
echo 'Starting...'
train3dunet --config /mnt/home/ies/andreas.ettinger/repos/embl-dl-2022/my_train_config_dice.yaml
