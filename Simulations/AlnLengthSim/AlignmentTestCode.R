library(ggplot2)
library(cowplot)
library(gridExtra)
rm(list = ls())
###############################################################
#Carnivory Dataset Code
#setwd("/home/jfwalker/Desktop/SSLL/marginalizelikelihoods/ForDryad/GeneWiseLikelihoods/CarnivoryMarginalized/")
#m = read.table("ForGraph.txt",skip=0,sep= "\t")
#s = 1 
#e = 1237
#Bipartition =m[s:e,1]
#marginalized_carnivory_plot <- qplot(s:e,m[s:e,2],colour=Bipartition,shape=Bipartition,xlab="Gene",ylab="Difference in log-likelihood from supermatrix bipartition")+theme_bw()+ggtitle("Carnivory MSSB Gene Likelihoods")+ theme(plot.title = element_text(face="bold",hjust=0.5), panel.grid.major = element_blank(), panel.grid.minor = element_blank())
#marginalized_carnivory_plot = marginalized_carnivory_plot+scale_color_manual(values = c("coal tree" = "black"))
#marginalized_carnivory_plot = marginalized_carnivory_plot+scale_shape_manual(values = c(4))
#MCP <- marginalized_carnivory_plot 

s = 1 
e = 5
setwd("/home/jfwalker/Desktop/OutlierSims/")
IhateR = read.table("ForR",sep = ",",header = FALSE)
a = t(IhateR)
bipartition = a[s:e]
Temp = qplot(s:e,bipartition,xlab="Gene",ylab="ΔGWLL")+theme_bw()+theme(axis.title.x = element_text(size=20), axis.title.y = element_text(size=20), axis.text.x = element_text(color="black",size = 10), axis.text.y = element_text(color="black",size = 10))
Temp = Temp  +theme(legend.position="none")
Temp = Temp + annotate("text", x=5, y=30, label= "X",size=6)  +theme(legend.position="none") + geom_abline(intercept = 0, slope = 0)
Temp = Temp+ggtitle("Length Two Topology Test")+ theme(plot.title = element_text(size=20,face="bold",hjust=0.5),panel.grid.major = element_blank(), panel.grid.minor = element_blank())
Temp


setwd("/home/jfwalker/Desktop/ForDryadSSLL/FigureCode/Figure2Code/")
IhateR2 = read.table("ForRVert.txt",sep = ",",header = FALSE)
a2 = t(IhateR2)
bipartition2 = a2[1:248]
Temp2 = qplot(1:248,bipartition2,xlab="Gene",ylab="ΔGWLL")+theme_bw()+theme(axis.title.x = element_text(size=20), axis.title.y = element_text(size=20), axis.text.x = element_text(color="black",size = 10), axis.text.y = element_text(color="black",size = 10))
Temp2 = Temp2 + annotate("text", x=220, y=-15, label= "Coalescent",size=7) + annotate("text", x=220, y=70, label= "Supermatrix",size=7) +theme(legend.position="none")
Temp2 = Temp2 + annotate("text", x=125, y=79.55, label= "X",size=6) + annotate("text", x=151, y=46, label= "X",size=6) +theme(legend.position="none") + geom_abline(intercept = 0, slope = 0)
Temp2 = Temp2 +ggtitle("Vertebrate Two Topology Test")+ theme(plot.title = element_text(face="bold",hjust=0.5),panel.grid.major = element_blank(), panel.grid.minor = element_blank())
Temp2
#Plot Everything
#plot_grid(CTP,GCP,MCP,Vt,VG,VM,labels=c("A","B","C","D","E","F"),ncol=3,nrow=2)
plot_grid(Temp2,Temp,labels=c("A","B"),ncol=2,nrow=1)
