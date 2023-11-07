#Loading the dataset
data <- read.csv("Breast Cancer.csv")

#Printing the dataset
print(data)


#Checking if there are NAs
is.na(data)


#Deleting id column
data <- data[-1]


#Replacing values in the diagnosis column
data$diagnosis <- as.factor(data$diagnosis)
levels(data$diagnosis) <- c("Benign", "Malignant")


#Writing the modified data back to a CSV file
write.csv(data, "Breast Cancer Dataset Modified.csv", row.names = FALSE)


round(prop.table(table(data$diagnosis)) * 100, digits = 1)
summary(data[c("radius_mean", "area_mean", "smoothness_mean")])
normalize <- function(x) {
  return ((x - min(x)) / (max(x) - min(x)))
}


data_n <- as.data.frame(lapply(data[2 : 31], normalize))
summary(data_n$area_mean)


data_train <- data_n[1 : 469, ]
data_test <- data_n[470 : 569, ]
data_train_labels <- data[1 : 469, 1]
data_test_labels <- data[470 : 569, 1]


#install.packages("class")
library(class)


data_test_pred <- knn(train = data_train, test = data_test,
                      cl = data_train_labels, k = 21)


#install.packages("gmodels")
library(gmodels)

CrossTable(x = data_test_labels , y = data_test_pred,
           prop.chisq = FALSE)

aa <- table(data_test_labels, data_test_pred)

library(caret)
confusionMatrix(aa)
