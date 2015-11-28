# use rpart function to classify iris data set
library(rpart)
iris.rp = rpart(Species~.,data=iris,method="class")
plot(iris.rp, uniform=T, branch=0, margin=0.1, main="Classification Tree\nIris Species by Pedal and Sepal Length")
text(iris.rp, use.n=T, fancy=T, col="blue")
