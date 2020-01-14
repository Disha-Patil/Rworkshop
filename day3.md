

```r
# dataframe from column
names<-c("kedar","shyam","mohan","geeta","seema","priya")
ages <- c(23,22,21,22,23,23)
height <- c(165,170,167,160,164,166)
has_specs <- c("yes","no","no","yes","no","yes")

df=data.frame(names,ages,height,has_specs)

df
```

```
##   names ages height has_specs
## 1 kedar   23    165       yes
## 2 shyam   22    170        no
## 3 mohan   21    167        no
## 4 geeta   22    160       yes
## 5 seema   23    164        no
## 6 priya   23    166       yes
```

```r
df[,1]=as.vector(df[,1])

# check the type of your data
class(df[,4])
```

```
## [1] "factor"
```

```r
# datframe by row vector

obs<-list(
  c("Name"="kedar","Age"=23,"Height"=165,"Glasses"="yes"),
  c("Name"="shyam","Age"=21,"Height"=160,"Glasses"="no"),
  c("Name"="mohan","Age"=22,"Height"=169,"Glasses"="no")
)

obs[[1]]
```

```
##    Name     Age  Height Glasses 
## "kedar"    "23"   "165"   "yes"
```

```r
rbind(obs[[1]],obs[[2]])
```

```
##      Name    Age  Height Glasses
## [1,] "kedar" "23" "165"  "yes"  
## [2,] "shyam" "21" "160"  "no"
```

```r
# append row to dataframe

#1
rows=dim(df)[1]
df[rows+1,]=c("aisha",25,162,"yes")

#2
df=rbind(df,c("aisha",25,162,"yes"))

# check if you have double entries

unique(df[,1])
```

```
## [1] "kedar" "shyam" "mohan" "geeta" "seema" "priya" "aisha"
```

```r
# acess by col names
df$names
```

```
## [1] "kedar" "shyam" "mohan" "geeta" "seema" "priya" "aisha" "aisha"
```

```r
df<-df[c(-7,-6),]



# missing data
df <- rbind(df,c("aisha",23,150,"none"))
```

```
## Warning in `[<-.factor`(`*tmp*`, ri, value = "none"): invalid factor level,
## NA generated
```

```r
# 1 remove
# which function
logical_na=is.na(df$has_specs)

na_ind=which(logical_na)

df=df[-na_ind,]

df
```

```
##   names ages height has_specs
## 1 kedar   23    165       yes
## 2 shyam   22    170        no
## 3 mohan   21    167        no
## 4 geeta   22    160       yes
## 5 seema   23    164        no
## 8 aisha   25    162       yes
```

```r
# change the row names

# nrow gives number of rows
row.names(df) <- seq(from=1,to=nrow(df),by=1)

# subset a dataframe

subset(df,select = c(ages,height) )
```

```
##   ages height
## 1   23    165
## 2   22    170
## 3   21    167
## 4   22    160
## 5   23    164
## 6   25    162
```

```r
subset(df,subset = ages<23 , select = c(names,has_specs) )
```

```
##   names has_specs
## 2 shyam        no
## 3 mohan        no
## 4 geeta       yes
```

```r
# colnames of a dataframe

colnames(df) <- c("Name","Age","Height","Glasses")

# matrix to dataframe

mat=matrix(1:9,nrow = 3)

df_mat<-data.frame(mat)

# combine two dataframe by column

df1= subset(df,subset = ages<23 )
df2 = df_mat

# column binding
cbind(df1,df2)
```

```
##    Name Age Height Glasses X1 X2 X3
## 2 shyam  22    170      no  1  4  7
## 3 mohan  21    167      no  2  5  8
## 4 geeta  22    160     yes  3  6  9
```

```r
# combine on specific column

born <- rbind(data.frame("name"="mohan",
                         "place_b"="shirdi",
                         "year_b"=1959),
              data.frame("name"="girija",
                         "place_b"="pune",
                         "year_b"=1950))

dead <- rbind(data.frame("name"="mohan",
                         "place_d"="shirdi",
                         "year_d"=2018),
              data.frame("name"="girija",
                         "place_d"="pune",
                         "year_d"=2000))

cbind(born,dead)
```

```
##     name place_b year_b   name place_d year_d
## 1  mohan  shirdi   1959  mohan  shirdi   2018
## 2 girija    pune   1950 girija    pune   2000
```

```r
merge(born,dead,by="name")
```

```
##     name place_b year_b place_d year_d
## 1 girija    pune   1950    pune   2000
## 2  mohan  shirdi   1959  shirdi   2018
```

```r
# datasets in R
```

