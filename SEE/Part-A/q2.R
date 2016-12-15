####### A #########
vector1 <- runif(100,10,20)

####### B #########
l <- lapply(1:100, function(x) runif(length(vector1)))

####### C #########
len <- vector()

for(i in 1:100){
  len[i] <- length(l[[i]])
}

####### C #########
len_list <- lapply(1:100,function(x) length(l[[i]]))

####### D #########
len_vec <- sapply(1:100,function(x) length(l[[i]]))
