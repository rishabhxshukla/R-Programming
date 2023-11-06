# Step 1: Load the necessary packages
library(e1071)
library(caret)

# Import the "Play Tennis" dataset
play_tennis <- read.csv("Play Tennis.csv", stringsAsFactors = FALSE)

# Set a seed for reproducibility
set.seed(123)


# Step 2: Split the dataset into a training set and a testing set (70% training and 30% testing)
splitIndex <- createDataPartition(play_tennis$play, p = 0.7, list = FALSE)
training_data <- play_tennis[splitIndex, ]
testing_data <- play_tennis[-splitIndex, ]


# Step 3: Build the Naive Bayes classifier
# 'PlayTennis' is the target variable, and '~ .' specifies to use all other columns as features
nb_model <- naiveBayes(play ~ ., data = training_data)


# Step 4: Make predictions on the testing dataset
predictions <- predict(nb_model, testing_data)


# Step 5: Evaluate the model
# Create a confusion matrix
confusion_matrix <- table(Actual = testing_data$play, Predicted = predictions)
print("Confusion Matrix:")
print(confusion_matrix)

# Calculate accuracy
accuracy <- sum(diag(confusion_matrix)) / sum(confusion_matrix)
print(paste("Accuracy:", accuracy))