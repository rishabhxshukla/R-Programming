#Creating a matrix column-wise (default)
M = matrix(c(1:12), nrow = 4)

#Creating a matrix row-wise
M = matrix(c(1:12), nrow = 4, byrow = TRUE)

#Printing the matrix
print(M)

#Assigning names to rows and columns
a = c("row1", "row2", "row3", "row4")
b = c("col1", "col2", "col3")
M = matrix(c(1:12), nrow = 4, byrow = TRUE, dimnames = list(a,b))

#Printing new matrix
print(M)

#Accessing elements
print(M[1, 2])
print(M["row3", "col2"])
print(M[3, ])
print(M[ , 1])

#---------------------------------------------------------------#

#Matrix Operations
m1 = matrix(c(3, 9, -1, 4, 2, 6), nrow = 2)
m2 = matrix(c(5, 2, 0, 9, 3, 4), nrow = 2)

#Addition
m3 = m1 + m2
print(m3)

#Subtraction
m3 = m1 - m2
print(m3)