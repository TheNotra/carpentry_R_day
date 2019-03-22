cats<-data.frame(coat=c("calico","black","tabby"),weight=c(2.1,5.0,3.2),likes_string=c(1,0,1))
cats
write.csv(cats,file="felive.csv",row.names = FALSE)
cats<-read.csv(file="feline.csv")
cats$weight
catsweight+2
cats$weight+cats$coat
typeof(cats$weight)
cats2<-read.csv(file="C:/Users/notra/Desktop/data-shell/feline2.csv")
cats2
cats2$weight+2
typeof(cats2$weight)
class(cats)
my_vector<-vector(length=3)
my_vector
another_vector<-vector(mode="character",length=3)
another_vector
str(cats$weight)
quiz_vector<-c(2,6,"3")
quiz_vector
re_quize_vector<-as.numeric(quiz_vector)
re_quize_vector
cats$likes_string<-as.logical(cats$likes_string)
cats$likes_string
re_quize_vector<-c(re_quize_vector,5)
re_quize_vector
my_example<-(1:5)
names(my_example)<-c("a","b","c","d","e")
my_example
str(cats$weight)
str(cats$like_string)
str(cats$coat)
my_list<-(1+2i,TRUE,1,"ABC")
my_list
typeof(cats)
cats[,1]
cats[1,]
typeof(cats[1,])
typeof(cats[,1])
head(cats)
age <-c(2,3,5)
age
str (age)
cbind(cats, age)
cats
cats<-cbind(cats,age)
cats
nrow(cats)
newRow <-list('tortoiseshell', 3.3, TRUE, 9)
cats
cats<-rbind(cats,newRow)
newRow
str(cats)
str(newRow)
newRow<-list(2,3.3,TRUE,9)
str(cats)
levels(cats$coat) <-c(levels(cats$coat),"tortoiseshell")
levels(cats$coats)
cats$coats<-
humanAge <-cats$age*7
humanAge
humanAge <-as.factor(cats$coats*7)
humanAge
str(<-[-4, ]
cats <-[-4, ]
cats <- na.omit(cats)
cats[, -4]
cats
cats <-rbind(cats,cats)
cats
rownames(cats)<-NULL
gapminder <- read.csv("data/gapminder_data.csv")

