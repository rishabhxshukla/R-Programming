#List 1:
list1 = list("Hello", "Hi", c(1, 2, 3), TRUE, 12,34)

#List 2:
list2 = list(
          c("Jan", "Feb", "Mar"), 
          matrix(c(1, 2, 3, 4, 5, 6), nrow = 2),
          list("red", 10, 87.34)
        )

#List 3:
list3 = list(1, 2)

#---------------------------------------------------#

#Element 1 of list 1
print(list1[[1]])

#Element 3 of list 1
print(list1[[3]])

#Element 1 of index 3 of list 2
print(list2[[3]][[1]])

#---------------------------------------------------#

#GIVING NAMES TO THE LIST:
names(list2) <- c("Months", "Matrix", "Inner List")

#Printing the list
print(list2)

#Element 1 of list 2
print(list2[1])

#---------------------------------------------------#

#ADDING NEW ELEMENT TO LIST 3:
list3[3] = "Hi"
print(list3)

#UPDATING ELEMENT PRESENT IN LIST 3:
list3[1] = 99
print(list3)

#DELETING ELEMENT PRESENT IN LIST 3:
list3[2] = NULL
print(list3)

#---------------------------------------------------#

#ADDING 2 LISTS:
list1 = list(1 : 5)
list2 = list(10 : 14)

#Convert the lists to vectors
v1 <- unlist(list1)
v2 <- unlist(list2)

#Now add the vectors
result = v1 + v2
print(result)

#---------------------------------------------------#