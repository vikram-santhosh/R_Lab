area <- c(694,905,802,1366,716,963,821,714,
          1018,887,790,696,771,1006,1191)


sale.price <- c(192.0,215.0,215.0,274.0,112.7,185.0,212.0,
                220.0,276.0,260.0,221.5,255.0,260.0,293.0,375.0)

df <- data.frame(area,sale.price)
df <- df[order(area),] # sort data by area

## a ##
plot(df,type='l',col='blue') # plot area vs price

## b ##
hist(df$sale.price) # plot a historgram

## c ##
log.df <- data.frame(area=log(area),sale.price = log(sale.price))
log.df <- log.df[order(area),]
plot(log.df,type='l',col='blue') 
hist(log.df$sale.price)


