#To get the path
.libPaths()

#To get the list of packages
library()

#Installing package
install.packages("tree")
library(tree)

#Get working directory :
getwd()
#Set working directory :
setwd("D:/PROGRAMMING/R")

#Reading csv file :
#Method 1:
data = read.csv("data.csv")

#Method 2:
data = read.csv("D:/PROGRAMMING/R/data.csv")

#Printing the data
print(data)

#Checking if data is a data frame
print(is.data.frame(data))

#Number of columns :
print(ncol(data))

#Number of rows :
print(nrow(data))

#---------------------------------------------------------------#

#Get the maximum salary from the data frame
maxsal <- max(data$salary)
print(maxsal)

# Get the person detail having max salary.
val <- subset(data, salary == max(salary))
print(val)

# Get all the people working in IT Department
val <- subset( data, dept == "IT")
print(val)

#Get the persons in IT department whose salary > 600
val <- subset(data, salary > 600 & dept == "IT")
print(val)

#Get the people who joined on or after 2014
val <- subset(data, as.Date(start_date) > as.Date("2014-01-01"))
print(val)

#write into csv file
write.csv(val,"output.csv", row.names = FALSE)
getwd()
newdata <- read.csv("output.csv")
print(newdata)