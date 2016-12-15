####### A #########
dotchart(mtcars$mpg , labels = row.names(mtcars),
         main = "Mileage for Car Models", cex = 0.6,
         xlab = "Miles per Gallon")

####### B #########
hist(mtcars$mpg, col = "blue", breaks = 12,
     xlab = "Miles per Gallon", xlim = c(10,40),
     ylab = "Frequency")

####### C #########
cyl4 <- mtcars$mpg[mtcars$cyl==4]
cyl6 <- mtcars$mpg[mtcars$cyl==6]
cyl8 <- mtcars$mpg[mtcars$cyl==8]

# density plots

d1 <- density(cyl4)
d2 <- density(cyl6)
d3 <- density(cyl8)

plot(d1,col="red",ylim=c(0,0.3))
lines(d2,col="green")
lines(d3,col="blue")
legend("topright",c("4","6","8"),lty = 1,col=c("red","green","blue"))

# Interpret results in A and B
# A)
# The dot plot ranks every car wrt to its fuel effficieny . 
# Cars on left are least fuel efficient eg. Lincoln Continental and the Cadillac
# Cars on the right are most fuel efficient eg. Toyota Corolla 
# B) 
# The histogram tell us the frequency with which a given mileage occurs
# Majority of the cars have a mileage between 15-25 mpg
# Higher number of bins increase the visual resolution

####### D #########
boxplot(mpg ~ am + cyl,data=mtcars)