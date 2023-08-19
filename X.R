install.packages("corrplot")
library(corrplot)
library(ggplot2)
datal <- swiss
View(swiss)
head(data, 4)

ggplot(datal, aes(x=Fertility, y=Infant.Mortality)) +
  geom_point() +
  geom_smooth(method="lm", se=TRUE, color="black")