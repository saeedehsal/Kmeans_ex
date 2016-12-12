#generate some data
x <- rnorm(12, mean = rep(1:2, each = 4), sd = 0.2)
y <- rnorm(12, mean = rep(c(1,2,1), each = 4), sd = 0.2)
plot(x,y, col = "blue", pch = 19, cex = 2)
text(x + 0.05, y + 0.05, labels = as.character(1:12))
dataFrame <- data.frame(x,y)

#apply kmeans method
kmeansobj <- kmeans(dataFrame, centers = 3)
names(kmeansobj)
kmeansobj$cluster