library(MASS)

data <- cats

male <- cats[cats$Sex=='M',]
Heart_Wt <- male$Hwt
Birth_Wt <- male$Bwt

plot(Birth_Wt,Heart_Wt)

fit <- lm(Heart_Wt~Birth_Wt)
abline(fit,col="red")
