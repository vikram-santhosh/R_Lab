ID <- c(1,2,3,4,5)
Income <- c(113,91,121,81,68)
Age <- c(69,52,65,58,31)
Gender <- c(1,0,0,1,1)

data <- data.frame(ID,Income,Age,Gender)

### A ###

plot(data$Income~data$Age,col=data$Gender+2)

### B ###

model <- lm(Income ~ Age + Gender, data=data)
summary(model)
lines(data$Age, fitted(model),type='l')

### C #### 

model <- lm(Income ~ Age, data=data)
lines(data$Age, fitted(model),type='l')
