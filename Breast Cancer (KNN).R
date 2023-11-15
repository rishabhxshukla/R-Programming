# Loading the dataset
data <- read.csv("Breast Cancer.csv")
View(data)


# Deleting id column
data <- data[-1]


# Creating a frequency table
table(data$diagnosis)


# Replacing values in the diagnosis column
data$diagnosis <- factor(data$diagnosis, 
                         levels = c("B", "M"),
                         labels = c("Benign", "Malignant"))


# Writing the modified data back to a CSV file
#write.csv(data, "Breast Cancer Dataset Modified.csv", row.names = FALSE)


# Normalizing the numeric data
normalize = function(x) {
  return ((x - min(x)) / (max(x) - min(x)))
}


# Checking no. of columns in dataset
ncol(data)
# Data after normalization (column 2 to 31)
data_nor <- as.data.frame(lapply(data[2 : 31], normalize))
View(data_nor)


# Checking no. of rows in dataset
nrow(data_nor)
# Splitting the dataset into train & test data
data_train <- data_nor[1 : 455, ]
data_test <- data_nor[456 : 569, ]
# Giving labels which are present in column-1 : Benign, Malignant
data_train_labels <- data[1 : 455, 1]
data_test_labels <- data[456 : 569, 1]


#install.packages("class")
library(class)


# Finding the optimal value of k
# k = square root of no. of rows
# Never take k as even no.
sqrt(nrow(data))


# Training model on data
data_test_pred <- knn(train = data_train, test = data_test,
                      cl = data_train_labels, k = 23)


# Evaluating the model performance
result <- table(data_test_labels, data_test_pred)
result

# Calculate the accuracy
# Left-to-Right diagonal of CM contains the correct results (True Positive)
# Right-to-Left diagonal of CM contains the wrong results (True Negative)
# (Accuracy = Total correct results / All the results)
accuracy <- sum(diag(result)) / sum(result)
round(accuracy * 100)