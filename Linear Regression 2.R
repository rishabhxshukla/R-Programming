data <- read.csv("Lungcap.csv")
?attach
attach(data)
View(data)
str(data)
summary(data)
data <- data[ , -1]

?lm
?abline

#Handling NA's
data$LungCap[is.na(data$LungCap)] <- mean(data$LungCap, na.rm = T)
data$Age[is.na(data$Age)] <- mean(data$Age, na.rm = T)
data$Height[is.na(data$Height)] <- mean(data$Height, na.rm = T)

#Normalization
nor <- function(x) {
  (x - min(x)) / (max(x) - min(x))
}

norm <- as.data.frame(lapply(data[ , c(1, 2, 3)], nor))
summary(norm)
plot(Age, LungCap, main = "scatterplot")
model <- lm(LungCap~Age)
summary(model)
attribute(model)
abline(model, col=2, lwd=3)