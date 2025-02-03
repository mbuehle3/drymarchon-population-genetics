# bcftools query \
#          --samples-file /home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/dpg-data/data/batch-effects/all-asm-02-samples2keep \
#          --output /home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/dpg-data/data/batch-effects/all-asm-02-bcftools-SamplesFiltered.vcf \
#          /home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/dpg-data/data/batch-effects/all-asm-02/all-asm-02.vcf 

vcfFile=/home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/dpg-data/data/locus-filtered/all-asm-12/all-asm-12.snps.vcf
OutPrefix=/home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/dpg-data/data/locus-filtered/all-asm-12/all-asm-12.snps-filtered-whitelist3-mac50-nfl-sga


bcftools view \
         --samples-file /home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/dpg-data/data/locus-filtered/all-asm-12/popmaps/popmap-nfl-sga \
         --min-ac 5 \
         --min-alleles 2 \
         --max-alleles 2 \
         --output $OutPrefix.vcf  \
         $vcfFile

# paste \
# <(bcftools query -f '[%SAMPLE\t]\n' $OutPrefix.vcf | head -1 | tr '\t' '\n') \
# <(bcftools query -f '[%GT\t]\n' $OutPrefix.vcf | awk -v OFS="\t" '{for (i=1;i<=NF;i++) if ($i == "./.") sum[i]+=1 } END {for (i in sum) print i, sum[i] / NR }' | sort -k1,1n | cut -f 2) > $OutPrefix.missing

# code $OutPrefix.missing

plink2 --vcf $OutPrefix.vcf \
       --make-bed \
       --out $OutPrefix \
       --allow-extra-chr \



# StructOut=/home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/dpg-data/structure_threader/locus-filter/all-asm-12/run-13-mac01-bial
# mkdir -p $StructOut
# structure_threader run -K 16  \
#                        -i $OutPrefix.bed \
#                        -o $StructOut \
#                        -t 10 \
#                        --ind /home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/dpg-data/data/locus-filtered/all-asm-12/popmaps/popmap-whitelist3-str \
#                        -fs /home/mbuehle3/miniforge3/envs/structure-threader/bin/fastStructure \
#                        --extra_opts cv=5 \
#                        --extra_opts prior=logistic \
#                        --extra_opts full \
#                        --extra_opts format=bed    

# code $StructOut/bestK/chooseK.txt

# # # readlink -f $OutPrefix.bed


# bcftools query \
#          --list-samples \
#          --output /home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/dpg-data/data/batch-effects/all-asm-02-bcftols-SF-Struct \
#          /home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/dpg-data/data/batch-effects/all-asm-02-bcftools-SamplesFiltered.vcf

# used to filter by MAC or MAF depending, obviously can be combined with --samples-file to filter by samples missing lots of data 
# bcftools view \
#          --min-ac 4 \
#          --min-af 0.05 \