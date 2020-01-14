

```r
frac <- c(0.452, 1.5642, 0.84520)
percentage <- round(frac * 100, digits = 1)
out <- paste(percentage, "%", sep = "")
print(out)
```

```
## [1] "45.2%"  "156.4%" "84.5%"
```

```r
Percent_add <- function(frac){
  percent <- round(frac * 100, digits = 1)
  out <- paste(percent, "%", sep = "%")
  return(out)
}


new.vector <- c(0.8223, 0.02487, 1.62, 0.4)
Percent_add(new.vector)
```

```
## [1] "82.2%%" "2.5%%"  "162%%"  "40%%"
```

```r
Percent_add <- function(frac){
if( !is.numeric(frac) ) return(NULL) 
percentage <- round(frac * 100, digits = 1) 
paste(percentage, "%", sep = "")}


# recursion

Factorial <- function(N)
{
  if (N == 0)
    return(1)
  else
    return( N * Factorial (N-1))
}

calculate_sum() <- function(n) {
  if(n <= 1) {
    return(n)
  } else {
    return(n + calculate_sum(n-1))
  }
}
```

```
## Error in calculate_sum() <- function(n) {: invalid (NULL) left side of assignment
```

```r
Sum.Series <- function(number)
{
  if(number == 0) {
    return (0)
  } else {
    return ((number * number ) + Sum.Series(number - 1))
  }
}
Sum.Series(3)
```

```
## [1] 14
```

```r
# fit a non-linear regression
nls_fit <- nls(medv ~ a + b * lstat^(-c), boston, 
               start = list(a = 80, b = 20, c = 0.2))
lines(sort(boston$lstat), predict(nls_fit)[order(boston$lstat)], col = "red")
```

```
## Error in plot.xy(xy.coords(x, y), type = type, ...): plot.new has not been called yet
```

```r
#linear regression  
cf=coef(lm(boston$medv~poly(boston$lstat,2,raw=T)))
qc=cf[1] + (cf[2]*boston$lstat) + (cf[3]*(boston$lstat)^2)
plot(boston$lstat,boston$medv)
lines(sort(boston$lstat),qc[order(boston$lstat)],col="red")





# Data containing speed (mph) and stopping distance (ft) of cars from 1920
data(cars)
plot(cars, xlab = "Speed (mph)", ylab = "Stopping distance (ft)")


mod2 <- lm(dist ~ poly(speed, degree = 2), data = cars)
d <- seq(0, 25, length.out = 200)
mod2Raw <- lm(dist ~ poly(speed, degree = 2, raw = TRUE), data = cars)
plot(cars, xlab = "Speed (mph)", ylab = "Stopping distance (ft)")
lines(d, predict(mod2, new = data.frame(speed = d)), col = 1)
lines(d, predict(mod2Raw, new = data.frame(speed = d)), col = 2)
```

