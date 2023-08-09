#Sub-string
str = "Hello World!"
new = substr(str, 1, 5)
print(new)


#Grep (pattern search - 1/0)
str = "Hello World!"
pattern = "ll"
ans = grep(pattern, str)
print(ans)


#Grepl (pattern search - T/F)
str = "Hello World!"
pattern = "ll"
ans = grepl(pattern, str)
print(ans)


#Sub (pattern replacement)
str = "England is beautiful but England is not a part of EU"
pattern = "England"
replacement = "UK"
new = sub(pattern, replacement, str)
print(new)


#Lower case
str = "HELLO WORLD!"
new = tolower(str)
print(new)


#Upper case
str = "hello world!"
new = toupper(str)
print(new)


#Concatenation
str = paste("Hello", "World", "!")
print(str)


#String Split
str = "Hello my name is Rishabh"
new = strsplit(str, " ")
print(new)


#Length of string
str = "Hello"
n = nchar(str)
print(n)