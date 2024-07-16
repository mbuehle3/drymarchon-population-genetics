#install.packages("tidyverse",dependencies=TRUE)

library(tidyverse)

#readinsomedata

pca<-read_table("/home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/dpg-data/pca/run-07-all-only/run-07-all.PCA.eigenvec",col_names=TRUE)
eigenval<-scan("/home/mbuehle3/Dropbox/dissertation/lab-notebooks/drymarchon/dpg-data/pca/run-07-all-only/run-07-all.PCA.eigenval")
pca
#sortoutthepcadata
#removenuisancecolumn
pca<-pca[,-1]
#setnames
names(pca)[1]<-"ind"

pca$ind

pca
spp<-rep(NA,length(pca$ind))
spp
spp[grep("DC_AUHT-5495_florida_HighlandsCo_Archbold_sorted",pca$ind)]<-"South"
spp[grep("DC_AUHT-5505_florida_HighlandsCo_Archbold_sorted",pca$ind)]<-"South"
spp[grep("DC_AUHT-5511_florida_HighlandsCo_PlacidLakes_sorted",pca$ind)]<-"South"
spp[grep("DC_AUHT-5514_florida_IndianRiverCo_Fellsmere_sorted",pca$ind)]<-"South"
spp[grep("DC_AUHT-5517_florida_MartinCo_IndianTown_sorted",pca$ind)]<-"South"
spp[grep("DC_AUHT-5520_florida_HighlandsCo_LakePlacid_sorted",pca$ind)]<-"South"
spp[grep("DC_AUHT-5522_florida_HighlandsCo_LakeJuneinWinter_sorted",pca$ind)]<-"South"
spp[grep("DC_AUHT-5523_florida_HighlandsCo_LakeWalesRidge_sorted",pca$ind)]<-"South"
spp[grep("DC_AUHT-5540_florida_HighlandsCo_LakeIstokpoga_sorted",pca$ind)]<-"South"
spp[grep("DC_AUHT-5566_florida_HighlandsCo_PlacidLakes_sorted",pca$ind)]<-"South"
spp[grep("DC_AUHT-5579_florida_CaptivaCo_CaptivaIsland_sorted",pca$ind)]<-"Captiva"
spp[grep("DC_AUHT-5581_florida_HighlandsCo_LakeWalesRidgeOrangeBlossom_sorted",pca$ind)]<-"South"
spp[grep("DC_AUHT-5585_florida_HighlandsCo_LakeWalesRidgeLPScrub_sorted",pca$ind)]<-"South"
spp[grep("DC_AUHT-5588_florida_HighlandsCo_Venus_sorted",pca$ind)]<-"South"
spp[grep("DC_AUHT-5593_florida_HighlandsCo_PlacidLakes_sorted",pca$ind)]<-"South"
spp[grep("DC_AUHT-5598_florida_HighlandsCo_LakeJuneinWinter_sorted",pca$ind)]<-"South"
spp[grep("DC_AUHT-5601_florida_Archbold_sorted",pca$ind)]<-"South"
spp[grep("DC_AUHT-5603_florida_HighlandsCo_SebringGrassyCreek_sorted",pca$ind)]<-"South"
spp[grep("DC_AUHT-5606_florida_HighlandsCo_Venus_sorted",pca$ind)]<-"South"
spp[grep("DC_AUHT-5613_florida_HighlandsCo_HighlandsHammock_sorted",pca$ind)]<-"South"
spp[grep("DC_AUHT-5615_florida_Montura_OkaloacoocheeSlough_sorted",pca$ind)]<-"South"
spp[grep("DC_AUHT-5617_florida_CaptivaCo_CaptivaIsland_sorted",pca$ind)]<-"Captiva"
spp[grep("DC_AUHT-5626_florida_MiamiDadeCo_NearTurkeyPoint_sorted",pca$ind)]<-"Pen"
spp[grep("DC_AUHT-5635_florida_HighlandsCo_Archbold_sorted",pca$ind)]<-"South"
spp[grep("DC_AUHT-5636_florida_HighlandsCo_Venus_sorted",pca$ind)]<-"South"
spp[grep("DC_AUHT-5637_florida_HighlandsCo_Venus_sorted",pca$ind)]<-"South"
spp[grep("DC_MB2702_UF123385_Florida_Alachua_sorted",pca$ind)]<-"North"
spp[grep("DC_MB2705_UF150061_Florida_Citrus_sorted",pca$ind)]<-"North"
spp[grep("DC_MB2706_UF150062_Florida_Marion_sorted",pca$ind)]<-"North"
spp[grep("DC_MB2710_UF153475_Florida_Putnam_sorted",pca$ind)]<-"North"
spp[grep("DC_MB2717_UF157531_Florida_Gilchrist_sorted",pca$ind)]<-"North"
spp[grep("DC_MB2719_UF165218_Florida_Citrus_sorted",pca$ind)]<-"North"
spp[grep("DC_OCIC.15_Fuller_PetTrade_sorted",pca$ind)]<-"PetTrade"
spp[grep("DC_A1_georgia_EvansCo_FtStewart_sorted",pca$ind)]<-"East"
spp[grep("DC_A4_georgia_EvansCo_FtStewart_sorted",pca$ind)]<-"East"
spp[grep("DC_A5_georgia_EvansCo_FtStewart_sorted",pca$ind)]<-"East"
spp[grep("DC_A6_georgia_EvansCo_FtStewart_sorted",pca$ind)]<-"East"
spp[grep("DC_AUHT-5646_georgia_Hahira_sorted",pca$ind)]<-"West"
spp[grep("DC_AUHT-5651_georgia_EvansCo_Daisy_sorted",pca$ind)]<-"East"
spp[grep("DC_AUHT-5654_georgia_EvansCo_Daisy_sorted",pca$ind)]<-"East"
spp[grep("DC_AUHT-5655_georgia_EvansCo_Daisy_sorted",pca$ind)]<-"East"
spp[grep("DC_AUHT-5662_georgia_BryanCo_sorted",pca$ind)]<-"East"
spp[grep("DC_AUHT-5665_georgia_EvansCo_Daisy_sorted",pca$ind)]<-"East"
spp[grep("DC_AUHT-5666_georgia_BryanCo_sorted",pca$ind)]<-"East"
spp[grep("DC_AUHT-5668_georgia_EvansCo_Daisy_sorted",pca$ind)]<-"East"
spp[grep("DC_AUHT-5670_georgia_WayneCo_Akin_sorted",pca$ind)]<-"East"
spp[grep("DC_AUHT-5675_georgia_LongCo_Tibet_sorted",pca$ind)]<-"East"
spp[grep("DC_AUHT-5687_georgia_CoffeeCo_SappsStill_sorted",pca$ind)]<-"West"
spp[grep("DC_AUHT-5695_georgia_CoffeeCo_SappsStill_sorted",pca$ind)]<-"West"
spp[grep("DC_AUHT-5698_georgia_CoffeeCo_Pridgen_sorted",pca$ind)]<-"West"
spp[grep("DC_AUHT-5706_georgia_WheelerCo_LumberCity_sorted",pca$ind)]<-"West"
spp[grep("DC_AUHT-5713_georgia_WheelerCo_LumberCity_sorted",pca$ind)]<-"West"
spp[grep("DC_AUHT-5716_georgia_WheelerCo_LumberCity_sorted",pca$ind)]<-"West"
spp[grep("DC_AUHT-5725_georgia_WheelerCo_LumberCity_sorted",pca$ind)]<-"West"
spp[grep("DC_AUHT-5727_georgia_TelfairCo_McRaeHelena_sorted",pca$ind)]<-"West"
spp[grep("DC_AUHT-5729_georgia_TelfairCo_Snipesville_sorted",pca$ind)]<-"West"
spp[grep("DC_AUHT-5734_georgia_TelfairCo_Jacksonville_sorted",pca$ind)]<-"West"
spp[grep("DC_AUHT-5735_georgia_BryanCo_Southward_sorted",pca$ind)]<-"East"
spp[grep("DC_AUHT-5744_georgia_WheelerCo_LumberCity_sorted",pca$ind)]<-"West"
spp[grep("DC_AUHT-5765_georgia_BryanCo_Southward_sorted",pca$ind)]<-"East"
spp[grep("DC_AUHT-5793_georgia_TelfairCo_Snipesville_sorted",pca$ind)]<-"West"
spp[grep("DC_AUHT-5803_georgia_CoffeeCo_Pridgen_sorted",pca$ind)]<-"West"
spp[grep("DC_AUHT-5808_georgia_TelfairCo_Jacksonville_sorted",pca$ind)]<-"West"
spp[grep("DC_AUHT-5830_georgia_TelfairCo_Snipesville_sorted",pca$ind)]<-"West"
spp[grep("DC_AUHT-5871_georgia_EvansCo_Daisy_sorted",pca$ind)]<-"East"
spp[grep("DC_B4_georgia_BryanCo_FtStewart_sorted",pca$ind)]<-"East"
spp[grep("DC_B8_georgia_BryanCo_FtStewart_sorted",pca$ind)]<-"East"
spp[grep("DC_C2_georgia_TelfairCo_sorted",pca$ind)]<-"West"
spp[grep("DC_C6_georgia_TelfairCo_sorted",pca$ind)]<-"West"
spp[grep("DC_D1_georgia_Conecuh_sorted",pca$ind)]<-"West"
spp[grep("DC_D2_georgia_Conecuh_sorted",pca$ind)]<-"West"
spp[grep("DC_D3_georgia_Conecuh_sorted",pca$ind)]<-"West"
spp[grep("DC_D4_georgia_Conecuh_sorted",pca$ind)]<-"West"
spp[grep("DC_D5_georgia_Conecuh_sorted",pca$ind)]<-"West"
spp[grep("DC_D9_georgia_Conecuh_sorted",pca$ind)]<-"West"
spp[grep("DC_E2_georgia_GenCoffeeStatePark_sorted",pca$ind)]<-"West"
spp[grep("DC_F10_georgia_BryanCo_FtStewart_sorted",pca$ind)]<-"East"
spp[grep("DC_F6_georgia_BryanCo_FtStewart_sorted",pca$ind)]<-"East"
spp[grep("DC_F7_georgia_BryanCo_FtStewart_sorted",pca$ind)]<-"East"
spp[grep("DC_F9_georgia_BryanCo_FtStewart_sorted",pca$ind)]<-"East"
spp[grep("DC_FEMALET_unknown_unknown_sorted",pca$ind)]<-"East"
spp[grep("DC_FEMALEV_unknown_unknown_sorted",pca$ind)]<-"West"
spp[grep("DC_G4_georgia_EvansCo_Canoochee_sorted",pca$ind)]<-"East"
spp[grep("DC_G9_georgia_EvansCo_SandsSiteCanoochee_sorted",pca$ind)]<-"East"
spp[grep("DC_H4_georgia_EvansCo_WarnellCanoochee_sorted",pca$ind)]<-"East"
spp[grep("DC_H5_georgia_EvansCo_WarnellCanoochee_sorted",pca$ind)]<-"East"
spp[grep("DC_I2_georgia_BroxtonRocksTNC_sorted",pca$ind)]<-"West"
spp[grep("DC_K3_georgia_WheelerCo_LittleOcmulgee_sorted",pca$ind)]<-"West"
spp[grep("DC_K5_georgia_WheelerCo_LittleOcmulgee_sorted",pca$ind)]<-"West"
spp[grep("DC_K6_georgia_WheelerCo_LittleOcmulgee_sorted",pca$ind)]<-"West"
spp[grep("DC_L2_georgia_AlapahaRiverRanch_sorted",pca$ind)]<-"West"
spp[grep("DC_MB2723_076321591_Gerogia_OISPNorth_sorted",pca$ind)]<-"West"
spp[grep("DC_MB2724_605806003_Georgia_GaskinsProperty_sorted",pca$ind)]<-"West"
spp[grep("DC_MB2803_605804613_MoodyForest_sorted",pca$ind)]<-"West"
spp[grep("DC_MB2805_604806826_FortStewart_sorted",pca$ind)]<-"East"
spp[grep("DC_MB2810_605359320_CanoocheeSandhillsWMA_sorted",pca$ind)]<-"East"
spp[grep("DC_MB2813_605056639_OISPNorth_sorted",pca$ind)]<-"West"
spp[grep("DC_MB2815_603639016_GaskinsProperty_sorted",pca$ind)]<-"West"
spp[grep("DC_MB2819_606112553_GaskinsProperty_sorted",pca$ind)]<-"West"
spp[grep("DC_MB2828_605799017_GaskinsProperty_sorted",pca$ind)]<-"West"
spp[grep("DC_MB2836_076308773_OISPNorth_sorted",pca$ind)]<-"West"
spp[grep("DC_MB2838_605791060_BroxtonRocksEast_sorted",pca$ind)]<-"West"
spp[grep("DC_MB2844_605803125_GaskinsProperty_sorted",pca$ind)]<-"West"
spp[grep("DC_MB2846_603633631_Langdale_sorted",pca$ind)]<-"West"
spp[grep("DC_MB2847_845338285_FortStewart_sorted",pca$ind)]<-"East"
spp[grep("DC_MB2848_605790607_BroxtonRocksEast_sorted",pca$ind)]<-"West"
spp[grep("DC_MB2852_603639823_Langdale_sorted",pca$ind)]<-"West"
spp[grep("DC_MB2861_607338834_OISPNorth_sorted",pca$ind)]<-"West"
spp[grep("DC_N4_georgia_WayneCo_LittleSatillaWMA_sorted",pca$ind)]<-"West"
spp[grep("DC_O3_georgia_WheelerCo_LittleOcmulgee_sorted",pca$ind)]<-"West"
spp[grep("DC_O5_georgia_WheelerCo_LittleOcmulgee_sorted",pca$ind)]<-"West"
spp[grep("DC_OCIC.11_K1_georgia_WheelerCo_LittleOcmulgee_sorted",pca$ind)]<-"West"
spp[grep("DC_OCIC.246_X1_georgia_JeffDavisCo_FlatTubWMA_sorted",pca$ind)]<-"West"
spp[grep("DC_P5_georgia_TelfairCo_AlligoodTract_sorted",pca$ind)]<-"West"
spp[grep("DC_Q4_georgia_BryanCo_FtStewart_sorted",pca$ind)]<-"East"
spp[grep("DC_S1_georgia_LongCo_FIAFRC_sorted",pca$ind)]<-"East"
spp[grep("DC_S4_georgia_LongCo_FIAFRC_sorted",pca$ind)]<-"East"
spp[grep("DC_S8_georgia_LongCo_FIAFRC_sorted",pca$ind)]<-"East"


pca$spp


clade<-rep(NA,length(pca$ind))
clade[grep("East",pca$spp)]<-"Atlantic"
clade[grep("West",pca$spp)]<-"Atlantic"
clade[grep("North",pca$spp)]<-"Gulf"
clade[grep("Pen",pca$spp)]<-"Gulf"
clade[grep("PetTrade",pca$spp)]<-"Gulf"
clade[grep("South",pca$spp)]<-"Gulf"
clade[grep("Captiva",pca$spp)]<-"Gulf"
clade

write.table(pca, file = "assignments.csv")
pca<-as_tibble(data.frame(pca,spp,clade))
#ThePCvalueneedstoberangefrom1:thelengthofeigenval
pve<-data.frame(PC=1:10,pve=eigenval/sum(eigenval)*100)
pve
pca
a<-ggplot(pve,aes(PC,pve))+geom_bar(stat="identity")
a+ylab("Percentagevarianceexplained")+theme_light()

#calculatethecumulativesumofthepercentagevarianceexplained
cumsum(pve$pve)
pca$spp

# b<-ggplot(pca.old,aes(PC1,PC2,col=batch,label=ind))+geom_point(size=3)+geom_text()
# b<-b+scale_colour_manual(values=c("red","blue",))
# b<-b+coord_equal()+theme_light()
# b+xlab(paste0("PC1(",signif(pve$pve[1],3),"%)"))+ylab(paste0("PC2(",signif(pve$pve[2],3),"%)"))



b<-ggplot(pca,aes(PC1,PC2,col=spp,label=ind))+geom_point(size=3)
b<-b+scale_colour_viridis_d()
b<-b+coord_equal()+theme_light()
PC.1.2<-b+xlab(paste0("PC1(",signif(pve$pve[1],3),"%)"))+ylab(paste0("PC2(",signif(pve$pve[2],3),"%)"))

PC.1.2

ggsave("./pc12-color.pdf",
plot(PC.1.2)
)



b<-ggplot(pca,aes(PC1,PC2,col=clade,label=ind))+geom_point(size=3)
b<-b+scale_colour_manual(values = c("darkorange", "blue"))
b<-b+coord_equal()+theme_light()
PClade.1.2<-b+xlab(paste0("PC1(",signif(pve$pve[1],3),"%)"))+ylab(paste0("PC2(",signif(pve$pve[2],3),"%)"))

PClade.1.2

ggsave("./pc12-clade.pdf",
plot(PClade.1.2)
)


# b<-ggplot(pca,aes(PC2,PC3,col=spp))+geom_point(size=3)
# b<-b+scale_colour_manual(values=c("darkorange","blue","darkgreen","purple"))
# b<-b+coord_equal()+theme_light()
# PC.2.3<-b+xlab(paste0("PC2(",signif(pve$pve[2],3),"%)"))+ylab(paste0("PC3(",signif(pve$pve[3],3),"%)"))
# PC.2.3

# ggsave("./pc23.pdf",
# plot(PC.2.3)



# b<-ggplot(pca.new,aes(PC1,PC2,col=spp,label=ind))+geom_point(size=3)+geom_text()
# b<-b+scale_colour_manual(values=c("darkorange","blue","darkgreen","purple"))
# b<-b+coord_equal()+theme_light()
# PCNew.1.2<-b+xlab(paste0("PC1(",signif(pve$pve[1],3),"%)"))+ylab(paste0("PC2(",signif(pve$pve[2],3),"%)"))

# PCNew.1.2