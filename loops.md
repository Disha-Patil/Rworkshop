

```r
# conditional statements


vec=c(1:10)

vec=4

if(vec[5]<5) {
  vec2=vec+1
  print(vec[1])
}
```

```
## Error in if (vec[5] < 5) {: missing value where TRUE/FALSE needed
```

```r
string_vec=c("cat","dog","mouse")

if(string_vec[2]=="dog"){

  print(string_vec[1])  
}
```

```
## [1] "cat"
```

```r
# modulo
vec=1:10

if(vec[1]%%2 == 0){
  print(paste(vec[6],"is even"))
}

# paste function
paste(vec[2],"is even")
```

```
## [1] "2 is even"
```

```r
# else

vec=c(1:10)

vec=4

if(vec<3) {
  #vec2=vec+1
  print(vec)
}else {
  print("not valid")
}
```

```
## [1] "not valid"
```

```r
string_vec=c("cat","dog","mouse")

if(string_vec[1]=="dog"){
  
  print(string_vec[1])  
}else{
  print("not a dog")
}
```

```
## [1] "not a dog"
```

```r
# modulo
vec=1:10
idx=3
if(vec[idx]%%2 == 0){
  print(paste(vec[idx],"is even"))
}else{
  print(paste(vec[idx],"is odd")) 
}
```

```
## [1] "3 is odd"
```

```r
# for loop
vec=1:10
for(i in 1:length(vec)){
  if(vec[i]%%2 == 0){
    print(paste(vec[i]," is even"))
  }else{
    print(paste(vec[i]," is odd"))
  }
}
```

```
## [1] "1  is odd"
## [1] "2  is even"
## [1] "3  is odd"
## [1] "4  is even"
## [1] "5  is odd"
## [1] "6  is even"
## [1] "7  is odd"
## [1] "8  is even"
## [1] "9  is odd"
## [1] "10  is even"
```

```r
# if and else in single statement

if (5<3) print("yes it is true") else print("no it is false") 
```

```
## [1] "no it is false"
```

```r
# while loop



val=1.5

while(val<=3.5){
  print(val)
  val=val+0.5
}
```

```
## [1] 1.5
## [1] 2
## [1] 2.5
## [1] 3
## [1] 3.5
```

```r
Lets=LETTERS
Lets
```

```
##  [1] "A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M" "N" "O" "P" "Q"
## [18] "R" "S" "T" "U" "V" "W" "X" "Y" "Z"
```

```r
length(Lets)
```

```
## [1] 26
```

```r
idx=1
while(idx<=15){
  print(Lets[idx])
  idx=idx+1
}
```

```
## [1] "A"
## [1] "B"
## [1] "C"
## [1] "D"
## [1] "E"
## [1] "F"
## [1] "G"
## [1] "H"
## [1] "I"
## [1] "J"
## [1] "K"
## [1] "L"
## [1] "M"
## [1] "N"
## [1] "O"
```

```r
x=c(0,1)
while(length(x)<=10){
  idx=length(x)
  new_element=x[idx] + x[idx-1]
  x=c(x,new_element)
}


# repeat and break


val=5
repeat{
  print(val)
  val=val+1
  
  if(val==10){
    break
  }
}
```

```
## [1] 5
## [1] 6
## [1] 7
## [1] 8
## [1] 9
```

```r
# next

vec=1:10
for(i in 1:length(vec)){
  if(vec[i]%%2 == 0){
    next
  }
  print(vec[i])
}
```

```
## [1] 1
## [1] 3
## [1] 5
## [1] 7
## [1] 9
```

```r
vec=1:10
for(i in 1:length(vec)){
  if(vec[i]%%2 == 0){
    break
  }
  print(vec[i])
}
```

```
## [1] 1
```

```r
x=c()
len=1
while(len<11){
len=length(x)
random=rnorm(1)
if(0< random &  random<1){
  x=c(x,random)
}

}


# functions


first_function=function(n){
  print(n)
}

first_function(n=12)
```

```
## [1] 12
```

```r
check=function(x){
  if(x<0){
    print("negative")
  }
  if(x==0){
    print("zero")
  }
  if(x>0){
    print("positive")
  }
}


check(1)
```

```
## [1] "positive"
```

```r
fib=function(n){
  x=c(0,1)
  while(length(x)<=n){
    idx=length(x)
    new_element=x[idx] + x[idx-1]
    x=c(x,new_element)
  }
print(x)
}
```

