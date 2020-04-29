#Calling on itself :)
str(str)

#Calling on random data
x <- rnorm(100,2,4)
summary(x)
str(x)

#str for factor
f <- gl(40,10)
str(f)

#str for dataset
str(airquality)

#str on matrix : returns first col
mat <- matrix(rnorm(100),10,10)
str(mat)
mat[,1]


#list
splitByMonth <- split(airquality,airquality$Month)
str(splitByMonth)
