# Load the required libraries
library(rpart)
library(rpart.plot)

# Load the Iris dataset
data(iris)

# Create a decision tree model
# rpart(WHAT TO PREDICT ~ INPUT COLUMNS(+), data = DATASET)
# rpart(DEPENDENT VARIABLE ~ INDEPENDENT VARIABLES)
tree <- rpart(Species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, 
              data = iris,
              method = "class")
tree


# Plot the decision tree
rpart.plot(tree, 
           main = "Decision Tree",
           tweak = 1.2,
           under = TRUE)


# Make predictions on new data
new_data <- data.frame(Sepal.Length = 5.0, Sepal.Width = 3.5, Petal.Length = 1.5, Petal.Width = 0.2)
prediction <- predict(tree, new_data)


# Display the predicted class
print(prediction)