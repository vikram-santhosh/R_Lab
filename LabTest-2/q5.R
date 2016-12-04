library('MAAS')

## A ##

chick34 <- ChickWeight[ChickWeight$Chick==34,]
plot(chick34$weight~chick34$Time,xlab="Time",ylab = "Weight", type="l")

## B ##

diet4 <- ChickWeight[ChickWeight$Diet==4,]

## C ##boxplot(diet4$weight~diet4$Time)


timepoint <- unique(diet4$Time)

m <- vector()

for(i in timepoint){
  m <- c(m,mean(diet4[diet4$Time==i,]$weight)) ## appending means
}

plot(m~timepoint,xlab="Time",ylab = "Weight", type="l",col="red")

## D ## 

diet2 <- ChickWeight[ChickWeight$Diet==2,]
timepoint <- unique(diet4$Time)

n <- vector()

for(i in timepoint){
  n <- c(n,mean(diet2[diet2$Time==i,]$weight)) ## appending means
}

lines(n~timepoint,xlab="Time",ylab = "Weight", col="blue")
