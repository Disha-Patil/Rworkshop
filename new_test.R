#newhelp(hist)
require(stats)
set.seed(14)
x <- rchisq(100, df = 4)
x
hist(x, freq = FALSE, ylim = c(0, 0.2))
help(hist)
require(stats)
set.seed(14)
x <- rchisq(100, df = 4)
x
hist(x, freq = FALSE, ylim = c(0, 0.2))
setwd("~/R_workshop")
2+2
3+4
TRUE
FALSE
T
F
!TRUE
2^1/2
2^(1/2)
2^(1/2) * 2^(1/2)
2^(1/2) * 2^(1/2) - 2
x=2
x<-2
x<-2
x<-4
weight_kg<-55
weight_kg
weight_kg<-c(55,65)
weight_kg
x<-1:1000
x
1:10
x<-1:10
x
x
x*2.5
mass=47.5
age=122
2/3
mass/age
mass
age
c(12,13,567,23)
c("mouse","cat","dog")
c(12,13,567,23,2.5)
animals<-c("mouse","cat","dog")
length(animals)
class(animals)
class(x)
str(animals)
c(1,2,"a",T)
animals
animals[1]
animals[3]
animals[4]
c(1,2)
animals[c(1,2)]
weight_kg<-c(34,50,43,87,56,98)
weight_kg
weight_kg>50
weight_kg[weight_kg>50]
1:10
?seq
seq(1,10,1)
seq(from=1,to=10,by=3)
c(1,1,1,1,1)
rep(1,10)
rep_x<-rep(1,10)
x<-1:10
y<-2*c(12:22)
length(y)
y<-2*c(12:21)
length(y)
length(x)
?plot
plot(x=x,y=y)
plot(x=x,y=y,"b")
plot(x=x,y=y,type="b")
plot(x=x,y=y,type="n")
plot(x=x,y=y,type="b",col="red")
plot(x=x,y=y,type="b",col="red",pch=19)
plot(x=x,y=y,type="b",col="red",pch=1)
plot(x=x,y=y,type="b",col="red",pch=2)
plot(x=x,y=y,type="b",col="red",pch=5)
