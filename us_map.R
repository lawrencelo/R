## plot US cities with population more than 500000 people
library(maps)
library(ggplot2)
data(us.cities)
big_cities <- subset(us.cities, pop > 500000)
qplot(long, lat, data = big_cities) + borders("state", size = 0.5)
