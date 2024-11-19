#!/bin/bash

##### CellRanger on 3' GEX samples using Multi #####

#Assign variables
echo "Assigning variables"
#### Ensure you have generated the config.csv file needed for running cellranger multi ####
config_file="/scratch/dasgupta.sw/decidua_scrna/reads/3prime/config-file.csv"

#Run Cell Ranger Multi
echo "Running Cell Ranger Multi..."
cellranger multi --id=3prime_gex_analysis --csv=$config_file --localcores=8 --localmem=100
echo "All GEX samples have been processed using Cell Ranger Multi."
