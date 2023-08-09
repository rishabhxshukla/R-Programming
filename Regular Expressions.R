x <- c("R PROG", "r prog", "TABLEAU", "tableau")

#By default, ignore.case is FALSE
grep("r prog", x, ignore.case = TRUE)
grep("r prog", x, ignore.case = FALSE)

x <- c("GFG", "gfg", "Greek", "GREEK")
grep("gfg", x)
grep("Greek", x)
grep("gfg", x, ignore.case = FALSE)
grep("Greek", x, ignore.case = TRUE)
#---------------------------------------------------#

data = iris
g = grep("setosa", data$species)

print(g)
length(g)

x <- c("GFG", "gfg", "Greek", "GREEK")
grep("gfg", x, ignore.case = TRUE, value = TRUE)
grep("G", x, ignore.case = TRUE, value = TRUE)
grep("Greek", x, ignore.case = FALSE, value = FALSE)
grep("GREEK", x, ignore.case = FALSE, value = FALSE)
grep("r", x, ignore.case = TRUE, value = TRUE)

#---------------------------------------------------#

#OR
g <- grep("versicolor|setosa", data$Species)
print(g)
g <- grep("versicolor&setosa", data$Species)
print(g)

length(g)

#Either small 's' or capital 'S'
g <- grep("[Ss]etosa", data$Species)
print(g)
g <- grep("[Ss]", data$Species)
print(g)

length(g)

a = c("apple", "Apple", "ant", "Ant")
grep("[aA]",a)

#---------------------------------------------------#

#Starts with
g <- grepl("^v", data$Species)
print(g)
g <- grepl("a$", data$Species)
print(g)

#---------------------------------------------------#

#Sub()
a = "England is beautiful. England is a part of the UK."
a1 = sub('England', 'UK', a)
print(a1)

a2 = sub('and', 'UK', a)
print(a2)

#---------------------------------------------------#

#gsub()
gsub('England', 'UK', a)

#---------------------------------------------------#

#gregexpr()
a=c('Hello 13', '2ABC','1Ab345','TYUU')
grep("\d",a) #where the number , it returns 
#number in ach string
a
gregexpr("\w",a)#where there is alphanumeric except
#in each string
a
gregexpr("\w+",a)#an alphanumeric of nay olength, return
#every first alphanumeric
gregexpr("\d+",a)#digit of nay length
gregexpr("\s",a)#spaces , it returns the index in each