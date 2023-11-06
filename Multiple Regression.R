library(ggplot2)
data("Airquality")
View(airquality)
aq <- airquality
summary(aq)
str(aq)

#Handling NAs
aq$Ozone[is.na(aq$Ozone)] <- mean(aq$Ozone, na.rm = T)
aq$Solar.R[is.na(aq$Solar.R)] <- mean(aq$Solar.R, na.rm = T)

#Normalization
nor <- function(x) {
  (x - min(x)) / (max(x) - min(x))
}

aq_norm <- as.data.frame(lapply(aq[c(1, 2, 3, 4)], nor))
aq[c(1, 2, 3, 4)] <- aq_norm
attach(aq)

#Model
MultiReg <- lm(Ozone~Solar.R + wind + Temp)
summary(MultiReg)
attributes(MultiReg)

#Test data
checkOzone = data.frame(Solar.R = 150, wind = 9, temp = 80)

#Predict
result = predict(MultiReg.checkOzone)
result

#Visualization
plot(Ozone ~ MultiReg$fit)
plot(MultiReg$fit + MultiReg$reg ~ MultiReg$fit)
abline(0, 1, col=5, lwd=3)   #0 is intercept, 1 is slope
?abline