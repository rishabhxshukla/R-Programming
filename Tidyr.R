#install.packages("tidyr")
library(tidyr)

#Creating data frame
df = data.frame(
  S_No = c(1 : 10),
  Q.1 = c(11, 12, 13, 14, 15, 16, 17, 18, 19, 20),
  Q.2 = c(21, 22, 23, 24, 25, 26, 27, 28, 29, 30),
  Q.3 = c(31, 32, 33, 34, 35, 36, 37, 38, 39, 40),
  Q.4 = c(41, 42, 43, 44, 45, 46, 47, 48, 49, 50)
)

#Print data frame
print(df)


#------------------------------------------------------------#


#gather()
g <- gather(df, "Quarter", "Sales", Q.1 : Q.4)
print(g)


#------------------------------------------------------------#


#spread()
sp <- spread(g, Quarter, Sales)
print(sp)


#------------------------------------------------------------#


#separate()
se <- separate(g, Quarter, c("Quarter", "No."))
print(se)


#------------------------------------------------------------#


#unite()
u <- unite(se, "Quarter", Quarter, No., sep = ".")
print(u)


#------------------------------------------------------------#


#drop_na()

#Creating data frame
df = data.frame(
  col1 = c(10, 20, NA, 40, 50),
  col2 = c(100, 200, 300, NA, 400)
)

#Print data frame
print(df)

#Dropping NA values from data frame :
drop_na(df)

#Dropping NA values from specific column :
drop_na(df, col2)


#------------------------------------------------------------#