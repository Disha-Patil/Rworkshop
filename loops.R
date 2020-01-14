
# conditional statements


vec=c(1:10)

vec=4

if(vec[5]<5) {
  vec2=vec+1
  print(vec[1])
}

string_vec=c("cat","dog","mouse")

if(string_vec[2]=="dog"){

  print(string_vec[1])  
}

# modulo
vec=1:10

if(vec[1]%%2 == 0){
  print(paste(vec[6],"is even"))
}

# paste function
paste(vec[2],"is even")

# else

vec=c(1:10)

vec=4

if(vec<3) {
  #vec2=vec+1
  print(vec)
}else {
  print("not valid")
}


string_vec=c("cat","dog","mouse")

if(string_vec[1]=="dog"){
  
  print(string_vec[1])  
}else{
  print("not a dog")
}

# modulo
vec=1:10
idx=3
if(vec[idx]%%2 == 0){
  print(paste(vec[idx],"is even"))
}else{
  print(paste(vec[idx],"is odd")) 
}

# for loop
vec=1:10
for(i in 1:length(vec)){
  if(vec[i]%%2 == 0){
    print(paste(vec[i]," is even"))
  }else{
    print(paste(vec[i]," is odd"))
  }
}

# if and else in single statement

if (5<3) print("yes it is true") else print("no it is false") 

# while loop



val=1.5

while(val<=3.5){
  print(val)
  val=val+0.5
}


Lets=LETTERS
Lets
length(Lets)

idx=1
while(idx<=15){
  print(Lets[idx])
  idx=idx+1
}


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


# next

vec=1:10
for(i in 1:length(vec)){
  if(vec[i]%%2 == 0){
    next
  }
  print(vec[i])
}


vec=1:10
for(i in 1:length(vec)){
  if(vec[i]%%2 == 0){
    break
  }
  print(vec[i])
}

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



fib=function(n){
  x=c(0,1)
  while(length(x)<=n){
    idx=length(x)
    new_element=x[idx] + x[idx-1]
    x=c(x,new_element)
  }
print(x)
}

