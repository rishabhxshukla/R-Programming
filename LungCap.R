#Loading the dataset
data <- read.csv("Lungcap.csv")
attach(data)
names(data)
summary(data)
View(data)
str(data)
class(data$Age)

plot(Age, LungCap, main = "scatterplot")

?lm

linearModel = lm(LungCap~Age)
summary(linearModel)
plot(Age, LungCap, main = "scatterplot")

abline(linearModel, col=2, lwd=3)
checkLungs = data.frame(Age = 10)
result = predict(linearModel, checkLungs)
result