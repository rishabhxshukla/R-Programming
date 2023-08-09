### BAR CHART ####
install.packages("tidyverse")
install.packages("ggplot")

library(tidyverse)
View(mpg)

#mpg is a fuel economy dataset
#ggplot is a package to create complex plots
#geom_bar makes the height of the bar proportion
#number of cases in each group
#aes is something that is visual

ggplot(mpg) + geom_bar(aes(x= class))


#### SCATTER PLOT DIAGRAM ####
library (ggplot2)

#geom_point() will add points to the plot to cre
View(mtcars)
ggplot(mtcars, aes(x= drat, y= mpg)) + geom_point()


### LINE CHART ###
val <- data.frame(course=c('DSA','C++','R','Python'), num=c(77,55,80,60))
val
ggplot(data = val,aes(x=course, y=num,group=1)) +
  geom_point()


### PIE CHART ###
df <- data.frame(value =c(10,23,15,18) , group = paste0("G", 1:4))
print(df)
#fill is used to fill color in pie chart
#color is for outline of angles of pie
#theta is the angle of pie
#geom_col() is used when heights of the bars
#are iused to represnt values in the data
ggplot(df,aes(x="",y=value,fill=group)) + 
  geom_col(color="black") +
  coord_polar(theta = "y")


### DONUT CHART ###
library(dplyr)
df <- data.frame(value = c(10,30,32,28),
                 group = paste0("G", 1:4)
                 )

hsize <- 4

df
df <- df %>%
  mutate(x = hsize)
df

ggplot(df, aes(x = hszie, y= value,
               fill = group)) +
  geom_col() +
  coord_polar(theta ="y") +
  xlim(c(0.7,hsize+0.5))

#Hole size
hsize <- 1
df <- df %>%
  mutate(x=hsize)
ggplot(df,aes(x=hsize,y =value,fill = group))
geom_col() + coord_polar(theta = "y", )
xlim(c(0.2,hsize +0.5))

library(ggplot2)
library(reshape2)

getwd()
df <- read.csv("bestsellersl.scv")
#cor() will calculate correlation coefficient
data <- cor(df[sapply(df,isnumeric)])
print(data)

#melt is used t reshape long data into wider format)
data1 <- melt(data)