source("/home/mbuehle3/programs/evalAdmix/visFuns.R")

# read population labels and estimated admixture proportions
pop<-read.table("./data/all-asm-02-filtered-03.ADMIX.fam")
q<-read.table("./run-01/all-asm-02-filtered-03.ADMIX.5.Q",stringsAsFactors=T)

palette(c("#A6CEE3","#1F78B4","#B2DF8A","#33A02C","#FB9A99","#E31A1C","#FDBF6F","#FF7F00","#CAB2D6","#6A3D9A","#FFFF99","#B15928","#1B9E77","#999999"))

# order according to population and plot the ADMIXTURE results
ord<-orderInds(pop = as.vector(pop[,2]), q = q)

#make barplot
plotAdmix(q,ord=ord,pop=pop[,2])



r<-as.matrix(read.table("evaldamiOut-5.corres"))

# Plot correlation of residuals
plotCorRes(cor_mat = r, pop = as.vector(pop[,2]), ord=ord, title="Evaluation of 1000G admixture proportions with K=5", max_z=0.1, min_z=-0.1)