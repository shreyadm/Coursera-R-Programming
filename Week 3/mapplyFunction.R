#repeat function
x <- list(rep(1,4),rep(2,3),rep(3,2),rep(4,1))
x
mapply(rep, 1:4,4:1)

#user defined function
noise <- function(n,mean,sd){
  rnorm(n,mean,sd)
}

noise(5,2,1)
noise(1:5,1:5,2)  #getting wrong ans
mapply(noise, 1:5,1:5,2)
