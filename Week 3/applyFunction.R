x <- matrix(rnorm(200),20,10) 
x
#mean of each col
##margin=2 denotes the attribute(row/col) you want to take into consideration
apply(x,2,mean)

#Sum of each row
apply(x,1,sum)

##Shortcut functions for these are:
###rowSums,rowMeans,colSums,colMeans

#other function: quantile
## here Calculates 25% and 75% of each row
apply(x,1,quantile,probs = c(0.25,0.75))


# For array;
arr <- array(rnorm(2*2*10), c(2,2,10))
apply(arr,c(1,2),mean)
rowMeans(arr,dims = 2)
