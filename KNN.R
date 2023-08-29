#Load Dataset 
df <- data("iris")

#See the structure
head(iris)

#Generate the random number that is 90% of the total number of rows in dataset
ran<- sample(1:nrow(iris),0.9 * nrow(iris))
str(iris)
range(iris$Sepal.Length)
range(iris$Petal.Width)

#The normalization function is created 

nor <- function(x){ (x-min(x))/(max(x)-min(x))}
#Run the normalization on first 4 columns of dataset because they are the predicators
iris_norm <- as.data.frame(lapply(iris[,c(1,2,3,4)],nor))
summary(iris)
summary(iris_norm)

## extract training set

iris_train <- iris_norm[ran,]
## extracting testing set
iris_test<- iris_norm[-ran,]
##extract 5th col of train dataset because it will used as "cl" argument in function

iris_target_catgory <- iris[ran,5]
#extracting 5th column of dataset to measure accuracy

iris_test_catgory <- iris[-ran,5]

##load the package class
library(class)
?knn
#run knn function
pr <- knn(iris_train,iris_test,cl=iris_target_catgory,k=10)

##create confusion matrix

tab<-table(pr,iris_test_catgory)


accuracy <- function(x){sum(diag(x))/sum(rowSums(x))*100}
accuracy(tab)