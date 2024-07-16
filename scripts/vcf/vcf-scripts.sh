#!/bin/bash

out=./tajima

vcftools --vcf /home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/rad-data/all-asm-01/populations.snps.vcf --depth --out $out --mac 10 --min-meanDP 3 --max-meanDP 100 --max-alleles 2  
vcftools --vcf /home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/rad-data/all-asm-01/populations.snps.vcf --freq --out $out --mac 10 --min-meanDP 3 --max-meanDP 100 --max-alleles 2 
vcftools --vcf /home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/rad-data/all-asm-01/populations.snps.vcf --site-pi --out $out --mac 10 --min-meanDP 3 --max-meanDP 100 --max-alleles 2



vcftools --vcf /home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/dpg-data/data/ds-07/atl-only/ds-07-atl-only.recode.vcf --TajimaD 10000 --out ./tajima/atl-only --min-meanDP 3 --max-meanDP 100 --max-alleles 2
vcftools --vcf /home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/dpg-data/data/ds-07/gulf-only/ds-07-gulf-only.recode.vcf --TajimaD 10000 --out ./tajima/gulf-only --min-meanDP 3 --max-meanDP 100 --max-alleles 2 
vcftools --vcf /home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/dpg-data/data/ds-07/gulf-only/ds-07-gulf-only.recode.vcf --TajimaD 10000 --out ./tajima/new-only --min-meanDP 3 --max-meanDP 100 --max-alleles 2 




# need to compare two different populations. To do so
vcftools --vcf /home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/rad-data/all-asm-01/populations.snps.vcf --weir-fst-pop /home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/rad-data/atlantic-popmap --weir-fst-pop /home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/rad-data/gulf-popmap --out $out --mac 10 --min-meanDP 3 --max-meanDP 100 --max-alleles 2

#output a new vcf file
vcftools --vcf /home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/dpg-data/data/ds-07/all/ds-07-all-filtered.vcf --keep /home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/dpg-data/data/new-only/new-indiv --TajimaD 10000 --out ./new-only --min-meanDP 3 --max-meanDP 100 --max-alleles 2

vcftools --vcf /home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/dpg-data/data/ds-07/all/ds-07-all-filtered.vcf --remove /home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/dpg-data/data/new-only/new-indiv --TajimaD 10000 --out ./old-only --min-meanDP 3 --max-meanDP 100 --max-alleles 2  



vcftools --vcf /home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/rad-data/all-asm-01/populations.snps.vcf --recode --out /home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/rad-data/vcf-filtered/all-asm-01-filtered-excludeocic-30 --remove /home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/rad-data/popmaps/exclude --mac 10 --min-meanDP 3 --max-meanDP 100 --max-alleles 2 --max-missing 0.3


vcftools --vcf /home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/rad-data/all-asm-01/populations.snps.vcf --recode --out /home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/rad-data/vcf-filtered/all-asm-01-filtered-noOG-20 --remove /home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/rad-data/popmaps/OG-popmap --mac 10 --min-meanDP 3 --max-meanDP 100 --max-alleles 2 --max-missing 0.80



