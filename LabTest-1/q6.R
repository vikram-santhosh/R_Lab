setwd("G:/Files/R Lab/LabTest-1")
data <- read.csv("toxicity.csv")

## a ##
plot(data$Toxicity~data$Acid,col="red")
points(data$Toxicity~data$Base,col="blue")
points(data$Toxicity~data$Color,col="green")
legend("topleft",c("Acid","Base","Color"),lty = 1,col=c("red","blue","green"))


## b ##
abline(lm(data$Toxicity~data$Acid))
abline(lm(data$Toxicity~data$Base))
abline(lm(data$Toxicity~data$Color))