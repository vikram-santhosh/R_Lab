# retrieve dataset
data <- ChickWeight

####### A #########
chick34 <- data[data$Chick==34,]
plot(chick34$weight~chick34$Time,
     xlab="Time",ylab="Weight",
     main="Weight vs Time",
     type="l",col="red")

####### B #########
diet4 <- data[data$Diet==4,]
boxplot(diet4$weight~diet4$Time,
        xlab="Weight",ylab="Time",
        main="Distribution of Wt vs Time")


####### C #########
timesteps <- unique(diet4$Time)
mean_diet4 <- sapply(timesteps, function(x) mean(diet4$weight[diet4$Time==x]))
plot(mean_diet4~timesteps,
     xlab="Time",ylab="Mean Wt",
     main="Mean Weight vs Time",
     type="l",col="red")

####### D #########

diet2 <- data[data$Diet==2,]
mean_diet2 <- sapply(timesteps, function(x) mean(diet2$weight[diet2$Time==x]))
lines(mean_diet2~timesteps,col="blue")

####### E #########
legend("topleft",lty=1, c("Diet-4","Diet-2") ,col=c("red","blue"))
