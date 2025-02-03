# To run this code you will need to install fastStructure on your computer and point the -fs argument to the executable.

InPrefix=/home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/dpg-data/data/locus-filtered/all-asm-12/all-asm-12.snps-filtered-whitelist3-mac50-nfl-sga

StructOut=/home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/dpg-data/structure_threader/locus-filter/all-asm-12/run-13-mac01-bial
mkdir -p $StructOut
structure_threader run -K 16  \
                       -i $InPrefix.bed \
                       -o $StructOut \
                       -t 10 \
                       --ind /home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/dpg-data/data/locus-filtered/all-asm-12/popmaps/popmap-whitelist3-str \
                       -fs /home/mbuehle3/miniforge3/envs/structure-threader/bin/fastStructure \
                       --extra_opts cv=5 \
                       --extra_opts prior=logistic \
                       --extra_opts full \
                       --extra_opts format=bed    
