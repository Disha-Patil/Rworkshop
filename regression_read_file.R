#read file

data=read.csv("ageandheight.csv")

dim(data)

boxplot(data$age)
boxplot(data$height)

hist(data$height,freq = F)

plot(density(data$height))

data=data[-which(data$height<20),]

# model

linear_Model=lm(height~age,data=data)

linear_Model$coefficients

plot(data$age,data$height)
abline(a=linear_Model$coefficients[1],b=linear_Model$coefficients[2])

plot(linear_Model$residuals)

new=data.frame(age=c(22,36,29))
predict(linear_Model,new)



#
install.packages("mlbench")
library(mlbench)
library(help = "mlbench")

boston=BostonHousing

?BostonHousing

plot(boston$medv,boston$rm)
pairs(boston[,c(10:13,14)])


write.csv(boston,"boston.csv")
