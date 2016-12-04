library('MAAS')

## A ##
dotchart(mtcars$mpg,labels=row.names(mtcars),cex=.7,
         main="Gas Milage for Car Models", 
         xlab="Miles Per Gallon")

### B ###

hist(mtcars$mpg, main="Gas Milage for Car Models", 
     xlab="Miles Per Gallon", ylab = "Frequency",
     breaks=12,col = "blue",xlim = c(10,40))

### C ###

cyl4 = mtcars$mpg[mtcars$cyl==4]
cyl6 = mtcars$mpg[mtcars$cyl==6]
cyl8 = mtcars$mpg[mtcars$cyl==8]

# Kernel Density Plot
d1 <- density(cyl4)
d2 <- density(cyl6)
d3 <- density(cyl8)

# plots the results
plot(d1,ylim=c(0,0.3),col="red")
lines(d2,col="blue")
lines(d3,col="green")
legend("topright",c("4","6","8"),lty = 1,col=c("red","blue","green"))

### D ###

boxplot(mpg ~ cyl+am,data=mtcars)
