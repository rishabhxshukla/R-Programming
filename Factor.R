#Data
data = c("East", "West", "East", "North", "North", "East", "West", "West", "West", "East", "North")

#Checking if it is a factor
is.factor(data)

#Factoring the raw data
factoredData <- factor(data)

#No. of categories
nlevels(factoredData)

#Printing factored data
print(factoredData)

#Checking if it is a factor
is.factor(factoredData)

#Creating a custom order
NewOrder <- factor(factoredData, levels = c("North", "East", "West"))

#Printing custom order
print(NewOrder)

#-----------------------------------------------------------------------#

#Creating vectors of same size
height <- c(132, 151, 162, 139, 166, 142, 122)
weight <- c(48, 49, 66, 53, 67, 52, 43)
gender <- c("Male", "Male", "Female", "Female", "Male", "Female", "Male")

#Creating the data frame
df <- data.frame(height, weight, gender, stringsAsFactors = FALSE)

#Printing the data frame
print(df)

#Checking if the gender column is a factor
print(is.factor(df$gender))

#Printing the gender column
print(df$gender)

#-----------------------------------------------------------------------#

#GL function
#gl(no. of elements to display, no. of times to display)
v <- gl(3, 5, labels = c("California", "Boston", "Seattle"))
print(v)