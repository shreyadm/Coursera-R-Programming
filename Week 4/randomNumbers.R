#Generate random numbers
x <- rnorm(10)
y <- rnorm(100,2,1)

#set seed : sudo random numbers
set.seed(1)
rnorm(5)

rnorm(5)

set.seed(1)
rnorm(5)

#Generate random numbers from Linear Model
set.seed(20)
x <- rnorm(100)
e <- rnorm(100,0,2)
y <- 0.5 + 2*x + e
summary(y)
plot(x,y)

#Generate random numbers from Linear Model having binary variables
set.seed(10)
x <- rbinom(100,1,0.5)
e <- rnorm(100,0,2)
y <- 0.5 + 2*x + e
summary(y)
plot(x,y)

#Generate random numbers from Generalized Linear Model(poisson's distribution)
set.seed(1)
x <- rnorm(100)
log.mu <- 0.5 + 0.3*x
y <- rpois(100,exp(log.mu))
summary(y)
plot(x,y)
sample(1:10)
sample(1:10,4)
sample(1:10, replace = TRUE)
