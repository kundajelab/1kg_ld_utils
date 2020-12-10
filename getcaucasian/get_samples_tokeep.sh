#!/bin/bash
prefix=/oak/stanford/groups/akundaje/refs/1000genomes/hg38_plink_bed
grep -w -f ethnicites_tokeep.txt /oak/stanford/groups/akundaje/refs/1000genomes/20130606_sample_info.csv | cut -f1,2  > tokeep.txt 
plink --keep tokeep.txt --bfile $prefix/1000G.phase3.hg38.merged --make-bed --out $prefix/euro.1000G.phase3.hg38.merged

