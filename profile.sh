#!/bin/bash
#SBATCH --job-name utk
#SBATCH --account=bckj-delta-cpu
#SBATCH --partition=cpu
#SBATCH --mem=16g
#SBATCH --cpus-per-task=1
#SBATCH --time 00:02:30
#SBATCH -e ./utk.e
#SBATCH -o ./utk.o

cd ~/BZAN_583
pwd

## module names can vary on different platforms
module load r
echo "loaded R"
module list

time Rscript profile.R
