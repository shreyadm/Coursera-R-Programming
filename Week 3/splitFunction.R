#Vector having 3 groups
x<-c(rnorm(10),runif(10),rnorm(10,1))

factors <- gl(3,10)
factors

split(x,factors)

lapply(split(x,factors), sum)

airQualityDataset = airquality
s <- split(airQualityDataset,airQualityDataset$Month)
s
lapply(s,function(s) colMeans(s[,c("Ozone","Solar.R","Wind")],na.rm = TRUE))

#Splitting on more than 1 levels
y<-rnorm(10)
f1 <- gl(2,5)
f2 <- gl(5,2)
str(split(y,list(f1,f2)))
