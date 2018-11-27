library(ggplot2)
library(lattice)

iris
names(iris)
str(iris)

iris$new_Species <- as.character(iris$Species)
iris$new_Species <- NULL
#iris$species <- gsub("%,"",iris$Species)
iris <- na.omit(iris)
summary(iris)
#
plot(iris)
plot(iris,col=iris$Species)
legend(7,4.3,unique(iris$Species),col = 1:length(iris$Species),pch = 1)
#
par(mfrow=c(1,2))
plot(iris$Petal.Length)
boxplot(iris$Petal.Length ~ iris$Species)
par(mfrow=c(2,2))
for(i in 1:4){
  boxplot(iris[,i]~ Species,data = iris, 
          main=names(iris)[i])
}
#
par(mfrow=c(1,1))
hist(iris$Petal.Length[1:50])

#subsetting
iris$Sepal.Length[1:50]
iris$Sepal.Length[-(1:50)]
#select by name 
iris$Sepal.Length[iris$Species=="setosa"]
#change the order of data frame
iris.ordered <- iris[order(iris$Sepal.Length),]

