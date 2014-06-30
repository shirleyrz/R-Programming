# PA3

# 1 Plot the 30-day mortality rates for heart attack
getwd()
setwd("./R programming/project/PA3/")

outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
names(outcome)
head(outcome)
ncol(outcome)
nrow(outcome)
outcome[, 11] <- as.numeric(outcome[, 11])
## You may get a warning about NAs being introduced; that is okay
hist(outcome[, 11])


# 2
source("http://d396qusza40orc.cloudfront.net/rprog%2Fscripts%2Fsubmitscript3.R")
submit()


# 3

source("rankhospital.R")
rankhospital("TX", "heart failure", 4)
# [1] "DETAR HOSPITAL NAVARRO"
rankhospital("MD", "heart attack", "worst")
# [1] "HARFORD MEMORIAL HOSPITAL"
rankhospital("MN", "heart attack", 5000)
# [1] NA

# 4

source("rankall.R")
head(rankall("heart attack", 20), 10)
tail(rankall("heart failure"), 10)
submit()

