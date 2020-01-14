

```r
# if statement

if (condition) expression
```

```
## Error in eval(expr, envir, enclos): object 'condition' not found
```

```r
if (condition) expression else expression
```

```
## Error in eval(expr, envir, enclos): object 'condition' not found
```

```r
if (test_expression) {
  statement
}
```

```
## Error in eval(expr, envir, enclos): object 'test_expression' not found
```

```r
values <- 1:10                                        
if (sample(values,1) <= 10)                               
  print(paste(values, "is less than or equal to 10"))
```

```
##  [1] "1 is less than or equal to 10"  "2 is less than or equal to 10" 
##  [3] "3 is less than or equal to 10"  "4 is less than or equal to 10" 
##  [5] "5 is less than or equal to 10"  "6 is less than or equal to 10" 
##  [7] "7 is less than or equal to 10"  "8 is less than or equal to 10" 
##  [9] "9 is less than or equal to 10"  "10 is less than or equal to 10"
```

```r
if (test_expression) {
  statement
} else {
  statement
}
```

```
## Error in eval(expr, envir, enclos): object 'test_expression' not found
```

```r
val1 = 10                                    #Creating our first variable val1
val2 = 5                                     #Creating second variable val2
if (val1 > val2){                            #Executing Conditional Statement based on the comparison 
  print("Value 1 is greater than Value 2")
} else if (val1 < val2){
  print("Value 1 is less than Value 2")
}
```

```
## [1] "Value 1 is greater than Value 2"
```

```r
# for loops

for (variable in sequence) { 
  expression
  expression
  expression
}
```

```
## Error in for (variable in sequence) {: invalid for() loop sequence
```

```r
# example

for (x in c(1:10)) print(sqrt(x))
```

```
## [1] 1
## [1] 1.414214
## [1] 1.732051
## [1] 2
## [1] 2.236068
## [1] 2.44949
## [1] 2.645751
## [1] 2.828427
## [1] 3
## [1] 3.162278
```

```r
values <- c(1,2,3,4,5) 
for(id in 1:5){ 
  print(values[id])
}
```

```
## [1] 1
## [1] 2
## [1] 3
## [1] 4
## [1] 5
```

```r
mat <- matrix(1:10, 2)
for (id1 in seq(nrow(mat))) {
  for (id2 in seq(ncol(mat))) {
    print(mat[id1, id2])
  }
}
```

```
## [1] 1
## [1] 3
## [1] 5
## [1] 7
## [1] 9
## [1] 2
## [1] 4
## [1] 6
## [1] 8
## [1] 10
```

```r
# while loop

while (condition) {
  expression
  expression
  expression
}
```

```
## Error in eval(expr, envir, enclos): object 'condition' not found
```

```r
val = 2.987
while(val <= 4.987) {
  val = val + 0.987
  print(c(val,val-2,val-1))
}
```

```
## [1] 3.974 1.974 2.974
## [1] 4.961 2.961 3.961
## [1] 5.948 3.948 4.948
```

```r
# example

a <- 0
b <- 1
print(a)
```

```
## [1] 0
```

```r
while (b < 50) {
  print(b)
  temp <- a + b
  a <- b
  b <- temp
}
```

```
## [1] 1
## [1] 1
## [1] 2
## [1] 3
## [1] 5
## [1] 8
## [1] 13
## [1] 21
## [1] 34
```

```r
x <- c(0,1)
while (length(x) < 10) {
  position <- length(x)
  new <- x[position] + x[position-1]
  x <- c(x,new)
}
print(x)
```

```
##  [1]  0  1  1  2  3  5  8 13 21 34
```

```r
# repeat and break

repeat {
  # simulations; generate some value have an expectation if within some range,
  # then exit the loop
  if ((value - expectation) <= threshold) {
    break
  }
}
```

```
## Error in eval(expr, envir, enclos): object 'value' not found
```

```r
val <- 5
repeat {
  print(val)
  val <- val+1
  if (val == 10){
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
values = 1:10
for (id in values){
  if (id == 2){
    break
  }
  print(id)
}
```

```
## [1] 1
```

```r
# next 

x = 1: 4
for (i in x) {
  if (i == 2) {
    next
  }
  print(i)
}
```

```
## [1] 1
## [1] 3
## [1] 4
```

```r
# functions

Fibonacci <- function(n) {
  x <- c(0,1)
  while (length(x) < n) {
    position <- length(x)
    new <- x[position] + x[position-1]
    x <- c(x,new)
  }
  return(x)
}



Fibonacci <- function(n) {
  if (n==1) {
    x <- 0
  } else {
    x <- c(0,1)
    while (length(x) < n) {
      position <- length(x)
      new <- x[position] + x[position-1]
      x <- c(x,new)
    }
  }
  return(x)
}



check <- function(x) {
  if (x > 0) {
    result <- "Positive"
  } else if (x < 0) {
    result <- "Negative"
  } else {
    
    result <- "Zero"
  }
  return(result)
}





plot_iris<-function(n,m){
  plot(iris[,n],iris[,m])
}
```
