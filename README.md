
## If using hg38:   


Source vcf files of 1000G phase 3, hg38 downloaded from: http://ftp.1000genomes.ebi.ac.uk/vol1/ftp/release/20130502/supporting/GRCh38_positions/  

1000g hg38 phase 3 plink & vcf files are on oak:
```
/oak/stanford/groups/akundaje/refs/1000genomes
```

SNPs from "1000G.phase3.hg38.merged-merge.missnp" were multi-allelic, so removed from the 1000G Phase 3 VCF file set before creating the PLINK bed files.

* The code to generate the plink files from the souce VCF files is in `makebed/make_bed_1kg.sh`  
* The code to filter the resulting bed/bim/fam files to Caucasian genotypes is in `getcaucasian/get_samples_to_keep.sh`
* The code to calculate r^2 LD values for a GWAS summary stats file is in `get_ld.sh`


## If using hg19:
bed/bim/fam files are on oak in `/oak/stanford/groups/akundaje/refs/1000genomes/hg19`  
ethnicity filtering can be done with same approach as hg38 (see `getcaucasian/get_samples_to_keep.sh`)

Alternatively to the workflow described for hg38,Peyton Greenside has pre-computed LD for hg19, with those files here:
```
/mnt/lab_data/kundaje/users/pgreens/LD
```
these are cited on zenodo: https://zenodo.org/record/3404275#.X9GGBpNKgxM

So you can grep for the rsid's of interest in these files. 







