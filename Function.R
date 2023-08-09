#Program 1:
fun1 = function()
{
  for(i in 1 : 5)
  {
    sq <- i^2
    print(sq)
  }
}
fun1()


#Program 2:
fun2 = function(a)
{
  for(i in 1 : a)
  {
    sq <- i^2
    print(sq)
  }
}
fun2(5)


#Program 3:
#Positional Arguments
fun3 = function(a, b, c)
{
  result = a * b + c
  print(result)
}
fun3(11, 2, 5)


#Program 4:
#Default Arguments
fun4 = function(a=3, b=6)
{
  result = a * b
  print(result)
}
#Not giving arguments
fun4()
#Providing arguments
fun4(3, 2)


#Program 5:
fun5 = function(a, b)
{
  print(a^2)
  print(a)
  print(b)  #Gives error
}
fun5(10)