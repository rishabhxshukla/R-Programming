#missing values for variable order. priority , 'ship mode' and 'customer.name'
#cannot be replaced by the mean value , because there variable are categorical.

#replace the missing values with random values between min and max of each variable

#since missing values in s) have been replaced with the mean and max of each variable
#in part , we need to import the dataset again to restore the missing values.
s0 <- read.csv(file.choose(),stringsAsFactors = TRUE)
View(s0)
summary(s0)
#replacing the missing values for numerical variables:

s0$Sales[is.na(s0$Sales)] <- runif(n = sum(is.na(s0$Sales)),
                                   min = min(s0$Sales, na.rm = TRUE),
                                   max = max(s0$Sales, na.rm = TRUE))
s0$Profit[is.na(s0$Profit)] <- runif(n = sum(is.na(s0$Profit)),
                                     min = min(s0$Profit, na.rm = TRUE),
                                     max = max(s0$Profit, na.rm = TRUE))
s0$Unit.Price[is.na(s0$Unit.Price)] <- runif(n = sum(is.na(s0$Unit.Price)),
                                             min = min(s0$Unit.Price, na.rm = TRUE),
                                             max = max(s0$Unit.Price, na.rm = TRUE))

summary(s0)

#since categorical variables do not have maximum and min values, we can replace the
#missing values for categorical variable by random value from each variable.

s0$Order.Priority[is.na(s0$Order.Priority)] <- sample(levels(s0$Order.Priority),
                                                      size = sum(is.na(s0$Order.Priority)),
                                                      replace = TRUE)
s0$Ship.Mode[is.na(s0$Ship.Mode)] <- sample(levels(s0$Ship.Mode),
                                            size = sum(is.na(s0$Ship.Mode)),
                                            replace = TRUE)

s0$Customer.Name[is.na(s0$Customer.Name)] <- sample(levels(s0$Customer.Name),
                                                    size = sum(is.na(s0$Customer.Name)),
                                                    replace = TRUE)
summary(s0)

#------------------------------------------------------------------------------------------#

s1 <- s0
summary(s1)
sd(s1$Order.Quantity)
sd(s1$Sales)
sd(s1$Profit)
sd(s1$Unit.Price)
sd(s1$Shipping.Cost)

#Draw a box plot for each numeric variable
bar(nfrow = c(1, 2))
boxplot(s1$Order.Quantity, main="Order Quantity")
boxplot(s1$Profit, main="Profit")
boxplot(s1$Sales, main="Sales")
boxplot(s1$Shipping.Cost, main="Shipping Cost")
boxplot(s1$Unit.Price, main="Unit Price")
par(nfrow = c(1, 1))

barplot(summary(s1$Order.Priority))

ind <- which(s1$Order.Quantity %in% boxplot.stats(s1$Order.Quantity)$out |
               s1$Sales %in% boxplot.stats(s1$Sales)$out | 
               s1$Profit %in% boxplot.stats(s1$Profit)$out | 
               s1$Unit.Price %in% boxplot.stats(s1$Unit.Price)$out |
               s1$Shipping.Cost %in% boxplot.stats(s1$Shipping.Cost)$out)

#------------------------------------------------------------------------------------------#

summary(s1)
vars <- c("Order.Quantity", "Sales", "Profit", "Unit.Price", "Shipping.Cost")

outliers <- c()

for (i in vars)
{
  max <- quantile(s1[, i], 0.75) + (IQR(s1[, i])=1.5)
  min <- quantile(s1[, i], 0.25) - (IQR(s1[, i])=1.5)
  id <- which(s1[, i] < min | s1[, ] > max)
  outliers <- c(outliers, id)
}

outliers <- sort(unique(outliers))
outliers

hist(s2$Order.Quantity, xlab="Order Quantity", main="Order Quantity")

library()
skewness(s2$Sales)
qqnorm(s2$Sales)
qqline(s2$Sales)

skewness(log)