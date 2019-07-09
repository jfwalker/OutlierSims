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

###########


#Carnivory
################

setwd("/home/jfwalker/Desktop/OutlierSims/EmpiricalExamples/Teleost/")
IhateR4 = read.table("TeleostAvg.txt",sep = "\t",header = TRUE)
a4 = IhateR4[,2]
bipartition4 = a4[1:4682]
Temp4 = qplot(1:4682,bipartition4,ylab="ΔGWLL",xlab="Gene")+theme_bw()+theme(axis.title.x = element_text(size=20), axis.title.y = element_text(size=20), axis.text.x = element_text(color="black",size = 10), axis.text.y = element_text(color="black",size = 10))
Temp4 = Temp4 +theme(legend.position="none") + ylim(-100,250)  
Temp4 = Temp4 + annotate("text", x=3491, y=209.845537000001, label= "X",size=6)  +theme(legend.position="none") + geom_abline(intercept = 0, slope = 0)
Temp4 = Temp4 + ggtitle("Teleost ΔGWLL")+ theme(plot.title = element_text(face="bold",hjust=0.5),panel.grid.major = element_blank(), panel.grid.minor = element_blank())
Temp4 = Temp4 + geom_vline(xintercept=3491,linetype="dashed") 
Temp4 

#Pro_ENSG00000064601	174.528118999999	0.404937631090484
a3 = IhateR4[,3]
bipartition3 = a3[1:4682]
Temp3 = qplot(1:4682,bipartition3,,ylab="Average ΔSSLL", xlab="Gene")+theme_bw()+theme(axis.title.x = element_text(size=20), axis.title.y = element_text(size=20), axis.text.x = element_text(color="black",size = 10), axis.text.y = element_text(color="black",size = 10))
Temp3 = Temp3 +theme(legend.position="none") + ylim(-0.3,0.5) + annotate("text", x=3491, y=0.385745472426473, label= "X",size=6)
Temp3 = Temp3 + theme(legend.position="none") + geom_abline(intercept = 0, slope = 0)
Temp3 = Temp3 + ggtitle("Teleost Average ΔSSLL")+ theme(plot.title = element_text(face="bold",hjust=0.5),panel.grid.major = element_blank(), panel.grid.minor = element_blank())
Temp3 = Temp3 + geom_vline(xintercept=3491,linetype="dashed") 
Temp3

plot_grid(Temp4,Temp3,labels=c("A","B"),ncol=2,nrow=1)





#####################


#Vertebrates
####################


setwd("/home/jfwalker/Desktop/OutlierSims/EmpiricalTests/")
IhateR5 = read.table("ForRVertebratesGWLL",sep = ",",header = FALSE)
a5 = t(IhateR5)
bipartition5 = a5[1:248]
Temp5 = qplot(1:248,bipartition5,xlab="Gene",ylab="ΔGWLL")+theme_bw()+theme(axis.title.x = element_text(size=20), axis.title.y = element_text(size=20), axis.text.x = element_text(color="black",size = 10), axis.text.y = element_text(color="black",size = 10))
Temp5 = Temp5  +theme(legend.position="none")
Temp5 = Temp5 + annotate("text", x=125, y=78.3605189999898, label= "X",size=6) + annotate("text", x=151, y=45.5203890000007, label= "X",size=6) +theme(legend.position="none") + geom_abline(intercept = 0, slope = 0)
Temp5 = Temp5 + annotate("text", x=117, y=19.7470439999893, label= "X",size=6) + ggtitle("Vertebrate ΔGWLL")+ theme(plot.title = element_text(face="bold",hjust=0.5),panel.grid.major = element_blank(), panel.grid.minor = element_blank())
Temp5


setwd("/home/jfwalker/Desktop/OutlierSims/EmpiricalTests/")
IhateR6 = read.table("ForRcorrectedVertebrates",sep = ",",header = FALSE)
a6 = t(IhateR6)
bipartition6 = a6[1:248]
Temp6 = qplot(1:248,bipartition6,xlab="Gene",ylab="Average ΔSSLL")+theme_bw()+theme(axis.title.x = element_text(size=20), axis.title.y = element_text(size=20), axis.text.x = element_text(color="black",size = 10), axis.text.y = element_text(color="black",size = 10))
Temp6 = Temp6  +theme(legend.position="none")
Temp6 = Temp6 + annotate("text", x=125, y=0.143517434065915, label= "X",size=6) + annotate("text", x=151, y=0.101835322147653, label= "X",size=6) +theme(legend.position="none") + geom_abline(intercept = 0, slope = 0)
Temp6 = Temp6 + annotate("text", x=117, y=0.0447778775509961, label= "X",size=6) +ggtitle("Vertebrate Average ΔSSLL")+ theme(plot.title = element_text(face="bold",hjust=0.5),panel.grid.major = element_blank(), panel.grid.minor = element_blank())
Temp6

plot_grid(Temp,Temp2,Temp4,Temp3,Temp5,Temp6,labels=c("A","B","C","D","E","F"),ncol=2,nrow=3)





