# Problem 1
library(datasets)
data(iris)
mean(iris[iris$Species=='virginica', 1])
#6.588

# Problem2
apply(iris[,1:4],2,mean)

# Problem 3
library(datasets)
data(mtcars)
?mtcars
# method 1
tapply(mtcars$mpg,mtcars$cyl,mean)
# method 2
s<-split(mtcars$mpg, mtcars$cyl)
lapply(s, mean)
# method 3
s<-split(mtcars[,1:3], mtcars$cyl)
sapply(s, function(x) colMeans(x[, c("mpg","cyl","disp")]))
sapply(split(mtcars$mpg, mtcars$cyl),mean)
# method 4 (answer)
with(mtcars, tapply(mpg, cyl, mean))
#    4        6        8 
# 26.66364 19.74286 15.10000  

# Problem 4
dat=with(mtcars, tapply(hp, cyl, mean))
abs(dat[1]-dat[3])
# 126.5779

# Problem 5
debug(ls)