#!/bin/bash 
#SBATCH --partition=short 
#SBATCH --job-name=run_process
#SBATCH --time=10:00:00 
#SBATCH -N 1 
#SBATCH -n 8 
#SBATCH --output=run_process.output 
#SBATCH --error=run_process.error 

echo "Starting"
bash ###script to run####
echo "Finished"

