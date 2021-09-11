#!/bin/bash
#SBATCH --time=4:00:00
#SBATCH --gpus-per-node=v100:1
#SBATCH --cpus-per-task=1  
#SBATCH --mem=64G
#SBATCH --partition=batch 
#SBATCH --job-name=jupyter
#SBATCH --output=bin/%x-%j-slurm.out
#SBATCH --error=bin/%x-%j-slurm.err

# use srun to launch Jupyter server in order to reserve a port
srun --resv-ports=1 ./bin/launch-jupyter-server.srun
