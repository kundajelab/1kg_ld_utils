#!/bin/bash
#load plink 1.9 if on lab cluster
module load plink/1.9
rsid=$1 #pass in your rsid of interest (i.e. generally you'd want to run the command below in a loop for all your rsids)
prefix=/oak/stanford/groups/akundaje/refs/1000genomes/hg38_plink_bed
plink --bfile $prefix/euro.1000G.phase3.hg38.merged --threads 20 --r2 --ld-snp $rsid --ld-window-kb 1000 --ld-window 9999 --ld-window-r2 0.5 --out $rsid

