atl <- read.table("/home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/dpg-data/scripts/tajima/atl-only.Tajima.D", header = TRUE)
gulf <- read.table("/home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/dpg-data/scripts/tajima/gulf-only.Tajima.D", header = TRUE)
old <- read.table("/home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/dpg-data/scripts/tajima/old-only.Tajima.D", header = TRUE)
new <- read.table("/home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/dpg-data/scripts/tajima/new-only.Tajima.D", header = TRUE)


atl.taj <- na.omit(atl$TajimaD)
old.taj <- na.omit(old$TajimaD)
new.taj <- na.omit(new$TajimaD)
gulf.taj <- na.omit(gulf$TajimaD)

# plot(atl$CHROM,atl$TajimaD, type = "p", xaxt = 'n', col = "red", xlab = "", ylab = "Tajima's D Value")
# abline(h=2,lwd = 3)
# abline(h = mean(na.omit(atl$TajimaD)), col = "red",lwd = 2)
# par(new=TRUE)

# plot(gulf$CHROM,gulf$TajimaD, type = "p", col = "blue", xaxt = 'n', yaxt = 'n', xlab = "", ylab = "")
# abline(h = mean(na.omit(atl$TajimaD)), col = "blue", lwd = 2)
# title("Tajima's D Window Values")


# # Open a pdf file
# pdf("TajimaD.pdf") 
# # 2. Create a plot
# plot(atl$CHROM,atl$TajimaD, type = "p", xaxt = 'n', col = "red", xlab = "", ylab = "Tajima's D Value")
# abline(h=2,lwd = 3)
# abline(h = mean(na.omit(atl$TajimaD)), col = "red",lwd = 2)
# par(new=TRUE)

# plot(gulf$CHROM,gulf$TajimaD, type = "p", col = "blue", xaxt = 'n', yaxt = 'n', xlab = "", ylab = "")
# abline(h = mean(na.omit(atl$TajimaD)), col = "blue", lwd = 2)
# title("Tajima's D Window Values")
# # Close the pdf file
# dev.off()


pdf("TajimaD-violin.pdf") 
vioplot(atl.taj,old.taj,new.taj, gulf.taj, names = c("Atlantic","Old Samples", "New Samples", "Gulf"), ylim=c(-3,5), col = c("darkorange", "green", "purple", "blue"))
abline(h = 2, col = "darkred", lwd = 3)
abline(h = -2, col = "darkred", lwd = 3)
abline(h = 0, col = "black", lwd = 3, lty = 2)
title("Distribution of Tajima's D Values for Atlantic and Gulf Clades")
dev.off() 


mean(na.omit(atl$TajimaD))

