#Creating the data frame
manager = c(1, 2, 3, 4, 5)
date = c("01/01/23", "02/02/23", "03/03/23", "04/04/23", "05/05/23")
country = c("US", "UK", "IN", "AU", "FR")
gender = c("M", "F", "F", "M", "F")
age = c(20, 22, 24, 26, 28)

company = data.frame(
  manager,
  date,
  country,
  gender,
  age
)

#Printing the data frame
company


#------------------------------------------------------------------------------#


#Creating the data frame
empData <- data.frame(
  id = c(1:5),
  name = c("Alex", "John", "Peter", "Michelle", "Gary"),
  salary = c(623.30, 587.34, 611.0, 729.54, 843.25),
  start_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11", "2015-03-27")),
  stringsAsFactors = FALSE
)

#Printing the data frame
empData

#Printing the structure
str(empData)

#Printing individual columns
print(empData$id)
print(empData$name)

#Printing individual rows
print(empData[1, ])
print(empData[1:3, ])

#Adding a new row to our data frame
#We use list since every element is of different type, so we cant use c function
nixon <- list(6, "Nixon", 924.30, as.Date("2017-07-15"))
rbind(empData, nixon)

#Adding a new column to our data frame
#Here we can use the c function, since every element is of same type
age <- c(20, 22, 24, 26, 28)
cbind(empData, age)

#Deleting a row in data frame
empData <- empData[-1, ]
empData

#Deleting a column in data frame
empData <- empData[-4]
        # OR #
empData$start_date = NULL

empData

#Printing the dimension
dim(empData)

#Printing the length
length(empData)

#Printing no. of columns
ncol(empData)

#Printing no. of rows
nrow(empData)

#Printing statistical summary
summary(empData)
summary(empData$salary)


#------------------------------------------------------------------------------#


#Creating another data frame having original data frame columns
result = data.frame(
  empData$id,
  empData$salary
)

#Printing original data frame
print(empData)

#Printing new data frame
print(result)

#GETTING CONTINUOUS VALUES :

#First 2 rows
result = empData[1:2]
print(result)

#First 2 dates present in 4th column of empData
result = empData[1:2, 4]
print(result)

#Names with id 2, 3, 4 present in 2nd column of empData
result = empData[2:4, 2]
print(result)


#GETTING DISCRETE VALUES :
result = empData[c(2, 4), c(1, 3)]
print(result)

result = empData[c(1, 5), c(2, 4)]
print(result)