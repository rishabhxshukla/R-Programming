#install.packages("sqldf")
library("sqldf")

#Loading the CSV file by opening a window
students = read.csv(file.choose(), header = TRUE)

#Commands :
sqldf("SELECT min(marks) FROM students")
sqldf("SELECT count(*) FROM students")
sqldf("SELECT * FROM students WHERE roll_no > 3")
sqldf("SELECT * FROM students WHERE marks < 24")
sqldf("SELECT * FROM students WHERE name = 'A'")
sqldf("SELECT DISTINCT name FROM students")
sqldf("SELECT name, marks FROM students WHERE marks > 33")
sqldf("SELECT name FROM students WHERE marks < 64")

min(students$marks)
max(students$marks)
sum(students$marks)
nrow(students)
ncol(students)

nrow(students[students$marks>24 ,])
nrow(students[students$marks>57 ,])