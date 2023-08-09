#In R, we use repeat{} along with a break statement for looping

str <- "Hello world!"

#Looping variable :
i = 0

#Loop :
repeat
{
  if(i == 5)
    break
  
  print(str)
  i = i + 1
}