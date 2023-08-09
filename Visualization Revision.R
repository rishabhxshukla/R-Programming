#install.packages("ggplot2")
library(ggplot2)
library(dplyr)

read.csv("C:/Users/Lenovo/Desktop/house.csv")

data = read.csv("C:/Users/Lenovo/Desktop/house.csv", header = TRUE)

str(data)


#SCATTER PLOT :
ggplot(data=iris, aes(y=Petal.Length, x=Sepal.Length)) + 
  geom_point()

ggplot(data=iris, aes(y=Petal.Length, x=Sepal.Length,col=Species)) + 
  geom_point()

ggplot(data=iris, aes(y=Petal.Length, x=Sepal.Length, shape=Species)) + 
  geom_point()

ggplot(data=iris, aes(y=Petal.Length, x=Sepal.Length, col=Species, shape=Species)) + 
  geom_point()



#------------------------------------------------------------------------------#



#House data visualization
house <- read.csv("C:/Users/Lenovo/Desktop/house.csv", header = TRUE)

str(house)

house1<- house[,-1]
house1 <- house %>% select(c(-1))

str(house1)

#HISTOGRAM
ggplot(data = house, aes(x=price)) + 
  geom_histogram()

ggplot(data = house, aes(x=price)) + 
  geom_histogram(bin=50)

ggplot(data=house,aes(x=price)) +
  geom_histogram(bins=50, fill="brown")

ggplot(data=house, aes(x=price)) +
  geom_histogram(bins=50, fill="brown", col="black")

ggplot(data=house, aes(x=price, fill=air_cond)) + 
  geom_histogram(bins=50)

ggplot(data=house, aes(x=price, fill=factor(air_cond))) +
  geom_histogram(bins=50, position="fill")



#------------------------------------------------------------------------------#



#Iris dataset visualization

#BARPLOT :
#To see distribution of continuous variable we use histogram
#To see distribution of categorical variable we use bar plot

ggplot(data=house, aes(x=waterfront)) + 
  geom_bar()

ggplot(data=house, aes(x=waterfront, fill=air_cond)) + 
  geom_bar()

ggplot(data=house, aes(x=waterfront, fill=air_cond)) + 
  geom_bar(position="fill")

ggplot(data=house, aes(x=waterfront, fill=sewer)) + 
  geom_bar(position="fill")


#FREQUENCY-POLYGON :
#An alternative to a histogram used to see a distribution of continuous variable

ggplot(data=house, aes(x=price)) + 
  geom_freqpoly()

ggplot(data=house, aes(x=price)) + 
  geom_freqpoly(bins=50)

ggplot(data=house, aes(x=price)) + 
  geom_freqpoly(bins=100)

ggplot(data=house, aes(x=price, col=air_cond)) + 
  geom_freqpoly(bins=60)


#BOXPLOTS :
#How does continuous var change w.r.t. categorical var
#outliers are beyond the avg value

ggplot(data=house, aes(x=factor(rooms), y=price)) + 
  geom_boxplot()

ggplot(data=house, aes(x=factor(rooms), y=price, fill=factor(rooms))) + 
  geom_boxplot()

ggplot(data=house, aes(x=factor(rooms), y=price, fill=air_cond)) + 
  geom_boxplot()

ggplot(data=house, aes(x=factor(rooms), y=price, fill=sewer)) + 
  geom_boxplot()

#Hand on :-
#Do the analysis for USArrests dataset for crimes attribute, using box plots
#also identify the outliers if any.

ggplot(data=USArrests, aes(x=factor(Murder), y=Assault)) + 
  geom_boxplot()

View(USArrests)
data()

USArrests$state <- rownames(USArrests)
USArrests <- USArrests[ , c(5, 1:4)]
View(USArrests)

ggplot(data=USArrests, aes(x=state, y=Assault)) + 
  geom_boxplot()

View(USArrests)
