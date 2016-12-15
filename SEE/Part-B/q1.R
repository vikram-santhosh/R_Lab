library('MASS')

############ A ############
male <- cats[cats$Sex=='M',]

############ B ############
plot(Hwt~Bwt,data=cats,
     xlab="Heart Weight",
     ylab="Birth Weight",
     main="Plot of Heart Wt vs Birth Wt")

############ C ############
model <- lm(Hwt ~ Bwt, data=cats)
abline((model),col="red")