## a ##
vec1 <- runif(100,10,20)
l <- list()

## b ##
for(i in 1:100){
  l[[i]] <- runif(length(vec1))
}

## c ##

len <- vector()
for(i in 1:100){
  len[i] <- length(l[[i]])
}

## d ##
sapply(l,function(x) length(x))

## e##
lapply(l,function(x) length(x))