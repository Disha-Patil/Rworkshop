
# read csv file in R
data1=read.csv("ageandheight.csv")
data1
head(data1,2)
tail(data1,2)

# check if dataframe
class(data1)

# exploratory analysis

# check for dimensions
dim(data1)
nrow(data1)
ncol(data1)
#column names
colnames(data1)
#extract one column
data1$no_siblings

class(data1$no_siblings)
class(data1$age)

for(i in 1:ncol(data1)){
  print(i)
  print(class(data1[,i]))
  
}

# distribution
hist(data1$height)
hist(data1$age)

# outliers
boxplot(data1$height)
boxplot(data1$age)

# remove outlier
data1=data1[-which(data1$height<20), ]

# check for na
which(is.na(data1$height))

# relationship
plot(x=data1$age,y=data1$height)

plot(data1$age,data1$no_siblings)


plot(data1$age,data1$height)


# linear model
model=lm(height~age,data=data1)
model$coefficients
coef(model)

intercept=coef(model)[1]
slope=coef(model)[2]


plot(data1$age,data1$height)
abline(a=intercept,b=slope,col="red")

cor(data1$age,data1$height)

# structure of model

str(model)

summary(model)

plot(model$residuals)

# predict on new data
new=data.frame(age=c(25,21,23))
predict(model,new)

#multiple regression
model=lm(height~age+no_siblings,data=data1)

##

model=lm(height~age+no_siblings,data=data1)
new=data.frame(age=c(25,21,23),no_siblings=c(2,1,0))
predict(model,new)

# packages

install.packages("mlbench")
library(mlbench)

data("BostonHousing")


#load data
data("BostonHousing")

head(BostonHousing)

#rename data
boston=BostonHousing

cols=colnames(boston)
classes=c()
for(i in 1:length(cols)){
  #print(i)
  classes[i]=class(boston[,i])
}


cols[which(classes=="factor")]


pairs(boston[,c(10:13,14)])



plot(boston$medv,
     col=c("red","blue")[boston$chas])

#legend()



pairs(boston[ ,c(11:13,14)],
      col=c("red","blue")[boston$chas])


#dist
hist(boston$rm,freq =F)
lines(density(boston$rm))

summary(boston$rm)

which(is.na(boston$rm)==TRUE)

boxplot(boston$rm)


linear=lm(medv~rm,data=boston)

plot(x=(boston$rm),y=boston$medv)
abline(a=coef(linear)[1],b=coef(linear)[2],
       col="red")


summary(linear)


plot(linear$residuals)


linear=lm(medv~ lstat+rm  ,data=boston)



# nonlinaer polynomial fit

nl =  lm(medv~poly(lstat,2,raw=T),data=boston)
nl
fitted_values = nl$coefficients[1] +
                nl$coefficients[2] * boston$lstat +
                nl$coefficients[3] * (boston$lstat)^2

plot(boston$lstat,boston$medv)

lines((boston$lstat),
      fitted_values,
      col="red")

lines(sort(boston$lstat),
      fitted_values[order(boston$lstat)],
      col="red")



#new data

library(mlbench)

# load the data
data("Loblolly")
#print data
Loblolly
# view data
View(Loblolly)
# look at the documentation

?Loblolly

# Exploratoey analysis

# dimensions
dim(Loblolly)
row_L=dim(Loblolly)[1]
col_L=dim(Loblolly)[2]
# column names
colnames()

# check class of the variables
class(Loblolly$Seed)


# histogram for distribution
hist(Loblolly$height,breaks=10,
     main="distribution of height of trees",
     xlab = "height",
     ylab = "Frequency",
     col="magenta")

# boxplot outliers
boxplot(Loblolly$height,
        col="coral",
        main="boxplot for height")

# check if na values
is.na(Loblolly$height)

which(is.na(Loblolly$height) == T)


# calculate stats functions

mean()
sd()
var()
max()
min()
summary()

#see factor levels
levels(Loblolly$Seed)
# plot the scatter plot
plot(Loblolly$height,
     Loblolly$age,
     col=c(1:14)[unclass(Loblolly$Seed)],
     xlab="Height",
     ylab="age",
     main="doesn't matter where the seed comes from...
     as age increases height increase")

#







