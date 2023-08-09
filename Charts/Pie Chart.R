x <- c(10, 20, 30, 40)
labels <- c("Apples", "Bananas", "Cherries", "Dates")
colors <- c("blue", "yellow", "green", "black")

pie(
  x,
  main = "Title",
  xlab = "x axis",
  ylab = "y axis",
  label = labels,
  col = colors
)
legend(
  "bottomright", 
  labels, 
  fill = colors
)

#-------------------------------------------------------------#


#3-D PIE CHART

#install.packages("plot")
library(plotrix)

pie3D(
  x,
  main = "Title",
  xlab = "x axis",
  ylab = "y axis",
  label = labels,
  col = colors
)


#-------------------------------------------------------------#

#main = chart title
#xlab = x-axis title
#ylab = y-axis title
#col = chart color
#init.angle = change chart angle

#-------------------------------------------------------------#