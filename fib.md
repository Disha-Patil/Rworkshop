

```r
fb=function(n){
  x=c(0,1)
  while(length(x)<=n){
    idx=length(x)
    new_element=x[idx] + x[idx-1]
    x=c(x,new_element)
  }
  print(x)
}

# to load the function in current environment
#source("fib.R")
```

