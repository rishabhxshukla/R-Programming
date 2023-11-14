# Load the Iris dataset
data(iris)

# Split the dataset into a training set (70%) and a testing set (30%)
set.seed(123)  # For reproducibility
sample_indices <- sample(1:nrow(iris), nrow(iris) * 0.7)
train_data <- iris[sample_indices, ]
test_data <- iris[-sample_indices, ]

# Function to calculate the Euclidean distance between two data points
euclidean_distance <- function(x1, x2) {
  sqrt(sum((x1 - x2)^2))
}

# Function to perform min-max normalization
min_max_normalize <- function(data) {
  return((data - min(data)) / (max(data) - min(data)))
}

# Apply normalization to numeric columns (excluding the Species column)
train_data[, 1:4] <- apply(train_data[, 1:4], 2, min_max_normalize)
test_data[, 1:4] <- apply(test_data[, 1:4], 2, min_max_normalize)

# Function to perform KNN classification
knn <- function(train, test, k) {
  predictions <- character(length = nrow(test))
  
  for (i in 1:nrow(test)) {
    distances <- sapply(1:nrow(train), function(j) euclidean_distance(test[i, -5], train[j, -5]))
    nearest_indices <- order(distances)[1:k]
    nearest_classes <- train$Species[nearest_indices]
    predictions[i] <- names(sort(table(nearest_classes), decreasing = TRUE)[1])
  }
  
  return(predictions)
}

# Set the value of k
k_value <- 3

# Perform KNN classification on the normalized test set
test_predictions <- knn(train_data, test_data, k_value)

# Calculate the accuracy of the model
correct_predictions <- sum(test_predictions == test_data$Species)
accuracy <- correct_predictions / nrow(test_data) * 100

cat("Accuracy of KNN with k =", k_value, "is", accuracy, "%\n")