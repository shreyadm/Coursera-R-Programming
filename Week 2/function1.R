#Simple function
add2 <- function(x,y){
  x+y
}

#numbers above 10 in vector
above10 <- function(x){
  use <- x>10
  x[use]
}

#generic
aboveN <- function(x,n){
  use <- x>n
  x[use]
}

#default value
aboveN <- function(x,n=10){
  use <- x>n
  x[use]
}

#go through the columns of data frame and calc mean of each col
columnMean <- function(y,removeNA = TRUE){
  nc <- ncol(y)#total number of cols
  means <- numeric(nc) #init vector wit length=total no of cols
  for(i in 1:nc){
    means[i] <- mean(y[,i], na.rm = removeNA)
  }
  means   #gets returned
}