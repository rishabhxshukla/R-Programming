#Create a date
x<-as.Date("2023-03-27")
print(x)

#Specify the format
y<-as.Date("05/30/2017", format = "%m/%d/%Y")
print(y)

#Take a difference
Sys.Date() - as.Date("2020-01-03")

#Alternate method with specified units
difftime(Sys.Date(), as.Date("2020-01-03"), units = "hours")
dts=x
weekdays(dts)
months(dts)
quarters(dts)
Sys.Date()