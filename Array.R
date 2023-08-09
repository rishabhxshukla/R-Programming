v1 <- c(5, 9, 3)
v2 <- c(10, 11, 12, 13, 14, 15)

#Providing names
row.names <- c("row1", "row2", "row3")
column.names <- c("col1", "col2", "col3")
matrix.names <- c("Matrix 1", "Matrix 2")

result <- array(
            c(v1, v2), 
            dim = c(3, 3, 2),
            dimnames = list(row.names, column.names, matrix.names)
          )


#Printing the array
print(result)

#Printing 1st Matrix
print(result[ , , 1])

#Printing 2nd Matrix
print(result[ , , 1])

#Printing element present at row1, col1 and matrix 1
print(result[1, 1, 1])

#Printing 3rd row of all the columns of 2nd matrix
print(result[3, , 2])

#Printing 3rd column of all the rows of 2nd matrix
print(result[ , 3, 2])

#---------------------------------------------------------------#

v1 <- c(5, 9, 3)
v2 <- c(10, 11, 12, 13, 14, 15)

#Array 1
arr1 <- array(
            c(v1, v2), 
            dim = c(3, 3, 2)
          )

#Printing array 1
print(arr1)

v3 <- c(9, 1, 0)
v4 <- c(6, 0 ,11, 3, 14, 1, 2, 6, 9)

#Array 2
arr2 <- array(
          c(v1, v2), 
          dim = c(3, 3, 2)
      )

#Printing array 2
print(arr1)

#Creating matrices from these arrays
mat1 <- arr1[ , , 2]
mat2 <- arr2[ , , 2]

#Printing matrices
print(mat1)
print(mat2)