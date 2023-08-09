#Creating a data frame
empData <- data.frame(
  id = c(1:5),
  name = c("Alex", "John", "Peter", "Michelle", "Gary"),
  salary = c(623.30, 587.34, 611.0, 729.54, 843.25),
  start_date = as.Date(
    c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11", "2015-03-27")
  ),
  stringsAsFactors = FALSE
)

#Printing the data frame
print(empData)

#Printing separate rows
print(empData$id)
print(empData$name)

#Printing the Structure
str(empData)

#Printing the Statistical Summary
summary(empData)
summary(empData$salary)

#---------------------------------------------------------------#

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