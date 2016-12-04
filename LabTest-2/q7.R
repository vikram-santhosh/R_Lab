### A ##

f1 <- function(mat){
  sub <- mat[,which(apply(mat,2,function(x)!any(is.na(x))))] 
  return(sub)
}


### B ###

f2 <- function(mat){
  sub <- mat[-which(apply(mat,1,function(x)any(is.na(x)))),-which(apply(mat,2,function(x)any(is.na(x))))]
  return(sub)
}

## Example ##
mat <- matrix(seq(10),nrow=2)
mat[2,3] <- NA
mat[2,1] <- NA

f1(mat)
f2(mat)