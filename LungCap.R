#Loading the dataset
data <- read.csv("Lungcap.csv")
names(data)
View(data)

plot(Age, LungCap)

?lm

relation = lm(LungCap~Age)
plot(Age, LungCap)
abline(relation, col=2, lwd=3)

test <- data.frame(Age = 50)
ans <- predict(relation, test)
paste("LungCap :", ans)