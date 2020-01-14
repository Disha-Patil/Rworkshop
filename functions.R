
# if statement

if (condition) expression

if (condition) expression else expression


if (test_expression) {
  statement
}

values <- 1:10                                        
if (sample(values,1) <= 10)                               
  print(paste(values, "is less than or equal to 10"))


if (test_expression) {
  statement
} else {
  statement
}


val1 = 10                                    #Creating our first variable val1
val2 = 5                                     #Creating second variable val2
if (val1 > val2){                            #Executing Conditional Statement based on the comparison 
  print("Value 1 is greater than Value 2")
} else if (val1 < val2){
  print("Value 1 is less than Value 2")
}




# for loops

for (variable in sequence) { 
  expression
  expression
  expression
}


# example

for (x in c(1:10)) print(sqrt(x))


values <- c(1,2,3,4,5) 
for(id in 1:5){ 
  print(values[id])
}

mat <- matrix(1:10, 2)
for (id1 in seq(nrow(mat))) {
  for (id2 in seq(ncol(mat))) {
    print(mat[id1, id2])
  }
}

# while loop

while (condition) {
  expression
  expression
  expression
}

val = 2.987
while(val <= 4.987) {
  val = val + 0.987
  print(c(val,val-2,val-1))
}



# example

a <- 0
b <- 1
print(a)
while (b < 50) {
  print(b)
  temp <- a + b
  a <- b
  b <- temp
}




x <- c(0,1)
while (length(x) < 10) {
  position <- length(x)
  new <- x[position] + x[position-1]
  x <- c(x,new)
}
print(x)



# repeat and break

repeat {
  # simulations; generate some value have an expectation if within some range,
  # then exit the loop
  if ((value - expectation) <= threshold) {
    break
  }
}


val <- 5
repeat {
  print(val)
  val <- val+1
  if (val == 10){
    break
  }
}

values = 1:10
for (id in values){
  if (id == 2){
    break
  }
  print(id)
}


# next 

x = 1: 4
for (i in x) {
  if (i == 2) {
    next
  }
  print(i)
}




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

