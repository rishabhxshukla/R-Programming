x <- c(1, 2, 3, 5, 6, 5, 3)

plot(
  x,
  type = "o",
  main = "Title",
  xlab = "x axis",
  ylab = "y axis",
  col = "red",
  lwd = 2
)


#-------------------------------------------------------------#


#To plot multiple lines, use lines() function
x <- c(1, 2, 3, 5, 6, 5, 3)
y <- c(1, 4, 5, 6, 5, 4, 2)

plot(
  x,
  type = "o",
  main = "Title",
  xlab = "x axis",
  ylab = "y axis",
  col = "red",
  lwd = 2
)
lines(
  y,
  type = "o",
  col = "blue",
  lwd = 2
)


#-------------------------------------------------------------#

#type = "p" gives points
#type = "l" gives lines
#type = "o" gives lines + points
#main = chart title
#xlab = x-axis title
#ylab = y-axis title
#col = chart color
#lwd = line width
#lty = line format (0-6)

#-------------------------------------------------------------#