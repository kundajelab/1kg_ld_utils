#!/bin/bash
#chromosome-wise conversion from VCF to bed; remove multi-allelic snps
prefix=/oak/stanford/groups/akundaje/refs/1000genomes/hg38_plink_bed/
for i in `seq 1 22`
do
    echo $f
    plink --vcf $prefix/ALL.chr$i\_GRCh38.genotypes.20170504.vcf.gz --vcf-half-call m --make-bed --out $prefix/$i
    plink --bfile $prefix/$i --exclude 1000G.phase3.hg38.merged-merge.missnp --make-bed --out $prefix/$i.filtered
done
#merge plink bed files into one file
plink --memory 50000 --set-missing-var-ids @:# --merge-list mergelist.txt  --make-bed --out $prefix/1000G.phase3.hg38.merged

