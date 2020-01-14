

```r
vector1 = c(1,5,7,2,9)
vector2 = c(12,3,7,1,9)

# sort the vector
sorted_1=sort(vector1)
sorted_desc=sort(vector1,decreasing = T)
# check indices
vector1[2]
```

```
## [1] 5
```

```r
sorted_1[2]
```

```
## [1] 2
```

```r
# get the indices of sorted vector
vector1[order(vector1)]
```

```
## [1] 1 2 5 7 9
```

```r
vector1[c(1,4,2,3,5)]
```

```
## [1] 1 2 5 7 9
```

