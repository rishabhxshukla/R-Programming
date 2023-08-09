#IF statement
x = 10
if(is.integer(x))
{
  print("X is an Integer")
}


#IF-ELSE statement
x <- c("What", "is", "your", "name")
if("name" %in% x)
{
  print("Value found!")
} else
{
  print("Value not found!")
}


#IF-ELSEIF-ELSE statement
x <- c("What", "is", "your", "name")
if("Is" %in% x)
{
  print("Value 'Is' found!")
} else if("is" %in% x)
{
  print("Value 'is' found!")
} else
{
  print("Value not found!")
}


#SWITCH statement
#Indexing starts from 1 - n
#Returns the value at specified index otherwise returns null
#For more than one matches, only the first key is considered
ans <- switch(
  3,
  "first",
  "second",
  "third",
  "fourth",
  "fifth"
)
print(ans)