library("gridExtra")
library("tableplot")
library("data.table")
library(caret)
library("RMySQL")
library("klaR")
library("caret")
library("DMwR")
library("readxl")
library("e1071")

con <- dbConnect(MySQL(),
                 user="root", password="",
                 dbname="project", host="localhost")
rs <- dbSendQuery(con, "select trainee_id,name,experience,coursescompleted,projects_completed,net_score,net_att from trainee;")
data <- fetch(rs)
print(data)
preprocessParams <- preProcess(data[,1:7], method=c("range"))
testdata<-(predict(preprocessParams, data[,1:7]))
print(testdata)
Dataset_emp <- read_excel("C:/Users/Aishwarya/Documents/Dataset 800.xlsx")  
Dataset_emp$experience<-as.numeric(factor(Dataset_emp$experience, levels=c('Young', 'Intermediate','Senior')))
Dataset_emp$net_score<-as.numeric(factor(Dataset_emp$net_score, levels=c('Good', 'Very good','Excellent')))
Dataset_emp$projects_completed<-as.numeric(factor(Dataset_emp$projects_completed, levels=c('Low', 'Medium','High')))
Dataset_emp$net_att<-as.numeric(factor(Dataset_emp$net_att, levels=c('Low', 'Medium','High')))
Dataset_emp$coursescompleted<-as.numeric(factor(Dataset_emp$coursescompleted, levels=c('Low', 'Medium','High')))
preprocessParams2 <- preProcess(Dataset_emp[,1:6], method=c("range"))
traindata<-(predict(preprocessParams2, Dataset_emp[,1:6]))
print(traindata)
train = traindata
test = testdata
xTrain = train[,-6]
yTrain = train$Onsite
xTest = test[,3:7]
yTest = test$Onsite
model = train(xTrain,yTrain,'nb',trControl=trainControl(method='cv',number=10))
predictions <- predict(model$finalModel,xTest)
tid<- c(data$trainee_id)
tname<-c(data$name)
pred<-(predictions$posterior)
predclass<-(predictions$class)
df1 <- head(data.frame(pred,tid,tname,predclass),30)
grid.table(df1)
o<-head(order(predictions$posterior[,-1],decreasing=TRUE),10)
Trainee_id<-tid[o]
Trainee_name<-tname[o]
Eligibility_Onsite<-predictions$class[o]
Score<-predictions$posterior[o,-1]*100
df <- data.frame(Eligibility_Onsite,Score,Trainee_id,Trainee_name)
grid.table(df)
ggsave("onsite_nb.png", grid.table(df))

