air<-datasets::airquality

#Describe

head(air)
tail(air)

# dimension to get row and col numbers
dim(air)

# row count
nrow(air)

# col count
ncol(air)

#names

colnames(air)

subset(air,select=Ozone)


mean(air$Ozone,na.rm = T)

#get rid of NA
air$Ozone[-which(is.na(air$Ozone))]

#pair plot with correlation numbers

pairs(data[,-5],upper.panel = cor(data[,-5]))

plot(cars$mpg,cars$hp,xlab = "MPG",ylab = "HP",
     col=c("red","blue")[factor(cars$vs)],
     main="Pay more for more power :)")
