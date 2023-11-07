twitter <- read.csv("Twitter", stringsAsFactors = FALSE)
View(twitter)
str(twitter)

#Taking only first 500 tweets
twitter = head(twitter, n = 500)

# Convert into a factor
twitter$text <- factor(twitter$text)
# Repeated values
str(twitter$text)

library(tm)
corpus <- iconv(twitter$text)
sms_corpus <- Corpus(VectorSource(twitter$text))
sms_corpus

# Summary of 1st and 2nd sns in corpus
inspect(sms_corpus[1 : 2])
# Read 1st message in character form
as.character(sms_corpus[[1]])

# Read full 1st and 2nd sms in character
lapply(sms_corpus[1 : 2], as.character)

sms_corpus_clean = tm_map(sms_corpus, content_transformer(tolower))
# Inspect the 1st sms
as.character(sms_corpus[[1]])
# Compare it to stored in corpus
as.character(sms_corpus_clean[[1]])

sms_corpus_clean <- tm_map(sms_corpus_clean, removeNumbers)
sms_corpus_clean <- tm_map(sms_corpus_clean, removeWords, stopwords())
sms_corpus_clean <- tm_map(sms_corpus_clean, removePunctuation)

toSpace <- content_transformer(function(x, pattern) gsub(pattern, " ", x))

sms_corpus_clean <- tm_map(sms_corpus_clean, toSpace, "/")
sms_corpus_clean <- tm_map(sms_corpus_clean, toSpace, "0")
sms_corpus_clean <- tm_map(sms_corpus_clean, toSpace, "\\|")

sms_corpus_clean <- tm_map(sms_corpus_clean, stemDocument)
sms_corpus_clean <- tm_map(sms_corpus_clean, stripWhitespace)

as.character(sms_corpus[[1]])
as.character(sms_corpus_clean[1])
sms_dtm <- DocumentTermMatrix(sms_corpus_clean)
sms_dtm