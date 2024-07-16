#!/bin/bash
#SBATCH --job-name=admixture    # job name
#SBATCH --nodes=1	                    # node(s) required for job
#SBATCH --ntasks=10                      # number of tasks across all nodes
#SBATCH --partition=general        # name of partition to submit job
#SBATCH --mem=40G                      # amount of memory to allocate to the job
#SBATCH --time=01-00:00:00               # Run time (D-HH:MM:SS)
#SBATCH --output=job-%j-admixture.out             # Output file. %j is replaced with job ID
#SBATCH --error=job-%j-admixture.err              # Error file. %j is replaced with job ID
#SBATCH --mail-type=END                 # will send email for begin,end,fail
#SBATCH --mail-user=



module load admixture
module load plink
# admixture takes a plink formatted file, this is easy to get from a vcf file

vcf=./data/all-asm-02-filtered-03.vcf.recode.vcf
file=./run-03/all-asm-02-filtered-04.ADMIX

plink2 --vcf $vcf --make-bed --out $file --allow-extra-chr


awk '{$1="0";print $0}' $file.bim > $file.bim.tmp
mv $file.bim.tmp $file.bim

echo "Done Plinking"
echo "Starting Admixture"

for i in {1..10}
do
 admixture --cv $file.bed $i > log${i}.out
 echo "Finished with K="$i
done

echo "Done Admixing"

awk '/CV/ {print $3,$4}' *out | cut -c 4,7-20 > $file.cv.error
grep "CV" *out | awk '{print $3,$4}' | sed -e 's/(//;s/)//;s/://;s/K=//'  > $file.cv.error
grep "CV" *out | awk '{print $3,$4}' | cut -c 4,7-20 > $file.cv.error

# awk '{split($1,name,"."); print $1,name[2]}' $file.nosex > $file.list
