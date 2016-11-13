setwd("G:/Files/R Lab")
data <- read.csv("coalworkers.csv")

total <- data$Normal + data$Dieased
risk <- data$Dieased / total

plot(data$Exposure.Time,risk)

fit <- lm(risk~data$Exposure.Time)

abline(fit)

print ("Risk doubles on doubling exposure time (Linear MOdel)")

danger_val = -fit$coefficients[1]/fit$coefficients[2] # solve for y = 0

print (paste("Danger Value : ", danger_val))