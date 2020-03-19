# returnedList <- lapply(inputList , function) 
lapply(list(1:10), function(x){x*2})


x <- list(1:3, 4:10)
x
y1 <- lapply(x, mean)
y1
y2 <- sapply(x, mean)
y2
cat(class(y1), class(y2))


x <- matrix(1:12, 3, 4)
x
rowSums=apply(x, 1, FUN=sum)
rowSums

rowMeans=apply(x, MARGIN=1, mean)
rowMeans

colSums=apply(x, MARGIN=2, FUN=sum)
colSums

colMeans=apply(x, 2, mean)
colMeans




library(igraph)
# install.packages("igraph")

g1 <- graph( edges=c(1,2, 2,3, 3,1), n=3, directed=FALSE)
plot(g1)

g1b <- graph( edges=c(1,2, 2,3, 3,1), n=10, directed=FALSE )
plot(g1b)

g1c <- graph( edges=c(1,2, 2,3, 3,1), n=10, directed=TRUE)
plot(g1c)

g2 <- graph( edges=c('a','b','b','c','c','a'), isolates=c( 'd','e', 'f'), directed=FALSE)
plot(g2)

plot(graph_from_literal(a-b-c-a, e-f:g:h, i:j:k))
plot(graph_from_literal(1+-+2+-+3, 3-+1,5-+10:11:12))

g3 <- graph( edges=c('a','b','b','c','c','a'), isolates=c( 'd','e','f'), directed=FALSE)
plot(g3, edge.arrow.size=.5, vertex.color="gold", vertex.size=15, vertex.frame.color="gray", vertex.label.color=" black", vertex.label.cex=0.8, vertex.label.dist=2, edge.curved =0.2)

g4 <- graph( edges=c(1,2,2,3,4,5), n=5, directed=FALSE)
write_graph(g4, "g4.txt", format="edgelist")
cat("g4.txt exported under", getwd())

g5 <- graph_from_literal(1-2-3-1, 5-10:11:12)
E(g5)
V(g5)
degree(g5)