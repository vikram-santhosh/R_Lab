###### A ########

n <- 5 
row <- seq(0,n-1)
mat1 <- matrix(NA,n,n)

for(i in 1:n){
  mat1[i,] <- row
  row <- c(row[2:n],row[1])
}

###### B ########

n <- 10 
row <- seq(0,n-1)
mat2 <- matrix(NA,n,n)

for(i in 1:n){
  mat2[i,] <- row
  row <- c(row[2:n],row[1])
}

###### C ########

n <- 9
col <- seq(0,n-1)
mat3 <- matrix(NA,n,n)

for(i in 1:n){
  mat3[,i] <- col
  col <- c(col[n],col[1:n-1])
}