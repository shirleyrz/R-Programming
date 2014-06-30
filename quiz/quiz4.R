# quiz 4

# Q1
set.seed(1)
rpois(5, 2)


# Q2

rnorm: generate random Normal variates with a given mean and standard deviation
dnorm: evaluate the Normal probability density (with a given mean/SD) at a point (or vector of
                                                                                  points)
pnorm: evaluate the cumulative distribution function for a Normal distribution
rpois: generate random Poisson variates with a given rate


d for density
r for random number generation
p for cumulative distribution
q for quantile function

# Q3
set.seed ensures reproducibility

# Q4
inverse cumulative distribution/quantile function: qpois()

#Q5
set.seed(10)
x <- rbinom(10, 10, 0.5)
e <- rnorm(10, 0, 20)
y <- 0.5 + 2 * x + e
# Normal Liner Model

#Q6 generate Binomial random variables
rbinom()

#Q7

profiler keep track of FUNCTION CALL STACK

#Q8

library(datasets)
Rprof()
fit <- lm(y ~ x1 + x2)
Rprof(NULL)
# lm() 100%

library(datasets)
Rprof()
x1<-rnorm(10)
x2<-rnorm(10)
y=x1
fit <- lm(y ~ x1 + x2)
Rprof(NULL)
z<-summaryRprof()
z$by.total


#Q9
user time:  time spent by the CPU evaluating an expression

#Q10
elapsed time may be smaller than user time
