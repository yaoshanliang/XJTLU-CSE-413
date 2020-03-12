x=c(12,32,54,33,21,65)
x=c(x,55,32)
x

A = matrix (c (1,0,2,-6,3,0), nrow=2, ncol=3);
A
B = t (A);
B;

 
A=matrix(c(54,49,49,41,26,43,49,50,58,71),nrow=5,ncol=2)
A

rowSums(A)
colSums(A)
rowMeans(A)
colMeans(A)
# max of each columns
apply(A,2,max)
# min of each row
apply(A,1,min)


data (iris)

help (data)
ls();
iris
names (iris);
dim (iris);
plot (iris[ , 3], iris[ , 4]);
example(plot)


cars <- c(1, 3, 6, 4, 9)
trucks <- c(2, 5, 4, 5, 12)
plot(cars, type="o", col="blue", ylim=c(0,12))
lines(trucks, type="o", pch=22, lty=2, col="red")
title(main="Autos", col.main="red", font.main=4)

jpeg("myplotiris.jpg")
plot(iris[,3],iris[,4])
dev.off()


# Export data
write.table(mydata, "mydata.txt", sep="\t")

# Import data
a<-read.table(“a.txt”)


mydata <- read.csv("CSE413-T02 Weather.csv", header=TRUE, sep=",")
names(mydata)
str(mydata)
mydata
head(mydata, n=10)
tail(mydata, n=5)

mydata$Coldness <- factor(mydata$Coldness, levels = c(1,2,3),
labels = c("red", "blue", "green"))

x = c(2,4,6,8)

x = c(x, 7, 9)
x

x = "abcdef"
x
# substr(x, 2, 4)
toupper(x)
x
substr(x,4,4) <- "g"
strsplit(x,"")

rep(1,2,4)
rep(1:2,4)