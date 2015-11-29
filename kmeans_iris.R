# k-means clustering
# it is an art to select k value
# outliers have great impact so need to clean data first
# pro :
# efficient and not sensitive to initial value
# cons:
# cannot handle non-sphere shape clusters
# cannot handle clusters of different density

x <- iris[,1:4]

# select k=3
km <- kmeans(x,3)
km
