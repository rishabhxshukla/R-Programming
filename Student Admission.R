#Loading the dataset
data <- read.csv("Student Admission.csv")
View(data)
str(data)

library(naivebayes)
library(ggplot2)
library(psych)
library(dplyr)

xtabs(~admit + rank, data = data)
str(data)
summary(data)

data$rank <- as.factor(data$rank)
data$admit <- as.factor(data$admit)
str(data)

pairs.panels(data[-1])


data %>%
  ggplot(aes(x = admit, y = gre, fill = admit)) +
  geom_boxplot() +
  ggtitle("Box plot")


data %>%
  ggplot(aes(x = admit, y = gre, fill = admit)) +
  geom_boxplot() +
  ggtitle("Box plot")


#------------------------------------------------#


#Density
data %>%
  ggplot(aes(x = gpa, fill = admit)) +
  geom_density(alpha = 0.5, color = "black") +
  ggtitle("Density plot")


#------------------------------------------------#


#Data Partition
set.seed(2145)
div <- sample(2, nrow(data), replace=T, prob=c(0.8,0.2))

train <- data[div == 1, ]
test <- data[div == 2, ]

str(train)


#------------------------------------------------#


#Navie-bayes package and method is naive_bayes
#Building Model
?naive_bayes
model <- naive_bayes(admit~., data=train)

train %>%
  filter(admit == "1") %>%
  summarise(mean(gre), sd(gre))

plot(model)


#------------------------------------------------#


#Prediction
pred <- predict(model, train, type = 'prob')
pred

head(cbind(pred, train), 200)


#------------------------------------------------#


#Confusion Matrix
p1 <- predict(model, train)
(tab1 <- table(p1, train$admit))
sum(diag(tab1)) / sum(tab1)


p2 <- predict(model, test)
(tab2 <- table(p2, test$admit))
(sum(diag(tab2)) / sum(tab2)) * 100


df = read.csv("Student Admission.csv")
View(df)
str(df)
summary(df)
df$rank = as.factor(df$rank)
df$admit = as.factor(df$admit)
colSums(is.na(df))
df = na.omit(df)


library(dplyr)
set.seed(100)
ran = sample(1 : nrow(df), 0.9 * nrow(df))
nor <- function(x) { (x -min(x))/(max(x)-min(x)) }
df_norm = df %>% mutate_at(c(2, 3), nor)


train = df_norm[ran, ]
test = df_norm[-ran, ]


head(test)
levels(train$admit)
library(e1071)
?naiveBayes
model = naiveBayes(train$admit~., data=train)
class(model)
pred = predict(model, test)
table(test$admit)
pred


#------------------------------------------------#


#Confusion Matrix
tab = table(test$admit, pred)
tab

accuray <- function(x){
  sum(diag(x)/(sum(rowSums(x)))) * 100
}

accuray(tab) #77.5



#------------------------------------------------#


sd = read.csv("Student Admission.csv")
View(sd)
summary(sd)
sd$gre[is.na(sd$gre)] <- mean(sd$gre,na.rm = T)
sd$gpa[is.na(sd$gpa)] <- mean(sd$gpa,na.rm = T)
sd$rank[is.na(sd$rank)] <- mean(sd$rank,na.rm = T)
summary(sd)
str(sd)
ran <- sample(1 : nrow(sd), 0.85 * nrow(sd))
nor <- function(x) { (x -min(x)) / (max(x)-min(x)) }

library(dplyr)
sd_norm <- sd %>% mutate_at(2 : 3, nor)
train = sd_norm[ran, ]
test = sd_norm[-ran, ]

library(e1071)
model <- naiveBayes(admit~., data = train)
class(model)
pred <- predict(model, test)
table(test$admit)
pred
tb <- table(test$admit, pred)
tb
accuracy <- function(x) { sum(diag(x)/(sum(rowSums(x)))) * 100 }
accuracy(tb)

library(corrplot)
sd.cor = cor(sd[ , c(2 : 4)])
corrplot(sd.cor, method = "number")
