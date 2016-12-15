library('MASS')

############ A ############

percentage <- function(x){
  p <- sum(x<2500)
  return (p/nrow(birthwt) * 100)
}
tbl1 <- with( birthwt, tapply(bwt,list(race,smoke),percentage) )
colnames(tbl1) <- c("non-smoker","smoker")
rownames(tbl1) <- c("race-1","race-2","race-3")

############ B ############
n <- sum(birthwt$bwt<2500)
proportion <- function(x){
  p <- sum(x<2500)
  return(p/n)
}

f <- function(x){print(x)}


tbl2 <- with( birthwt, tapply(bwt, list(race,ht,smoke) , proportion) )

############ C ############
aggregate(birthwt$bwt, by = list(birthwt$race,birthwt$smoke,birthwt$ht),
          FUN = proportion)
