# # x <- c("a","b","c","d")
# # 
# # for(letter in x){
# #   print(letter)
# # }
# # 
# # for(i in 1:4){
# #   print(x[i])
# # }
# # 
# # x<-matrix(1:6,2,3)
# # for(i in seq_len(nrow(x))){
# #   for(j in seq_len(ncol(x))){
# #     print(x[i,j])
# #   }
# # }
# # 
# # 
# # mydata <- rnorm(100)
# # sd(x=mydata, na.rm=FALSE)
# # 
# # add2<- function(x,y){
# #   x+y
# # }
# # 
# # above10<-function(x){
# #       use <- x>10
# #       x[use]
# # }
# # 
# # above<- function(x,n){
# #       use<-x>n
# #       x[use]
# # }
# # 
# # 
# # columnmean <- function(y){
# # 
# #       nc <- ncol(y)
# #       means <- numeric(nc)
# #       for(i in 1:nc){
# #         means[i] <- mean(y[,i])
# #       }
# #       means
# #   
# #     
# # }
# # 
# # 
# # cube <- function(x, n) {
# #         x^3
# # }
# # cube(3)
# # 
# # x <- 1:10
# # if(x > 5) {
# #         x <- 0
# # }
# 
# f <- function(x) {
#         g <- function(y) {
#                 y + z
#         }
#         z <- 4
#         x + g(x)
# }
# 
# z <- 10
# f(3)

# x <- 5
# y <- if(x < 3) {
#         NA
# } else {
#         10
# }

# h <- function(x, y = NULL, d = 3L) {
#         z <- cbind(x, d)
#         if(!is.null(y))
#                 z <- z + y
#         else
#                 z <- z + f
#         g <- x + y / z
#         if(d == 3L)
#                 return(g)
#         g <- g + 10
#         g
# }
# 
# f<-1
# h