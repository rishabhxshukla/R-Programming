#install.packages("dplyr")
library(dplyr)

#Installing fights dataset :
#install.packages("nycflights13")
library(nycflights13)

#Viewing full data
View(flights)
#Viewing first 6 rows
head(flights)


#---------------------------------------------------------------#


#select()
ans <- select(flights, flight, origin, dest)
View(ans)


#---------------------------------------------------------------#


#slice()
slice(flights, 3)
slice(flights, 1:5)
slice(flights, 5:20)


#---------------------------------------------------------------#


#distinct()
ans <- distinct(flights, origin)
View(ans)


#---------------------------------------------------------------#


#filter()
ans <- filter(flights, month == 7)
View(ans)

ans <- filter(flights, month == 7, day == 3)
View(ans)

ans <- filter(flights, month == 7, day == 3, origin == "LGA")
View(ans)


#---------------------------------------------------------------#



#filter() using &, |
head(flights[flights$month == 7 , ])
head(flights[flights$month == 7 & flights$day == 3 , ])
head(flights[flights$month == 7 & flights$day == 3 , ], n=20)
head(flights[flights$month == 7 | flights$day == 3 , ])
head(flights[flights$month == 7 | flights$day == 3 , ], n=20)


#---------------------------------------------------------------#


#arrange()
ans <- arrange(flights, origin)
View(ans)

#Ascending order :
ans <- arrange(flights, distance)
View(ans)

#Descending order :
ans <- arrange(flights, (desc(distance)))
View(ans)

#Arrange multiple columns :
ans <- arrange(flights, origin, dest)
View(ans)


#---------------------------------------------------------------#


#mutate()
ans <- mutate(flights, (overall_delay = arr_delay - dep_delay))

#A new column is created in ans spreadsheet at the end
View(ans)
#New column is not created in the original dataset
View(flights)


#---------------------------------------------------------------#


#transmute()
ans <- transmute(flights, (overall_delay = arr_delay - dep_delay))
View(ans)


#---------------------------------------------------------------#


#summarise()
#na.rm=T is set to TRUE which means that we are removing NA values
summarise(flights, AverageAirTime = mean(air_time, na.rm=T))
summarise(flights, TotalAirTime = sum(air_time, na.rm=T))


#---------------------------------------------------------------#


#relocate()
ans <- relocate(flights, day, month, year)
View(ans)


#---------------------------------------------------------------#


#rename()
#new_name = old_name
ans <- rename(flights, "flightNum" = "flight")
View(ans)


#---------------------------------------------------------------#