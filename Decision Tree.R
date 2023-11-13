# Load the required libraries
library(rpart)
library(rpart.plot)

# Load the Iris dataset
data(iris)

# Create a decision tree model
# rpart(WHAT TO PREDICT ~ INPUT COLUMNS(+), data = DATASET)
tree <- rpart(Species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, data = iris)

# Plot the decision tree using rpart.plot
rpart.plot(tree, main = "Decision Tree", under = TRUE, tweak = 1.2)

# Make predictions on new data
new_data <- data.frame(Sepal.Length = 5.0, Sepal.Width = 3.5, Petal.Length = 1.5, Petal.Width = 0.2)
prediction <- predict(tree, new_data, type = "class")

# Display the predicted class
print(prediction)