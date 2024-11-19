#!/bin/bash
# sra_download_fasterq_3prime.sh

##### Download SRR files using SRR accession numbers and then download the FASTQ files #####

echo "Assigning variables"
reads="/scratch/dasgupta.sw/decidua_scrna/reads/3prime"
scripts="/scratch/dasgupta.sw/decidua_scrna/scripts"
results="/scratch/dasgupta.sw/decidua_scrna/results"

######## Navigate to the reads directory where you have downloaded the SRR_Acc_List.txt  #######

#Download the SRA files
prefetch $(cat SRR_Acc_List.txt) 

######## Move all .sra files outside their respective folders such that they are in the reads folder #######

#Downloading FASTQ files from SRA files placed in the reads directory"
#Loop through each .sra file in the reads directory
for sample_file in ${reads}/*.sra; do
    if [[ -f ${sample_file} ]]; then
        echo "Downloading ${sample_file} to FASTQ format"
        fasterq-dump --gzip --split-files --outdir ${reads} ${sample_file}
        echo "Converted ${sample_file} to FASTQ"
    else
        echo "No .sra file found in ${sample_file}"
    fi
done

echo "All FASTQ files downloaded"




