
# c() function to concatenate objects to create a vector
x <- c(0.5, 0.6)
x <- c(TRUE, FALSE)
x <- c(T, F)
x <- c("a", "b", "c")
x <- 9:29
x <- c(1+0i, 2+4i)

# vector() function to initialize vectors of certain type
x <- vector("numeric", length = 10)

# matrix() function to create a matrix of certain shape
matrix(nrow = 2, ncol = 3)
m <- matrix(1:6, nrow = 2, ncol = 3)

# dim() function to check the shape of the matrix
dim(m) 

m <- 1:10
m

dim(m) <- c(2, 5)
m

# Matrices can be created by column-binding or row-binding with the cbind() and rbind() functions.
x <- 1:3
y <- 10:12
cbind(x, y)
rbind(x, y)

# Lists are a special type of vector that can contain elements of different classes
x <- list(1, "a", TRUE, 1 + 4i)
x

# vector() can also create a list
x <- vector("list", length = 5)
x

x <- 1:4
y <- 6:9 
z <- x + y
z
x * y
x / y


x <- matrix(1:6, 2, 3)
y <- matrix(rep(10, 6), 2, 3)
y
x * y

t(x) %*% y
x %*% t(y)

crossprod(x, y)
tcrossprod(x, y)

diag(1 ,3)
matrix(1, 3,3) - diag(1,3)

# Getting elements
x[2,3]

# Getting a scalar
matrix(1:9, 3,3)[2,c(1,2,3)]

# Getting a vector
(1:9) [5:9]
matrix(1:9, 3,3)[2,c(1,2,3)]
matrix(1:9, 3,3)[2,]

# Getting a sub-matrix
matrix(1:12, 3,4)[c(2,3), 1:3]
matrix(1:12, 3,4)[c(3,2), 1:3]

m <- (1:9)
m[ m > 5 ]


# function() to create a simple function
meow <- function(n_meows) {
    for (i in seq_len(n_meows) ) {
        cat("Meow\n")
    }
}
meow (3)


# Exercise

m <- 1:20
m

m <- c(1:20, 19:1)
m

tmp <- c(4, 6, 3)
tmp

rep(tmp ,10)

rep(tmp,times=c(10,20,30))

tmp <- seq(3,6,by=0.1)
exp(tmp)*cos(tmp)

y <- matrix(rep(4, 10), 10, 3)
y

xVec <- sample(0:999, 250, replace=T)
yVec <- sample(0:999, 250, replace=T)
yVec
yVec[ yVec >= 600]



tmp <- matrix( c(1,5,-2,1,2,-1,3,6,-3), nr=3)
tmp
tmp %*% tmp %*% tmp == matrix(0, 3, 3)
tmp[,3] <- tmp[,2] + tmp[,3]


tmp <- matrix(c(10,-10,10), b=T, nc=3, nr=15)
tmp
t(tmp)%*%tmp
crossprod(tmp)

tmpFn1 <- function(xVec) {
    xVec^(1:length(xVec))
}

tmpFn2 <- function(xVec) {
    n <- length(xVec)
    (xVec^(1:n)) / (1:n)
}