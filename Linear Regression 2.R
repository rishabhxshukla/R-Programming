data <- read.csv("Lungcap.csv")
View(data)
summary(data)

data <- data[ , -1]

?lm
?abline

#Handling NA's
data$LungCap[is.na(data$LungCap)] <- mean(data$LungCap, na.rm = T)
data$Age[is.na(data$Age)] <- mean(data$Age, na.rm = T)
data$Height[is.na(data$Height)] <- mean(data$Height, na.rm = T)

#Normalization
normalize <- function(x) {
  (x - min(x)) / (max(x) - min(x))
}

data_nor <- as.data.frame(lapply(data[ , c(1, 2, 3)], normalize))
summary(data_nor)
plot(Age, LungCap)

model <- lm(LungCap ~ Age)
summary(model)
abline(model, col=2, lwd=3)