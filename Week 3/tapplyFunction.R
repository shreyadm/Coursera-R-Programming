#Vector having 3 groups
x<-c(rnorm(10),runif(10),rnorm(10,1))

factors <- gl(3,10)
factors
tapply(x, factors, sum)
tapply(x, factors,range)
