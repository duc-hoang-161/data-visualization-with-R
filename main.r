data <- read.csv("data.csv")

hist(data$Height,ylim=c(0,20),xlim=c(55,80),main= "PEOPLE’S HEIGHTS",breaks=32,xlab="Heigth", col="#FFFF0F",border="#000000")

hist(data$wt,ylim=c(0,20),xlim=c(99,240),main= "PEOPLE’S WEIGHTS",breaks=32,xlab="weight", col="#999999",border="#ffffff")

library(ggplot2)
install.packages("ggplot2")
ggplot(data, aes(x = Height, fill = gend)) + 
  geom_histogram(position = "stack", binwidth = 1, color = "black") + 
  xlab("Height")
ggplot(data, aes(x = age, fill = gend)) + 
  geom_bar(position = "stack", binwidth = 0.5, color = "black") + 
  xlab("Age")

