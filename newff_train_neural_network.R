library(AMORE)
x1 <- c(1,1,1,1,0,0,0,0)
x2 <- c(0,0,1,1,0,1,1,0)
x3 <- c(0,1,0,1,1,0,1,0)
y <- c(-1,1,1,1,-1,-1,1,-1)
P <- cbind(x1,x2,x3)
target <- y
net <- newff(n.neurons=c(3,1,1), learning.rate.global=1e-2, momentum.global=0.2, 
             error.criterium="LMS", Stao=NA, hidden.layer="tansig",
             output.layer="purelin", method="ADAPTgdwm")
result <- train(net, P, target, error.criterium="LMS", report=TRUE, show.step=100, n.shows=5)
z <- sim(result$net, P)
