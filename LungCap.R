#Loading the dataset
data <- read.csv("Lungcap.csv")
names(data)
View(data)

plot(Age, LungCap)

?lm

model = lm(LungCap ~ Age, data = data)
plot(Age, LungCap)
abline(model, col=2, lwd=3)

test <- data.frame(Age = 50)
ans <- predict(model, test)
paste("LungCap :", ans)