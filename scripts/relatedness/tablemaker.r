data = read.table("/home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/dpg-data/relatedness/output/all-asm-17.relatedness2", header = TRUE)
data

data.df <- as.data.frame(data)
is.data.frame(data.df)
data.df
axis = unique(data[,1])

relatedness.table <- data.frame(matrix(NA, nrow = (length(axis)), ncol = (length(axis))))

rownames(relatedness.table) <- axis
colnames(relatedness.table) <- axis

relatedness.table

relatedness <- xtabs(data.df[,7] ~ data.df[,1] + data.df[,2])
relatedness


relatedness[2]

write.csv(relatedness, "./ipyrad-relatedness-parsed.csv")


library(ggplot2)

self <- 0.354
primary.low <- 0.177
primary.high <- 0.354
second.high <- 0.354
third.low <- 0.0443
third.high <- 0.0884

data.df
data.df[,7]

data.df[,8] = ifelse(data.df[,7]>self, 5, 
                    ifelse(primary.low<data.df[,7] & data.df[,7] <primary.high, 4,
                    ifelse(third.high<data.df[,7] & data.df[,7] <primary.low, 3,
                    ifelse(third.low<data.df[,7]& data.df[,7] <third.high, 2,
                    1))))
str(data.df)
data.df[,8] <- as.factor(data.df[,8])

plot <- ggplot(data.df, height = 1, width = 1)
plot
plot.2 = plot + aes(x = data.df[,2], y = data.df[,1], fill = data.df[,8])+
plot.2 


plot.3 = plot.2 + geom_tile() + 
                    scale_fill_manual(values = c("lightgrey","green","yellow","orange","red")) + 
                    geom_text(aes(label = round(data.df[,7], 2)))

plot.3

plot.4 = plot.3 + theme(axis.text.x = element_text(angle = 90),axis.text=element_text(size =25)) +
                  xlab("Ind_2") + 
                  ylab("Ind_1") +
                  ggtitle("Relatedness of Founding OCIC Breeders and Kin")
plot.4



jpeg("./trimmed-relatedness-heatmap.jpg", width = 2500, height = 2500)
pdf("./trimmed-relatedness-heatmap.pdf", width = 60, height = 60)
plot.4
dev.off()