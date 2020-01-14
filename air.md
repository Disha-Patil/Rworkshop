

```r
air<-datasets::airquality

#Describe

head(air)
```

```
##   Ozone Solar.R Wind Temp Month Day
## 1    41     190  7.4   67     5   1
## 2    36     118  8.0   72     5   2
## 3    12     149 12.6   74     5   3
## 4    18     313 11.5   62     5   4
## 5    NA      NA 14.3   56     5   5
## 6    28      NA 14.9   66     5   6
```

```r
tail(air)
```

```
##     Ozone Solar.R Wind Temp Month Day
## 148    14      20 16.6   63     9  25
## 149    30     193  6.9   70     9  26
## 150    NA     145 13.2   77     9  27
## 151    14     191 14.3   75     9  28
## 152    18     131  8.0   76     9  29
## 153    20     223 11.5   68     9  30
```

```r
# dimension to get row and col numbers
dim(air)
```

```
## [1] 153   6
```

```r
# row count
nrow(air)
```

```
## [1] 153
```

```r
# col count
ncol(air)
```

```
## [1] 6
```

```r
#names

colnames(air)
```

```
## [1] "Ozone"   "Solar.R" "Wind"    "Temp"    "Month"   "Day"
```

```r
subset(air,select=Ozone)
```

```
##     Ozone
## 1      41
## 2      36
## 3      12
## 4      18
## 5      NA
## 6      28
## 7      23
## 8      19
## 9       8
## 10     NA
## 11      7
## 12     16
## 13     11
## 14     14
## 15     18
## 16     14
## 17     34
## 18      6
## 19     30
## 20     11
## 21      1
## 22     11
## 23      4
## 24     32
## 25     NA
## 26     NA
## 27     NA
## 28     23
## 29     45
## 30    115
## 31     37
## 32     NA
## 33     NA
## 34     NA
## 35     NA
## 36     NA
## 37     NA
## 38     29
## 39     NA
## 40     71
## 41     39
## 42     NA
## 43     NA
## 44     23
## 45     NA
## 46     NA
## 47     21
## 48     37
## 49     20
## 50     12
## 51     13
## 52     NA
## 53     NA
## 54     NA
## 55     NA
## 56     NA
## 57     NA
## 58     NA
## 59     NA
## 60     NA
## 61     NA
## 62    135
## 63     49
## 64     32
## 65     NA
## 66     64
## 67     40
## 68     77
## 69     97
## 70     97
## 71     85
## 72     NA
## 73     10
## 74     27
## 75     NA
## 76      7
## 77     48
## 78     35
## 79     61
## 80     79
## 81     63
## 82     16
## 83     NA
## 84     NA
## 85     80
## 86    108
## 87     20
## 88     52
## 89     82
## 90     50
## 91     64
## 92     59
## 93     39
## 94      9
## 95     16
## 96     78
## 97     35
## 98     66
## 99    122
## 100    89
## 101   110
## 102    NA
## 103    NA
## 104    44
## 105    28
## 106    65
## 107    NA
## 108    22
## 109    59
## 110    23
## 111    31
## 112    44
## 113    21
## 114     9
## 115    NA
## 116    45
## 117   168
## 118    73
## 119    NA
## 120    76
## 121   118
## 122    84
## 123    85
## 124    96
## 125    78
## 126    73
## 127    91
## 128    47
## 129    32
## 130    20
## 131    23
## 132    21
## 133    24
## 134    44
## 135    21
## 136    28
## 137     9
## 138    13
## 139    46
## 140    18
## 141    13
## 142    24
## 143    16
## 144    13
## 145    23
## 146    36
## 147     7
## 148    14
## 149    30
## 150    NA
## 151    14
## 152    18
## 153    20
```

```r
mean(air$Ozone,na.rm = T)
```

```
## [1] 42.12931
```

```r
#get rid of NA
air$Ozone[-which(is.na(air$Ozone))]
```

```
##   [1]  41  36  12  18  28  23  19   8   7  16  11  14  18  14  34   6  30
##  [18]  11   1  11   4  32  23  45 115  37  29  71  39  23  21  37  20  12
##  [35]  13 135  49  32  64  40  77  97  97  85  10  27   7  48  35  61  79
##  [52]  63  16  80 108  20  52  82  50  64  59  39   9  16  78  35  66 122
##  [69]  89 110  44  28  65  22  59  23  31  44  21   9  45 168  73  76 118
##  [86]  84  85  96  78  73  91  47  32  20  23  21  24  44  21  28   9  13
## [103]  46  18  13  24  16  13  23  36   7  14  30  14  18  20
```

```r
#pair plot with correlation numbers

pairs(data[,-5],upper.panel = cor(data[,-5]))
```

```
## Error in match.fun(upper.panel): 'cor(data[, -5])' is not a function, character or symbol
```

```r
plot(cars$mpg,cars$hp,xlab = "MPG",ylab = "HP",
     col=c("red","blue")[factor(cars$vs)],
     main="Pay more for more power :)")
```

```
## Warning in min(x): no non-missing arguments to min; returning Inf
```

```
## Warning in max(x): no non-missing arguments to max; returning -Inf
```

```
## Warning in min(x): no non-missing arguments to min; returning Inf
```

```
## Warning in max(x): no non-missing arguments to max; returning -Inf
```

```
## Error in plot.window(...): need finite 'xlim' values
```

![plot of chunk unnamed-chunk-1](figure/unnamed-chunk-1-1.png)

