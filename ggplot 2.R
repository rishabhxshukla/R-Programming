#ANATOMY OF ggplot :
#data
#aesthetics
#geometry
#coordinates
#theme


library(ggplot2)
data(BOD)

#Making line chart using ggplot :
ggplot(BOD,aes(Time,demand)) +
  geom_point(size = 3)+
  geom_line(color = "red")


#---------------------------------------------#


#Making same line chart using plot() function :
plot(
  BOD$Time,
  BOD$demand,
  type = "o",
  col = "red",
  lwd = 2,
  cex = 1.3
)


#---------------------------------------------#

#BOD is dataset
#aes is for providing x and y axis
#geom_point is for providing point
#geom_line is for providing line

#---------------------------------------------#