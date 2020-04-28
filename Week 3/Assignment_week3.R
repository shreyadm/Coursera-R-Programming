library(datasets)
data(iris)
?iris
summary(iris)
sub <- subset(iris,iris$Species=="virginica")
sub
n <- mean(sub$Sepal.Length)
round(n)

apply(iris,2,mean)


library(datasets)
data(mtcars)

lapply(mtcars,mean)
apply(mtcars,2,mean)
sapply(split(mtcars$mpg,mtcars$cyl),mean)
sapply(mtcars,cyl,mean)
with(mtcars,tapply(mpg,cyl,mean))
tapply(mtcars$mpg,mtcars$cyl,mean)
mean(mtcars$mpg,mtcars$cyl)
tapply(mtcars$cyl,mtcars$mpg,mean)
summary(mtcars)

sub1 <- subset(mtcars,mtcars$cyl==4)
avg1 <- mean(sub1$hp)

sub2 <- subset(mtcars,mtcars$cyl==8)
avg2 <- mean(sub2$hp)

diff <- abs(avg1 -avg2)
diff
round(diff)
debug(ls)
