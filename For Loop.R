#In for loop, we just need to provide a range


#EXAMPLE 1: 
str <- "Hello"

#Loop
for(i in 1:10)
{
  print(paste(str, i))
}


#-------------------------------------------#


#EXAMPLE 2:
fruits <- c("apple", "banana", "cherry")

for (i in fruits) 
{
  print(i)
}


#-------------------------------------------#


#EXAMPLE 3:
fruits <- c("apple", "banana", "cherry")

for (i in fruits) 
{
  if (i == "cherry") 
  {
    break
  }
  print(i)
}


#-------------------------------------------#


#EXAMPLE 4:
fruits <- c("apple", "banana", "cherry")

for (i in fruits) 
{
  if (i == "banana") 
  {
    next
  }
  print(i)
}