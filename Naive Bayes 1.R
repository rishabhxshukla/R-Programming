# Load the packages & the dataset
library(caret)
library(e1071)
data <- read.csv("Play Tennis.csv", stringsAsFactors = FALSE)
View(data)


# Set a seed for reproducibility
set.seed(123)


# Split the dataset into train and test set (70% training and 30% testing)
splitIndex <- createDataPartition(data$play, p = 0.7, list = FALSE)
train <- data[splitIndex, ]
test <- data[-splitIndex, ]


# Build the Naive Bayes classifier using training dataset
# The target column is Species
# naiveBayes(target_column, train_file)
model <- naiveBayes(play~., data = train)


# Make predictions on the testing dataset
# predict(model, test_file)
pred <- predict(model, test)


# Creating a table
table(pred)
table(test$play)


# Building a confusion matrix
# ConfusionMatrix(original_data, predicted_data)
confusion_matrix <- table(Actual = test$play, Predicted = pred)
print("Confusion Matrix:")
print(confusion_matrix)


# Calculate accuracy
# Left-to-Right diagonal of CM contains the correct results
# Right-to-Left diagonal of CM contains the wrong results
# (True Positive, True Negative)
# (Accuracy = Total correct results / All the results)
accuracy <- sum(diag(confusion_matrix)) / sum(confusion_matrix)
print(paste("Accuracy:", accuracy))

# This means that, to find accuracy we can also do this :
accuracy <- (1 + 1) / (1 + 0 + 1 + 1)
print(paste("Accuracy:", accuracy))