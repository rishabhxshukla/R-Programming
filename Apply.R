#1) Apply function array apply marks on both rows and columns
x = matrix(c(1,2,3,4), nrow=3, ncol=4, byrow=TRUE)
y = apply(x, 1, sum)  #1 means = row
z = apply(x, 2, sum)  #2 means = columns

colSums(x)
rowSums(x)


#2) lapply function : list apply , works on columns
a <- list(
          A=c(8,97,5),
          B=data.frame(x=1:5, y=c(5,1,0,2,3))
         )
print(a)


lapply(a, sum)

#Another example of lapply
d <- 1:3
fun = function(x)
{
  x^2
}
a = lapply(d, fun)
is.list(a)


#3 .sapply :simplified apply,works only on column
sapply(1:4,sqrt)
#another exzmple of sapply