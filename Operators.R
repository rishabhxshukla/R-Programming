#Arithmetic Operators
a = 10
b = 2

print(a + b)    #Addition
print(a - b)    #Subtraction
print(a * b)    #Multiplication
print(a / b)    #Division
print(a ^ b)    #Exponent
print(a %% b)   #Remainder
print(a %/% b)  #Quotient

#Same operations can be performed on 2 vectors

#--------------------------------------------#

#Relational Operators
#The output is always true or false

print(a < b)    #Less than
print(a > b)    #Greater than
print(a == b)   #Equal to
print(a <= b)   #Less than equal to
print(a >= b)   #Greater than equal to
print(a != b)   #Not equal to

#--------------------------------------------#

#Logical Operators
v1 <- c(3, 0, TRUE, 2+2i)
v2 <- c(4, 0, FALSE, 2+3i)

print(v1 & v2)
print(v1 | v2)
print(!v2)
print(v1 && v2)
print(v1 || v2)