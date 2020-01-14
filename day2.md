

```r
#create vector
weight_g<-c(20,24,55,68,97)

#conditional subsetting
weight_new<-weight_g[weight_g<30 | weight_g >80]

weight_new<-weight_g[weight_g==97 & weight_g >80]

animals<-c("mouse","cat","dog")

#call by index

ind<-animals  %in% c("duck","fox","cat","dog")

animals[ind]
```

```
## [1] "cat" "dog"
```

```r
#factors in R

coin_toss<-c("Heads","Tails","Tie","Heads","Tails")

f<-factor(coin_toss)

wdays<-c("Mon","Thu","Wed")
factor(wdays)
```

```
## [1] Mon Thu Wed
## Levels: Mon Thu Wed
```

```r
all_wdays<-c("Mon","Tue","Wed","Thu","Fri")
factor(wdays,levels=all_wdays)
```

```
## [1] Mon Thu Wed
## Levels: Mon Tue Wed Thu Fri
```

```r
##arrays
```

