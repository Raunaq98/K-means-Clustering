set.seed(12)

library(ggplot2)

x<- rnorm(12, mean= rep(1:3,each=4),sd=0.4)
y<- rnorm(12,mean=rep(c(1,2,1),each=4),sd=0.2)

plot(x,y,col="blue",pch=19)
text(x+0.05,y+0.05, labels= as.character(1:12))

df<- data.frame(x,y)

kmeansclustering<- kmeans(df,centers = 3)

names(kmeansclustering)
# [1] "cluster"      "centers"      "totss"        "withinss"     "tot.withinss" "betweenss"   
# [7] "size"         "iter"         "ifault"

kmeansclustering$cluster
#  [1] 2 2 2 2 1 1 1 1 3 3 3 3
# tells us first four points of df are in cluster 2 and so on

plot( x , y , col= kmeansclustering$cluster, pch=19)  # plotting data points with colour as a function of cluster
points(kmeansclustering$centers, col=1:3, pch=3)  # plotting centroids for clusters

