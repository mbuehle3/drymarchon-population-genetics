#!/bin/bash

# structure_threader run -K 10 -R 3  -i /home/mbuehle3/programs/console/data/all-asm-04.str -o ./run-02 -t 14 -st /home/mbuehle3/programs/console/structure

structure_threader run -K 20 -i /home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/dpg-data/data/ds-07-all-filtered.bed -o ./run-07-all-filtered-labeled -t 10 --ind /home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/dpg-data/data/ds-07/all-county-label -fs /home/mbuehle3/miniforge3/envs/structure-threader/bin/fastStructure --extra_opts prior=logistic --extra_opts full --extra_opts format=bed

structure_threader run -K 10  -i /home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/dpg-data/data/ds-07/atl-only.bed -o ./run-07-newall-atl-only -t 10 --ind /home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/dpg-data/data/ds-07/atl-only-indiv -fs /home/mbuehle3/miniforge3/envs/structure-threader/bin/fastStructure --extra_opts prior=logistic --extra_opts full --extra_opts format=bed

structure_threader run -K 10  -i /home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/dpg-data/data/ds-07/gulf-only.bed -o ./run-07-newall-gulf-only -t 10 --ind /home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/dpg-data/data/ds-07/gulf-indiv -fs /home/mbuehle3/miniforge3/envs/structure-threader/bin/fastStructure --extra_opts prior=logistic --extra_opts full --extra_opts format=bed




structure_threader run -K 20 -i /home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/dpg-data/structure_threader/run-aa/data/all/aa-all-08.bed -o /home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/dpg-data/structure_threader/run-aa/data/all/structure/ -t 10 --ind /home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/dpg-data/data/ds-07/all/all-county-label -fs /home/mbuehle3/miniforge3/envs/structure-threader/bin/fastStructure --extra_opts prior=logistic --extra_opts full --extra_opts format=bed

structure_threader run -K 20 -i /home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/dpg-data/structure_threader/run-ab/data/all/ab-all-08.bed -o /home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/dpg-data/structure_threader/run-ab/data/all/structure/ -t 10 --ind /home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/dpg-data/data/ds-07/all/all-county-label -fs /home/mbuehle3/miniforge3/envs/structure-threader/bin/fastStructure --extra_opts prior=logistic --extra_opts full --extra_opts format=bed


structure_threader run -K 10  -i /home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/dpg-data/structure_threader/gulfaa/data/gulffaa.bed -o /home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/dpg-data/structure_threader/gulfaa/structure -t 10 --ind /home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/dpg-data/data/ds-07/gulf-only/gulf-indiv -fs /home/mbuehle3/miniforge3/envs/structure-threader/bin/fastStructure --extra_opts prior=logistic --extra_opts full --extra_opts format=bed