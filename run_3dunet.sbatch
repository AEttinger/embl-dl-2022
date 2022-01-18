#!/bin/bash

#SBATCH -o /mnt/home/ies/%u/slurm_jupyter_%j.job
#SBATCH -e /mnt/home/ies/%u/slurm_jupyter_%j.job
#SBATCH -J 3dunet
#SBATCH -p gpu_p
#SBATCH --qos gpu
#SBATCH --gres=gpu:1
#SBATCH -c 2
#SBATCH -t 12:30:00
#SBATCH --mem=16G
#SBATCH --nice=10000

source /mnt/home/ies/andreas.ettinger/.bashrc
conda activate 3dunet
./train-3dunet.sh
