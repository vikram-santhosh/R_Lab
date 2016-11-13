
f = function(x){
  print(paste(" Mean :  ", mean(x)))
  print(paste("Range : ",range(x)))
}

## a ##
vec1 <- rnorm(50,mean=0,sd=1)
f(vec1)

## b ##

f(women$height)
f(women$weight)