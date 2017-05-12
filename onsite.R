setwd("C:/wamp64/www/st")
library("gridExtra")
library("tableplot")
library("data.table")
library("data.table")
library("RMySQL")
library("DMwR")
library("neuralnet")
library("caret")
library("readxl")
con <- dbConnect(MySQL(),
                 user="root", password="",
                 dbname="project", host="localhost")

rs <- dbSendQuery(con, "select trainee_id,name,experience,coursescompleted,projects_completed,net_score,net_att from trainee;")
data <- fetch(rs)
print(data)
preprocessParams <- preProcess(data[,1:7], method=c("range"))
testdata<-(predict(preprocessParams, data[,1:7]))
print(testdata)

library(readxl)

Dataset_emp <- read_excel("C:/Users/Aishwarya/Documents/Dataset 800.xlsx")  

Dataset_emp$experience<-as.numeric(factor(Dataset_emp$experience, levels=c('Young', 'Intermediate','Senior')))

Dataset_emp$net_score<-as.numeric(factor(Dataset_emp$net_score, levels=c('Good', 'Very good','Excellent')))
Dataset_emp$projects_completed<-as.numeric(factor(Dataset_emp$projects_completed, levels=c('Low', 'Medium','High')))
Dataset_emp$net_att<-as.numeric(factor(Dataset_emp$net_att, levels=c('Low', 'Medium','High')))
Dataset_emp$coursescompleted<-as.numeric(factor(Dataset_emp$coursescompleted, levels=c('Low', 'Medium','High')))
Dataset_emp$Onsite<-as.numeric(factor(factor(Dataset_emp$Onsite,levels=c('No', 'Yes'))))
preprocessParams2 <- preProcess(Dataset_emp[,1:6], method=c("range"))

traindata<-(predict(preprocessParams2, Dataset_emp[,1:6]))
print(traindata)
onsite <- neuralnet(traindata$Onsite ~ traindata$experience + traindata$net_score+traindata$coursescompleted+traindata$projects_completed+traindata$net_att,traindata, hidden = 5, lifesign = "minimal",threshold=0.01,linear.output =FALSE,learningrate = 0.01)
plot(onsite)
onsite.results <- compute(onsite, testdata[,3:7])
results <- data.frame(prediction = onsite.results$net.result)
print(testdata)
print(results)

print(onsite$startweights)
optimum_results<-preProcess(results, method=c("range"))
final_result<-predict(optimum_results,results)
print(final_result$prediction)
barplot(final_result$prediction,width = 1,names.arg=testdata$trainee_id,xlab="Trainee Id's",ylab="Probability of going onsite",col="blue",
        main="Prediction of going onsite",border="red")

o<-head(order(final_result$prediction,decreasing=TRUE),10)
print(final_result$prediction[o])

barplot(final_result$prediction[o],width = 1,names.arg=testdata$trainee_id[o],xlab="Trainee Id's",ylab="Probability of going onsite",col="blue",main="Prediction of going onsite",border="red")

o_per<-final_result$prediction[o]*100
print(o_per)
Onsite_Eligibility<- c(o_per)
Trainee_id<- c(testdata$trainee_id[o])
Trainee_name<-c(testdata$name[o])
df <- data.frame(Onsite_Eligibility,Trainee_id,Trainee_name)

ggsave("onsite_nn.png", grid.table(df))


