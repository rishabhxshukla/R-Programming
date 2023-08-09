# We can create a vector using two ways :
# 1. Combine function
# 2. Sequence function


#Creating vectors
a = c(10, 20, 30, 40, 50)
print(a)
b = seq(10, 100, 10)
print(b)


#Printing elements
print(a[2])
print(a[c(1:5)])
print(a[c(TRUE, FALSE, FALSE, TRUE, FALSE)])
print(a[c(1, 3)])
print(a[c(-1, -3)])


#Naming vector elements
a = c(10, 20, 30, 40, 50)
names(a) = c("one", "two", "three", "four", "five")
print(names(a))
print(a["two"])


#Deleting vector a
a = NULL
print(a)


#Range :
a <- 1 : 50
print(a)