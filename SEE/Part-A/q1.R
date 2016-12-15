# creating a vector
x <- c(1,7,3,2,5,0.5,9,10)

####### A #########
f <- function(x,s,l){
  
  s_smallest_element <- sort(x)[s]
  l_largest_element <- rev(sort(x))[l]
  
  # removing min and max
  trim_x <- setdiff(x,c(s_smallest_element,l_largest_element))
  trim_mean <- mean(trim_x)
  return(trim_mean)
}

####### B #########

#set seed to some prime number for reproducibility of results
set.seed(113) 

## creating a random list of 3 vectos
random.list <- list(x=runif(20,0,100),
                    y=runif(20,0,100),
                    z=runif(20,0,100))

trim_mean <- vector()

for(i in 1:3){
  trim_mean <- c(trim_mean,f(random.list[[i]],5,5))
}

####### C #########

untrim_mean <- vector()
for(i in 1:3){
  untrim_mean <- c(untrim_mean,mean(random.list[[i]]))
}

## untrim_mean = (trim_mean * 18 + 5th_smallest + 5th_largest)/20

####### D #########

p <- sapply(random.list, function(x) f(x,5,5))
q <- lapply(random.list, function(x) f(x,5,5))
