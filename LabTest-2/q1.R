# t-Test is used to compare the means of two groups under the assumption that 
# both samples are iid sampled and come from normally distributed 
# population with unknow but equal variances

library('MASS')

# NULL Hypothesis 
# There is no significant difference in the mean mileage b/w US and Non-US cars

MPG.highway.US <- Cars93$MPG.highway[Cars93$Origin == "USA"]
MPG.highway.non.US <- Cars93$MPG.highway[Cars93$Origin == "non-USA"]

## a) t-test ##

t <- t.test(MPG.highway.US,MPG.highway.non.US)

print(paste("P-Value : ",t$p.value," is greater then 0.05. Hence we accept the NUll Hypothesis at a critical value of 5%"))

### b) Explanation ###
## If there really is no difference between US and non US cars (this is our H0)
## how likely would it be to see a difference in the mean exam mileage 
## between the two types of cars as large as (or larger than) that which has been observed in the sample ? 

## Here we have a p-value of 8% which implies that in an unseen sample ,
## given that there is no difference in mean mileage, we are likely to see a variation of upto 8% 
## As p drops, the H0 becomes less likely

## Makes sense ? 


### c) Wilcoxon Signed-Rank Test #### 
##  Using the Wilcoxon Signed-Rank Test, we can decide whether the corresponding data population 
##  distributions are identical without assuming them to follow the normal distribution.
##

## The null hypothesis is that the mileages of the two sample are from identical an  distribution. 
## To test the hypothesis, we apply the wilcox.test function to compare the matched samples

w <- wilcox.test(MPG.highway.US, MPG.highway.non.US) 

print(paste("P-Value : ",w$p.value," is greater then 0.05. Hence we accept the NUll Hypothesis at a critical value of 5%"))

### d) 
## No , both are results are in agreement 
