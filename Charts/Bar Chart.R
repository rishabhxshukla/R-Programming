x <- c("Physics", "Chemistry", "Maths", "Computer", "Hindi")
y <- c(87, 65, 90, 100, 76)


#1)NORMAL BAR CHART :
barplot(
  y, 
  names.arg = x,
  main = "Title",
  xlab = "x axis",
  ylab = "y axis",
  legend.text = "Legend",
  col = "blue",
  border = "red",
  #density = 5,
  horiz = FALSE
)


#---------------------------------------------------------------------------#


#2)STACKED BAR CHART :

#Stacked bar chart requires a matrix as input
data <- matrix(
            c(122, 203, 167, 118, 528, 178, 673, 212), 
            nrow = 2, ncol = 4
        )
names <- c("Physics", "Chemistry", "Maths", "Computer")

barplot(
  data,
  names.arg = names,
  main = "Title",
  xlab = "x axis",
  ylab = "y axis",
  col = c("red", "blue"),
)

legend(
  "topleft",
  c("L1", "L2"),
  fill = c("red", "blue")
)


#---------------------------------------------------------------------------#

#names.arg provides names on x axis
#main = chart title
#xlab = x-axis title
#ylab = y-axis title
#legend.text = legend
#col = chart color
#border = border color
#density = lines
#horiz = horizontal bars

#---------------------------------------------------------------------------#