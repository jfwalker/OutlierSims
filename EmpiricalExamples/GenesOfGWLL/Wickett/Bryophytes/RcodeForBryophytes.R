setwd("/Users/Walker/Desktop/GenesOfGWLL/Bryophytes/")
a = read.table("BryophytesAlnAdjustment.txt",sep="\t",header=TRUE)
a
plot(a[,2])
plot(a[,3])
#test for a correlation between likelihood and adjusted likelihood
scatter.smooth(a[,2],a[,3],ylab="Avg SSLL",xlab="GWLL",main="Genewise likelihood vs Avg likelihood")
cor(a[,2], a[,3])
linearMod <- lm(a[,2] ~ a[,3])
print(linearMod)
summary(linearMod)

setwd("/Users/Walker/Desktop/GenesOfGWLL/Gymnosperms/")
a = read.table("GymnospermAdjusted.txt",sep="\t",header=TRUE)
a
hist(a[,2],breaks=100)
points(54,25,col="red")
hist(a[,3],breaks=100)
shapiro.test(a[,2])
shapiro.test(a[,3])
dixon.test(a[,2])
scatter.smooth(a[,2],a[,3])
linearMod <- lm(a[,2] ~ a[,3])
print(linearMod)
summary(linearMod)


setwd("/Users/Walker/Desktop/GenesOfGWLL/ControlSeedPlants/")
a = read.table("Control_Seed_plant_Avg.txt",sep="\t",header=TRUE)
a
plot(a[,2])
points(54,25,col="red")
plot(a[,3])
