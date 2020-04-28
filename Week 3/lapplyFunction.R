x <- list(a=1:5,b=rnorm(10))
lapply(x, mean)

y <- list(a=1:5,b=rnorm(10),c=rnorm(20,1),d = rnorm(100,5))
lapply(y, mean)

#runif: random uniform number generator
##generates total of random numbers as mentioned
###example : x has 4 numbers so for each iteration it will generate those many number of random numbers
z <- 1:4
lapply(z, runif)

#we can specify range for random numbers
a <- 1:4
lapply(z, runif,min = 0,max=10)

#Anonymous functions
b <- list(a= matrix(1:4,2,2), b = matrix(1:6,3,2))
b
#extracts first col
lapply(b, function(fcol) fcol[,1])


#sapply:
##Simplifies result of lapply
y <- list(a=1:5,b=rnorm(10),c=rnorm(20,1),d = rnorm(100,5))
sapply(y, mean)

