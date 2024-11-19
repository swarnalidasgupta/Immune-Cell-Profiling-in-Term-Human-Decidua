#!/bin/bash

##### CellRanger on 3prime GEX samples #####

# Assign variables
echo "Assigning variables"

gex_reads_3prime="/scratch/dasgupta.sw/decidua_scrna/reads/3prime"
ref_genome="/scratch/dasgupta.sw/decidua_scrna/data/refdata-gex-GRCh38-2024-A"

samples=("HD_Decidua_3prime_GEX" "COV_Decidua_3prime_GEX")
sample_ids=("S1" "S2")  

# Loop through each sample and run Cell Ranger
for i in "${!samples[@]}"
do
  sample=${samples[$i]}
  sample_id=${sample_ids[$i]}

  echo "Running Cell Ranger on ${sample}..."
  
  cellranger count --id=${sample} \
                   --transcriptome=$ref_genome \
                   --fastqs=$gex_reads_3prime/${sample} \
                   --sample=${sample} \
                   --create-bam=true \
                   --localcores=8 \
                   --localmem=100

  echo "Finished processing ${sample}."
done

echo "All GEX samples have been processed."