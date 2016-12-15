############ A ############

id <- seq(1:5)
income <- c(113,91,121,81,68)
age <- c(69,52,65,58,31)
gender <- c(1,0,0,1,1)

data <- data.frame(id,income,age,gender)

plot(income~age,col=gender+1)

############ B ############
model_1 <- lm(data$income ~ data$age+data$gender)
lines(data$age,fitted(model_1))

# overfitted

############ C ############
model_2 <- lm(income~age, data=data)
lines(data$age,fitted(model_2))
