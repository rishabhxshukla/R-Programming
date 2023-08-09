#BOILERPLATE PROGRAM :
# ggplot(dataset, aes(x-axis, y-axis, col = "red)) +
# labs(x = "X axis", y = "Y axis", title = "Title) +
# geom_


library(ggplot2)
data(iris)
View(iris)


#BAR CHART :

#Single input :
ggplot(iris, aes(Petal.Length, col = Species)) +
  labs(x = "X axis", y = "Y axis", title = "Title") +
  geom_bar()


#Double input :
ggplot(iris, aes(Species, Petal.Length, col = Species)) +
  labs(x = "X axis", y = "Y axis", title = "Title") +
  geom_bar(stat = "identity")
  


#-------------------------------------------------------------#


#HISTOGRAM CHART :
ggplot(iris, aes(Petal.Length, col = Species)) +
  labs(x = "X axis", y = "Y axis", title = "Title") +
  geom_histogram()


#-------------------------------------------------------------#


#POINT CHART :
ggplot(iris, aes(Sepal.Length, Petal.Length, col = Species)) +
  labs(x = "X axis", y = "Y axis", title = "Title") +
  geom_point()


#-------------------------------------------------------------#


#LINE CHART :
ggplot(iris, aes(Sepal.Length, Petal.Length, col = Species)) +
  labs(x = "X axis", y = "Y axis", title = "Title") +
  geom_point() +
  geom_line()


#-------------------------------------------------------------#


#TREND LINE :
ggplot(iris, aes(Sepal.Length, Petal.Length, col = Species)) +
  labs(x = "X axis", y = "Y axis", title = "Title") +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE)


#------------------------------------------------------------#

#ANATOMY OF ggplot :
#data
#aesthetics
#geometry
#coordinates
#theme

#geom_point is for providing point
#geom_line is for providing line
  
#Add geom_smooth(method = "lm", se = FALSE) at the end for trend line
#Add col in gem_smooth() for a single trend line
#Add multiple geom_line() for multiple lines
#Add coord_polar(theta = "y") at bar chart end to make pie chart
#Type 'theme' for adding theme in charts

#-------------------------------------------------------------#