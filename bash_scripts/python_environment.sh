#!/bin/bash
module load gcc/9.2.0
module load python/3.10.11

# CUDA UPDATES
# Symbolic link sudo ln -s /home/andreas/cuda1120 /usr/local/cuda 
export PATH="/n/data1/hms/ccb/projects/esm/cuda/bin:${PATH:+:${PATH}}"
export CUDA_PATH="/n/data1/hms/ccb/projects/esm/cuda"
export LD_LIBRARY_PATH="/n/data1/hms/ccb/projects/esm/cuda/lib64:${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/n/data1/hms/ccb/projects/esm/cuda/extras/CUPTI/lib64"

repo_dir="/home/aaw10/gitrepos/esm"
cd ${repo_dir}
pipenv shell
