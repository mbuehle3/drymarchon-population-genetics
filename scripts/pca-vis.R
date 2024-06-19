# install.packages("tidyverse", dependencies = TRUE)

library(tidyverse)

# read in some data 

pca <- read_table("~/dpg-data/pca/run-02/all-asm-02-filtered.04.PCA.eigenvec", col_names = TRUE)
eigenval <- scan("~/dpg-data/pca/run-02/all-asm-02-filtered.04.PCA.eigenval")
pca
# sort out the pca data
# remove nuisance column
pca <- pca[,-1] 
# set names
names(pca)[1] <- "ind"

pca$ind

pca
spp <- rep(NA, length(pca$ind))
spp
spp[grep("FEMALE", pca$ind)] <- "Atlantic"
spp[grep("Georgia", pca$ind)] <- "Atlantic"
spp[grep("georgia", pca$ind)] <- "Atlantic"
spp[grep("MB", pca$ind)] <- "Atlantic"
spp[grep("florida", pca$ind)] <- "Gulf"
spp[grep("Florida", pca$ind)] <- "Gulf"
spp[grep("Fuller", pca$ind)] <- "Pet"
spp

# batch <- rep(NA, length(pca$ind)) 
# batch[grep("DC", pca$ind)] <- "Old"
# batch[grep("MB", pca$ind)] <- "New"
# batch[grep("UF", pca$ind)] <- "New"
# batch




pca <- as_tibble(data.frame(pca, spp))
# The PC value needs to be range from 1: the length of eigenval
pca$batch
pve <- data.frame(PC = 1:10, pve = eigenval/sum(eigenval)*100)

a <- ggplot(pve, aes(PC, pve)) + geom_bar(stat = "identity")
a + ylab("Percentage variance explained") + theme_light()

# calculate the cumulative sum of the percentage variance explained
cumsum(pve$pve)
pca$spp

b <- ggplot(pca, aes(PC1, PC2, col = spp, label = ind)) + geom_point(size = 3) + geom_text()
b <- b + scale_colour_manual(values = c("red", "blue","yellow"))
b <- b + coord_equal() + theme_light()
b + xlab(paste0("PC1 (", signif(pve$pve[1], 3), "%)")) + ylab(paste0("PC2 (", signif(pve$pve[2], 3), "%)"))

b <- ggplot(pca, aes(PC2, PC3, col = spp, label = ind)) + geom_point(size = 3) + geom_text()
b <- b + scale_colour_manual(values = c("red", "blue", "yellow"))
b <- b + coord_equal() + theme_light()
b + xlab(paste0("PC2 (", signif(pve$pve[2], 3), "%)")) + ylab(paste0("PC3 (", signif(pve$pve[3], 3), "%)"))

b <- ggplot(pca, aes(PC3, PC4, col = spp, label = ind)) + geom_point(size = 3) + geom_text()
b <- b + scale_colour_manual(values = c("red", "blue", "yellow"))
b <- b + coord_equal() + theme_light()
b + xlab(paste0("PC3 (", signif(pve$pve[3], 3), "%)")) + ylab(paste0("PC4 (", signif(pve$pve[4], 3), "%)"))

b <- ggplot(pca, aes(PC4, PC5, col = spp, label = ind)) + geom_point(size = 3) + geom_text()
b <- b + scale_colour_manual(values = c("red", "blue", "yellow"))
b <- b + coord_equal() + theme_light()
b + xlab(paste0("PC4 (", signif(pve$pve[4], 3), "%)")) + ylab(paste0("PC5 (", signif(pve$pve[5], 3), "%)"))