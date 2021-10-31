data1 <- read.csv(file.choose(), sep = ',')
View(data1)

model<-lm(workereff~pieces+rework,data=data1[,c("workereff","pieces","rework")])
model
a<-coef(model)[1]
a
b1<-coef(model)[2]
b2<-coef(model)[3]


b1
b2



newdata<-data.frame(pieces=120,rework=10)
workereff<-predict(model,newdata)
workereff