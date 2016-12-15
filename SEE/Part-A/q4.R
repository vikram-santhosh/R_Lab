# create x
x <- c(0,1,1,0,1)

####### A #########
isBinary <- function(x){
  return( all( x == 1 | x == 0) )
}

####### B #########

modified_isBinary <- function(x,allow.NA = FALSE){
  if(allow.NA == TRUE){
    if( any( is.na(x)))
      return(FALSE)
    else
      return( all( x == 1 | x == 0) )
  }
  else {
    x <- x[!is.na(x)] # drop NA
    return( all( x == 1 | x == 0) )
  }
}

####### C #########
calculateBinarySummary <- function(x){
  x <- x[!is.na(x)]
  if(isBinary(x)){
    a <- sum(x)
    b <- length(x)
    ans <- a/b
    print(paste("Proportion : " , ans))
  }
  else
    print("Number not binary!")
}