## Praktikum Probstat Modul 2
#1
##a
x = c(78, 75, 67, 77, 70, 72, 78, 74, 77)
y = c(100, 95, 70, 90, 90, 90, 89, 90, 100)

hasil = sd(x-y)
hasil

##b
#t.test(x, y, alternative = "greater", var.equal = FALSE)
t.test(y,x,paired=TRUE)

##c
var.test(x, y)
t.test(x, y, mu = 0, alternative = "two.sided", var.equal = TRUE)

#2
install.packages("BSDA")
library(BSDA)
##a

##b
zsum.test(mean.x=23500, sigma.x = 3900, n.x = 100, alternative = "greater", mu = 20000, conf.level = 0.95) 

##c

#3
##a

##b
tsum.test(mean.x=3.64, s.x = 1.67, n.x = 19, mean.y =2.79 , s.y = 1.32, n.y = 27, alternative = "greater", var.equal = TRUE)

##c
install.packages("mosaic")
library(mosaic)
plotDist(dist='t', df=2, col="black")

##d
qchisq(p = 0.05, df = 2, lower.tail=FALSE)

##e

##f

#4
##a
myFile  <- read.table(url("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt"))
dim(myFile)
head(myFile)
attach(myFile)

myFile$V1 <- as.factor(myFile$V1)
myFile$V1 = factor(myFile$V1,labels = c("Kucing Oren","Kucing Hitam","Kucing Putih","Kucing Oren"))

class(myFile$V1)

group1 <- subset(myFile, V1=="Kucing Oren")
group2 <- subset(myFile, V1=="Kucing Hitam")
group3 <- subset(myFile, V1=="Kucing Putih")


##b
bartlett.test(Length~V1, data=dataoneway)

##c
qqnorm(group1$Length)
qqline(group1$Length)

##d

##e

model1 <- lm(Length~Group, data=myFile)
anova(model1)

TukeyHSD(aov(model1))

##f

library(ggplot2)
ggplot(dataoneway, aes(x = Group, y = Length)) + geom_boxplot(fill = "grey80", colour = "black") + scale_x_discrete() + xlab("Treatment Group") +  ylab("Length (cm)")

#5
##a
install.packages("multcompView")
library(readr)
library(ggplot2)
library(multcompView)
library(dplyr)

GTL <- read_csv("GTL.csv")
head(GTL)

str(GTL)

qplot(x = Temp, y = Light, geom = "point", data = GTL) +
  facet_grid(.~Glass, labeller = label_both)

##b
GTL$Glass <- as.factor(GTL$Glass)
GTL$Temp_Factor <- as.factor(GTL$Temp)
str(GTL)

anova <- aov(Light ~ Glass*Temp_Factor, data = GTL)
summary(anova)

##c
data_summary <- group_by(GTL, Glass, Temp) %>%
  summarise(mean=mean(Light), sd=sd(Light)) %>%
  arrange(desc(mean))
print(data_summary)

##d
tukey <- TukeyHSD(anova)
print(tukey)

##e
tukey.cld <- multcompLetters4(anova, tukey)
print(tukey.cld)

cld <- as.data.frame.list(tukey.cld$`Glass:Temp_Factor`)
data_summary$Tukey <- cld$Letters
print(data_summary)

write.csv("GTL_summary.csv")
