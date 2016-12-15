library('ggplot2')

# visit : https://archive.ics.uci.edu/ml/datasets/Bike+Sharing+Dataset
# see the data descriptiong 

# load dataset 
data <- read.csv('bikes.csv')

####### A #######
# - temp : Normalized temperature in Celsius. 
# The values are derived via (t-t_min)/(t_max-t_min), t_min=-8, t_max=+39 (only in hourly scale)

#- atemp: Normalized feeling temperature in Celsius. 
# The values are derived via (t-t_min)/(t_max-t_min), t_min=-16, t_max=+50 (only in hourly scale)

map <- function(x,min,max){
  y <- x * (max-min) + min
  return (y)
}

y1 <- map(data$temp,-8,39)
y2 <- map(data$atemp,-16,50)

####### B #######

# - hum: Normalized humidity. The values are divided to 100 (max)
max_hum <- 100

y3 <- (data$hum * max_hum / max_hum ) * 100

####### C #######
# Transform wind speed (multiply by 67, the normalizing value)

y4 <- data$windspeed * 67


####### D #######

# scatter plot
plot(data$cnt, xlab="days", ylab="Count",
     main = "Distribution of Bikes vs Days")

model_1 <- lm(cnt ~ yr + temp + hum + season , data = data)
lines(fitted(model_1),col="red")

# One of the most important uses of factors is in statistical modeling; since
# categorical variables enter into statistical models differently than
# continuous variables, storing data as factors insures that the modeling
# functions will treat such data correctly.

season_fact <- as.factor(data$season)
model_2 <- lm(data$cnt ~ data$yr + data$temp + data$hum + season_fact)
lines(fitted(model_2),col="blue")

### computing errors

error_1 <- sqrt (mean( ( data$cnt - fitted(model_1) ) ** 2) )
error_2 <- sqrt (mean( ( data$cnt - fitted(model_2) ) ** 2) )

print("Model 1 (without factors) has a greater RMS Erro")

####### E #######

model_1$coefficients
model_2$coefficients

print("In Model-2, a regg coeff is applied to each season generating a better fit")

####### F #######

qplot(factor(season), cnt, data = data, geom = "boxplot") + geom_jitter()

####### G #######

count_month <- sapply(1:12, function(i) sum(data$cnt[data$mnth==i]))
df <- data.frame(month = 1:12 , count = count_month)
ggplot(df,aes(x=month, y=count)) + geom_point()
