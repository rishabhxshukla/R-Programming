install.packages("dplyr")
library(dplyr)

df = data.frame(x = c(12, 31, 4, 66, 78),
                y = c(22.1, 44.5, 6.1, 43.1, 99),
                z = c(TRUE, TRUE, FALSE, TRUE, TRUE)
                )
print(df)

#Filtering data
filter(df, x < 50 & z == TRUE)

print(df)

df %>%
  filter(y < 45, z != FALSE)

df = data.frame(x = c(12, 31, NA, NA, NA),
                y = c(22.1, 44.5, 6.1, 10, 99),
                z = c(TRUE, TRUE, FALSE, TRUE, TRUE)
                )
print(df)

df %>%
  filter(!is.na(x))

df = data.frame(x = c(12, 31, 10, 2, 99),
                y = c(22.1, 44.5, 6.1, 10, 99),
                z = c("Apple", "Guava", "Mango", "Apple", "Mango")
                )
print(df)

df %>%
  filter(z %in% c("Apple", "Mango"))

#----------------------------------------------------------------#

#Handling missing data
x<-c(NA,3,4,NA,NA,NA)
is.na(x)
######
#NAN means divided by zero
x <- c(NA,3,4,NA,NA,0/0,0/0)
is.nan(x)
######
x<- c(1,2,NA,3,NA,4)