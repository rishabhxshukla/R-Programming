# Dependent variable (Weight)
y <- c(63, 66, 69, 72, 75, 78, 75, 72, 69, 66)
# Independent variable (Height)
x <- c(5.1, 5.5, 5.8, 6.1, 6.4, 6.7, 6.4, 6.1, 5.10, 5.7)


# Plotting the values
plot(y, x)


# Apply the lm() function
model <- lm(y ~ x)
summary(relation)


# Find wight of a person with height 6.3
test <- data.frame(x = 6.3)
ans <- predict(model, test)
paste("Weight :", ans)