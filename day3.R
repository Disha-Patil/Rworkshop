
# dataframe from column
names<-c("kedar","shyam","mohan","geeta","seema","priya")
ages <- c(23,22,21,22,23,23)
height <- c(165,170,167,160,164,166)
has_specs <- c("yes","no","no","yes","no","yes")

df=data.frame(names,ages,height,has_specs)

df

df[,1]=as.vector(df[,1])

# check the type of your data
class(df[,4])


# datframe by row vector

obs<-list(
  c("Name"="kedar","Age"=23,"Height"=165,"Glasses"="yes"),
  c("Name"="shyam","Age"=21,"Height"=160,"Glasses"="no"),
  c("Name"="mohan","Age"=22,"Height"=169,"Glasses"="no")
)

obs[[1]]

rbind(obs[[1]],obs[[2]])

# append row to dataframe

#1
rows=dim(df)[1]
df[rows+1,]=c("aisha",25,162,"yes")

#2
df=rbind(df,c("aisha",25,162,"yes"))

# check if you have double entries

unique(df[,1])

# acess by col names
df$names


df<-df[c(-7,-6),]



# missing data
df <- rbind(df,c("aisha",23,150,"none"))
# 1 remove
# which function
logical_na=is.na(df$has_specs)

na_ind=which(logical_na)

df=df[-na_ind,]

df

# change the row names

# nrow gives number of rows
row.names(df) <- seq(from=1,to=nrow(df),by=1)

# subset a dataframe

subset(df,select = c(ages,height) )

subset(df,subset = ages<23 , select = c(names,has_specs) )

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

merge(born,dead,by="name")


# datasets in R


