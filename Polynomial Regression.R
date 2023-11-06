

dataset <- read.csv(file.choose(), sep = ",", header = T)
dataset = dataset[2 : 3]
dataset

lin_reg = lm(formula = Salary ~ ., data = dataset)
summary(lin_reg)

#Fitting polynomial regression to the dataset
dataset$Level2 = dataset$LevelY^2
dataset$Level3 = dataset$LevelY^3
dataset$Level4 = dataset$LevelY^4
dataset

poly_reg = lm(formula = Salary ~ ., data = dataset)
summary(poly_reg)

dataset$Level
dataset$Level2
dataset$Level3
dataset$Level4

#Visualizing the Linear Regression results
library(ggplot2)
ggpolot() +
  geom_point(aes(x = dataset$Level, y = dataset$Salary), colour = "red") +
  geom_line(aes(x = dataset$Level, y = predict(lin_reg, newdata = dataset)), colour = "blue") +
  ggtitle("Truth or Bluff (Linear Regression)") +
  xlab("Level") +
  ylab("Salary")

#Visualizing the Polynomial Regression results
library(ggplot2)
ggpolot() +
  geom_point(aes(x = dataset$Level, y = dataset$Salary), colour = "red") +
  geom_line(aes(x = dataset$Level, y = predict(poly_reg, newdata = dataset)), colour = "blue") +
  ggtitle("Truth or Bluff (Polynomial Regression)") +
  xlab("Level") +
  ylab("Salary")

#Visualizing the regression model results
library(ggplot2)
x_grid = seq(min(dataset$Level), max(dataset$Level), 0.1)

ggplot() +
  geom_point(aes(x = dataset$Level, y = dataset$Salary), colour = "red") +
  geom_line(aes(x = x_grid, y = predict(poly_reg,
                                        newdata = data.frame(
                                          Level = x_grid,
                                          Level2 = x_grid^2,
                                          Level3 = x_grid^3,
                                          Level4 = x_grid^4,
                                        ))),
            colour = "blue") +
  ggtitle("Truth or Bluff (Polynomial Regression)") +
  xlab("Level") +
  ylab("Salary")

#Predicting in a new result with Linear Regression
predict(lin_reg, data.frame(Level = 6.5))