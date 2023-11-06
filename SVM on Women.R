data(woman)
View(women)
plot(women, main = "Scatter Plot")
library(e1071)
?svm

modelsvm = svm(weight ~ height, data = women)
modelsvm

predYsvm = predict(modelsvm, women)
predYsvm

points(women$height, predYsvm, col = "red", pch = 16)
plot(women, main = "Scatter Plot")
points(women$height, predYsvm, col = "red", pch = 16)