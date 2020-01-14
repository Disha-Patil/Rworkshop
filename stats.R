# load data
data<-datasets::iris
# view it complete
View(data)
# view first few lines
head(data)
#view last few lines
tail(data)
# mean of entire data for a column
mean(data$Sepal.Length)

subset(data,subset = (data$Species == "setosa"))

data_setosa=subset(data,subset = (data$Species == "setosa"))

colnames(data_setosa)

# mean
mean_sepal=mean(data$Sepal.Length)
mean(data_setosa$Sepal.Length)

# stats
median()
sd()
var()
cor()
cov()
summary(data)

# visual stats

hist(data$Sepal.Length,freq = F)
lines(density(data$Sepal.Length))

boxplot(data$Sepal.Length,main="Boxplot for sepal length")



# pairs plot
pairs(data[ ,-5],
      col=c("red","blue","green")[unclass(data$Species)],
      pch=5
      )

plot(data$Sepal.Length,data$Petal.Length,col="red",main="scatter",pch=1)

# summary






