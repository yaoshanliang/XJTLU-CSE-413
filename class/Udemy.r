x <- c(4, 5, 6)
x
ls()
objects()
sum(x)
sqrt(x)
x[1]

?seq()
# generate regular sequences
# arguments: to from length by

x <- seq(1, 10, 2)
x
x <- seq(3, 5)
x
x <- seq(from = 3, to = 5)
x
x <- seq(from = 3, length = 3)
x
x <- seq(from = 3, length = 3, by = 0.5)
x

?paste()
# string concatenation
# arguments: sep

paste(1:4)
paste("xyz", 1:4)
paste("xyz", c(2, 5, 7), "test", 4.5)
paste("xyz", 1:4, sep="")

?rep()
# replicates elements of vectors and lists
# arguments: x, times, each

rep(c(3, 4, 5), 3)
rep(1:10, times = 3)
x = c(1, 2, 3)
rep(x, each = 3)
rep(x, each = 3, times = 3)

?which()
# return the index postion of the given value

x = 4:20
which(x == 10)
x[7]


# Exercise
myObject = 1:10
myObject <- 1:10
1:10 -> myObject
assign("myObject", 1:10)
myObject

sum(myObject)

paste("R is great", c(4, 7, 45), "and I will love it")

x = rep(1:3,  length= 31)
x


# Functions
f = function(x) {x + x}
f(10)

f = function(x, y, z) {
    value = x * y * z;
    print(value)
}
f(1, 2, 3)

# Loops
for (i in 1: 5) {
    print(i)
}


# Dataset
?airmiles
head(airmiles)
tail(airmiles)

summary(mtcars)
plot(mtcars)
hist(airmiles)
head(mtcars)
sum(mtcars$wt)
attach(mtcars)
detach(mtcars)
sum(wt)
mtcars[2, 6]
mtcars[c(2, 5, 8), 6]
