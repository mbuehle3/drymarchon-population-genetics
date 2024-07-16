# This will prune the dataset (indep-pairwise) to remove sites that are potentially in LD with one another. 
# # It will then create the files needed to conduct the PCA


############################################################
####################### All Samples #######################
############################################################
Allvcf=/home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/dpg-data/structure_threader/run-aa/data/all/aa-all.recode.vcf
Allfile=/home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/dpg-data/structure_threader/run-aa/pca/all-08.PCA


plink2 --vcf $Allvcf --make-bed --out $Allfile --allow-extra-chr --double-id \
    --set-missing-var-ids @:# \
    --indep-pairwise 50 10 0.1 \
    --maf 0.01 \

# Running the actual PCA

plink2 --vcf $Allvcf --double-id --allow-extra-chr --set-missing-var-ids @:# \
    --extract $Allfile.prune.in \
    --make-bed --pca --out $Allfile \

############################################################
######################## Atl Samples #######################
############################################################

ATLvcf=/home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/dpg-data/structure_threader/atlaa/data/atlaa.vcf
ATLfile=/home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/dpg-data/pca/run-07-atl-only/atlaa.PCA


plink2 --vcf $ATLvcf --make-bed --out $ATLfile --allow-extra-chr --double-id \
    --set-missing-var-ids @:# \
    --indep-pairwise 50 10 0.1 \
    --maf 0.01 \

# Running the actual PCA

plink2 --vcf $ATLvcf --double-id --allow-extra-chr --set-missing-var-ids @:# \
    --extract $ATLfile.prune.in \
    --make-bed --pca --out $ATLfile \


# ############################################################
# ####################### Gulf Samples #######################
# ############################################################


# Gulfvcf=/home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/dpg-data/data/ds-07/gulf-only/ds-07-gulf-only.recode.vcf
# Gulffile=/home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/dpg-data/data/ds-07/gulf-only/pca/gulf-only.PCA


# plink2 --vcf $Gulfvcf --make-bed --out $Gulffile --allow-extra-chr --double-id \
#     --set-missing-var-ids @:# \
#     --indep-pairwise 50 10 0.1 --bad-ld\
#     --maf 0.01 \

# # Running the actual PCA

# plink2 --vcf $Gulfvcf --double-id --allow-extra-chr --set-missing-var-ids @:# \
#     --extract $Gulffile.prune.in \
#     --make-bed --pca --out $Gulffile \