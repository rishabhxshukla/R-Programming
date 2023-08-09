#Single key search :
v1 <- c(10, 20, 30, 40, 50)
ans = 10 %in% v1
print(ans)

#---------------------------------------------------------#

#Multiple keys search :
v1 <- c(10, 20, 30, 40, 50)
v2 <- c(20, 35, 40)
ans = v2 %in% v1
print(ans)

#---------------------------------------------------------#

#Sequence of characters :
x <- LETTERS[1 : 10]
y <- LETTERS[8 : 12]
ans = y %in% x
print(ans)

#---------------------------------------------------------#

#Data frame filtering :
df <- data.frame(
  empId = c(111, 222, 333, 444, 555),
  empName = c("Luffy", "Zoro", "Sanji", "Nami", "Robin"),
  deptId = c(1, 2, 3, 4, 5)
)
print(df)

#New vector to store names and compare it with the original vector
checkNames <- c("Luffy", "Zoro", "Sanji", "Alex", "John")

ans1 = "Luffy" %in% df$empName
ans2 = df$empName %in% checkNames
ans3 = df$empName[4] %in% checkNames

print(ans1)
print(ans2)
print(ans3)

#---------------------------------------------------------#

#Drop columns :
print(df)
df[ , !(colnames(df) %in% c("deptId"))]

#---------------------------------------------------------#