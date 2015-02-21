###read in data
Xtest <- read.table("./UCI HAR Dataset/test/X_test.txt")
Ytest <- read.table("./UCI HAR Dataset/test/Y_test.txt")
subjecttest <- read.table("./UCI HAR Dataset/test/subject_test.txt")
Xtrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
Ytrain <- read.table("./UCI HAR Dataset/train/Y_train.txt")
subjecttrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")

###combine X, Y and subject
test <- cbind(Ytest, subjecttest, Xtest, Type="test")
train <- cbind(Ytrain, subjecttrain, Xtrain, Type="train")
###combine train, test
data <- rbind(test, train)
feature<-read.table("./UCI HAR Dataset/features.txt")
labels<-read.table("./UCI HAR Dataset/activity_labels.txt")

###extract features
sdata<-data[,c(1:2,3:8,43:48,83:88,123:128,163:168,203:204,216:217,229:230,242:243,255:256,268:273,347:352,426:431,505:506,518:519,531:532,544:545,564)]
###rename columns
names(sdata)<-c("Activity","Subject",as.character(feature[c(3:8,43:48,83:88,123:128,163:168,203:204,216:217,229:230,242:243,255:256,268:273,347:352,426:431,505:506,518:519,531:532,544:545)-2,2]),"Type")
###redefine value for activity
sdata[,1]<-as.factor(sdata[,1])
levels(sdata[,1])<-as.character(labels[,2])
###compute 
tmp<-split(sdata,list(sdata$Activity,sdata$Subject))
myfun<-function(data){
	apply(data[,-c(1:2,69)],2,mean)
}
tmp1<-t(sapply(tmp,myfun))
newdata<-data.frame(Activity=as.factor(rep(1:6,30)),Subject=rep(1:30,each=6),tmp1,row.names=NULL)
levels(newdata$Activity)<-as.character(labels[,2])
names(newdata)<-c("Activity","Subject",as.character(feature[c(3:8,43:48,83:88,123:128,163:168,203:204,216:217,229:230,242:243,255:256,268:273,347:352,426:431,505:506,518:519,531:532,544:545)-2,2]))
write.table(newdata, file="newdata.txt", row.name=FALSE)
