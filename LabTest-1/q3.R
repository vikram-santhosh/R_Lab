library(MASS)

data <- ChickWeight

## a ##
chick34 <- data[data$Chick == 34,]
plot(chick34$weight~chick34$Time,type='l')

## b ##
chick.diet4 <- data[data$Diet == 4,]
boxplot(chick.diet4$weight~chick.diet4$Time)

## c & d ##
time_pt <- unique(chick.diet4$Time)

f <- function (chick_data){
  mean_wt <- vector()
  for(i in time_pt){
    x <- chick_data[chick_data$Time==i,]$weight
    mean_wt <- append(mean_wt,mean(x))
  }
  return(mean_wt)
}

chick.diet2 <- data[data$Diet==2,]
mean_chick4 <- f(chick.diet4)
mean_chick2 <- f(chick.diet2)

plot(mean_chick4~time_pt,col="red",type="l",xlab = "Time", ylab = "Mean_Weight")
lines(mean_chick2~time_pt,col="blue",type="l")

## e ##

legend('topleft', c("Diet 4", "Diet 2") , 
       lty=1, col=c('red', 'blue'))