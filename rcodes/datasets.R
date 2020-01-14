# get iris data
df_iris<-datasets::iris

# check dimensions

rows<-dim(df_iris)[1]
cols<-dim(df_iris)[2]

# what are the columns

colnames(df_iris)[1]

# class of each column

df_iris[ ,1]
 
class(df_iris[,5])

# statistics

# mean for entuire data
mean(df_iris$Sepal.Length)

# mean for a single species
#index way
setosa_ind=which(df_iris$Sepal.Length == "setosa")

mean(df_iris[setosa_ind,1])

# subset way

levels(df_iris$Species)

iris_setosa<-subset(df_iris,subset = (df_iris$Species == "setosa"))

setosa_mean<-mean(iris_setosa$Sepal.Length)


# other statistical functions
median()
sd()
var()
cor()
cov()

#histogram for frequency
hist(iris_setosa$Sepal.Length)
#histogram for density
hist(iris_setosa$Sepal.Length,freq = F)

# scatter plot
plot(iris_setosa$Sepal.Length)

plot(iris_setosa$Sepal.Length,iris_setosa$Petal.Length)

#pair plot
pairs(df_iris[ ,-5])


