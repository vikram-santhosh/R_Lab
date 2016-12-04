library('data.table')

########## A ###############

#### table entires ####
colName <- c("has.smoked","lung.cancer","frequency")
row_1 <- list("yes","yes",688)
row_2 <- list("no","yes",21)
row_3 <- list ("yes","no", 650)
row_4 <- list("no","no",59)


data <- rbind(row_1,row_2,row_3,row_4)
colnames(data) <- colName

### create data table ####
smoking <- as.data.table(data)

########## B ###############

tbl = matrix(unlist(smoking$frequency), nrow = 2)
colnames(tbl) <- c("cancer.yes","cancer.no")
rownames(tbl) <- c("smokes.yes","cancer.no")

## H0 : No relation between smoking and cancer ##

fisher <- fisher.test(tbl)

print(paste("P-Value : ",fisher$p.value," is much lesser then 0.05. Hence we reject the NUll Hypothesis at a critical value of 5%"))


####### C ##############

print(paste("You are : ",fisher$estimate," times more likely to get cancer by smoking"))
