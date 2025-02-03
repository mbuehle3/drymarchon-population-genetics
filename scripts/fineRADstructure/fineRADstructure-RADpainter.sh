#!/bin/bash

# mamba activate fineRADstruct
# Use this python script if you need to conver the stacks output to the radpainter format
# python /home/mbuehle3/programs/fineRADstructure/Stacks2fineRAD.py -i /home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/dpg-data/fineRADstructure/test-ab/data/populations.haps.radpainter -n 5 -m 5

mkdir ../run-06-plots

# bcftools view \
#          --samples-file /home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/dpg-data/data/batch-effects/biall-DS-MDP.bcf  \
#          --min-ac 15 
#          --output ./finerad.vcf  \
#          /home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/dpg-data/data/batch-effects/all-asm-02/all-asm-02.vcf

# bcftools sort ./finerad.vcf \
#          -Ov -o sorted.vcf

# # bcftools index --tbi sorted.vcf

# vcftools --vcf sorted.vcf --max-missing 0.80 --recode --out run-04_data
# mv run-04_data.recode.vcf run-04_data.vcf

# tabix -p vcf sorted.vcf


# /home/mbuehle3/programs/fineRADstructure/RADpainter hapsFromVCF \
#                                                     ./run-04_data.vcf > run-04.radpainter


/home/mbuehle3/programs/fineRADstructure/RADpainter paint \
                                                    /home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/dpg-data/fineRADstructure/data/run-04/populations-09.radpainter

/home/mbuehle3/programs/fineRADstructure/finestructure -x 100000 \
                                                       -y 100000 \
                                                       -z 1000 \
                                                       /home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/dpg-data/fineRADstructure/data/run-04/populations-09_chunks.out \
                                                       /home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/dpg-data/fineRADstructure/data/run-04/populations-09_mcmc_chunks.out

/home/mbuehle3/programs/fineRADstructure/finestructure -m T \
                                                       -x 100000 \
                                                       -y 100000 \
                                                       /home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/dpg-data/fineRADstructure/data/run-04/populations-09_chunks.out \
                                                       /home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/dpg-data/fineRADstructure/data/run-04/populations-09_mcmc_chunks.out \
                                                                                                              /home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/dpg-data/fineRADstructure/data/run-04/populations-09_mcmctree-chunks.out

# mv /home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/dpg-data/data/all-asm-08/populations.haps_chunks.out \
#    /home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/dpg-data/fineRADstructure/all-asm-08/data/populations.haps_chunks.out
