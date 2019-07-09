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
setwd("/home/jfwalker/Desktop/OutlierSims/MisalignmentTest/")
IhateR2 = read.table("ForRcorrected",sep = ",",header = FALSE)
a2 = t(IhateR2)
bipartition2 = a2[1:5]
Temp2 = qplot(1:5,bipartition2,xlab="Gene",ylab="Average Per Site ΔSSLL")+theme_bw()+theme(axis.title.x = element_text(size=20), axis.title.y = element_text(size=20), axis.text.x = element_text(color="black",size = 10), axis.text.y = element_text(color="black",size = 10))
Temp2 = Temp2 +theme(legend.position="none") + ylim(-.35,0.05)
Temp2 = Temp2 + annotate("text", x=5, y=-0.335940384615412, label= "X",size=6)  +theme(legend.position="none") + geom_abline(intercept = 0, slope = 0)
Temp2 = Temp2 + ggtitle("Effects of alignment error")+ theme(plot.title = element_text(size=20,face="bold",hjust=0.5),panel.grid.major = element_blank(), panel.grid.minor = element_blank())
Temp2
#Plot Everything
#plot_grid(CTP,GCP,MCP,Vt,VG,VM,labels=c("A","B","C","D","E","F"),ncol=3,nrow=2)
plot_grid(Temp,Temp2,labels=c("A","B"),ncol=2,nrow=1)
