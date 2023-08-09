#install.packages("readxl")
library("readxl")
library("sqldf")

#Loading the excel file
data = read_excel("D:/PROGRAMMING/R/data2.xls")

#Commands :
sqldf("SELECT * FROM data LIMIT 10")
sqldf("SELECT Profit AS 'P', Quantity FROM data LIMIT 10")
sqldf("SELECT Discount, Quantity, Region FROM data WHERE Region=='Central' LIMIT 20")

#Sorting :
sqldf("SELECT * FROM data ORDER BY City DESC LIMIT 5")
sqldf("SELECT City, Profit, State FROM data ORDER BY City DESC, State LIMIT 20")
sqldf("SELECT City, State, Profit FROM data ORDER BY City DESC, State LIMIT 20")

#Like :
sqldf("SELECT City, Profit FROM data WHERE City LIKE 'H%' LIMIT 5")
sqldf("SELECT City, Profit FROM data WHERE City LIKE 'He%' LIMIT 5")
sqldf("SELECT City, Profit FROM data WHERE City LIKE '%H%' LIMIT 5")
sqldf("SELECT City, Profit FROM data WHERE City LIKE '_H%' LIMIT 5")

#Aggregate functions :
sqldf("SELECT sum(Profit) as 'Total Profit' FROM data")
sqldf("SELECT max(Profit) as 'Max Profit' FROM data")
sqldf("SELECT min(Profit) as 'Min Profit' FROM data")
sqldf("SELECT count(Profit) as 'Count Profit' FROM data")

#Nested select :
a <<- sqldf("SELECT max(Profit) FROM data")
print(a)

b = sqldf("SELECT Region, Profit FROM data WHERE 
           Profit == (SELECT max(Profit) FROM data)")
print(b)


sqldf("SELECT Region, Profit FROM data WHERE
       Profit == (SELECT min(Profit) FROM data)")
sqldf("SELECT City FROM data WHERE
       Profit == (SELECT max(Profit) FROM data)")
sqldf("SELECT City, Profit FROM data WHERE
       Profit == (SELECT min(Profit) FROM data)")


a = sqldf("SELECT Segment FROM data")
#First 10
head(a, n=10)
#Last 10
tail(a, n=10)


sqldf("SELECT DISTINCT Segment FROM data")
b = sqldf("SELECT Segment, Profit FROM data ORDER BY Profit")
head(b)


#GROUP BY :
sqldf("SELECT sum(Sales) FROM data")
sqldf("SELECT Region, sum(Sales) AS 'Total Sales' FROM data WHERE
       Region in ('Central', 'West') GROUP BY Region")
sqldf("SELECT Region, sum(Sales) FROM data GROUP BY Region")
sqldf("SELECT sum(Profit), Region from data GROUP BY Region")