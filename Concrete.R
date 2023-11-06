concrete = read.csv("Concrete.csv")
View(concrete)
str(concrete)

hist(concrete$strength)
normalize <- function(x) {
  return ((x - min(x)) / ((max(x)) - min(x)))
}

concrete_norm <- as.data.frame(lapply(concrete, normalize))

summary(concrete_norm$strength)
#Now all the values are in the range of zero and one

summary(concrete_norm$strength)
#Actual values are larger than the normalized values

concrete_train <- concrete_norm[1 : 733, ]
#75% training data

concrete_test <- concrete_norm[744 : 1030, ]
#25% testing data


library(neuralnet)

concrete_model <- neuralnet(strength - cement + slag + ash + water
                            + superplasticizer
                            + coarseagg + fineagg + age,
                            data = concrete_train)

plot(concrete_model)

model_results = compute(concrete_model, concrete_test[1 : 8])

predicted_strength <- model_results$net.result

cor(predicted_strength, concrete_test$strength)

concrete_model2 <- neuralnet(strength ~ cement + slag + ash + water
                             + superplasticizer
                             + coarseagg + fineagg + age,
                             data = concrete_train, hidden=5)