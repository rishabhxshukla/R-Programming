library(ggplot2)
data("Airquality")
View(airquality)
aq <- airquality
summary(aq)

#Handling NAs
aq$Ozone[is.na(aq$Ozone)] <- mean(aq$Ozone, na.rm = T)
aq$Solar.R[is.na(aq$Solar.R)] <- mean(aq$Solar.R, na.rm = T)

#Normalization
normalize <- function(x) {
  (x - min(x)) / (max(x) - min(x))
}

aq_nor <- as.data.frame(lapply(aq[c(1, 2, 3, 4)], normalize))
aq[c(1, 2, 3, 4)] <- aq_nor

#Model
model <- lm(Ozone~Solar.R + wind + Temp)
summary(model)

#Test data
test = data.frame(Solar.R = 150, wind = 9, temp = 80)

#Predict
result = predict(model, test)
result

#Visualization
plot(Ozone ~ model$fit)
plot(model$fit + model$reg ~ model$fit)
abline(0, 1, col=5, lwd=3)   #0 is intercept, 1 is slope
?abline