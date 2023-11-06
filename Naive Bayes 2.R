sms_raw <- read.csv("sms.csv", stringsAsFactors = FALSE)
str(sms_raw)

sms_raw$type <- factor(sms_raw$type)

str(sms_raw$type)
str(sms_raw)

table(sms_raw$type)

#install.packages("tm")
library(tm)

sms_corpus <- VCorpus(VectorSource (sms_raw$text))
print(sms_corpus)

inspect(sms_corpus[1 : 2])
as.character(sms_corpus[[1]])
lapply(sms_corpus[1 : 2], as.character)

sms_corpus_clean <- tm_map(sms_corpus)
a = stopwords()
print(a)

sms_corpus_clean <- tm_map(sms_corpus_clean, removeNumbers)
a = stopwords()
print(a)

sms_corpus_clean<- tm_map(sms_corpus_clean, removeWords, stopwords())
sms_corpus_clean<- tm_map(sms_corpus_clean, removePunctuation)
as.character(sms_corpus_clean[[1]])

#install.packages("snowballC")
library(SnowballC)

wordstem(c("learn","learned","learning","learns"))
sms_corpus_clean<-tm_map(sms_corpus_clean,stemDocument)
sms_corpus_clean<-tm_map(sms_corpus_clean,stripwhitespace)
as.character(sms_corpus_clean[[1]])

#install.packages("wordcloud")
library(wordcloud)

wordcloud(sms_corpus_clean,min.freq=50,random.order=FALSE)