###################################################################################
# This R script uses smartphone data and does the following. 
# 1 Merges the training and the test sets to create one data set.
# 2 Extracts only the measurements on the mean and standard deviation 
#     for each measurement. 
# 3 Uses descriptive activity names to name the activities in the data set
# 4 Appropriately labels the data set with descriptive variable names. 
# 5 From the data set in step 4, creates a second, independent tidy data set 
#     with the average of each variable for each activity and each subject.
###################################################################################

###################################################################################
# Read in training and test data along with variable labels
###################################################################################

setwd("C:/Users/Lulu/gettingdata/project")
testdata<-read.table("UCI HAR Dataset/test/X_test.txt")
traindata<-read.table("UCI HAR Dataset/train/X_train.txt")
featuresdata<-read.table("UCI HAR Dataset/features.txt")
activitylabels<-read.table("UCI HAR Dataset/activity_labels.txt")
activitylabels$subject<-activitylabels$V1
activitylabels$subjectlabel<-activitylabels$V2

subjecttestdata<-read.table("UCI HAR Dataset/test/subject_test.txt")
subjecttraindata<-read.table("UCI HAR Dataset/train/subject_train.txt")
subjecttestdata$subject<-subjecttestdata$V1
subjecttraindata$subject<-subjecttraindata$V1
subjecttestdata$V1<-NULL
subjecttraindata$V1<-NULL
testactivities<-read.table("UCI HAR Dataset/test/y_test.txt")
trainactivities<-read.table("UCI HAR Dataset/train/y_train.txt")
testactivities$activity<-testactivities$V1
trainactivities$activity<-trainactivities$V1
testactivities$V1<-NULL
trainactivities$V1<-NULL

# Combine test and training data sets together to create one data set

combdata<-rbind(testdata,traindata)

###################################################################################
# Extracting only the measurements on the mean and standard deviation 
#   for each measurement. 
###################################################################################

# Select variables with -mean- and -std- in the variable name

featuresdata$meancols<-grepl("mean()",featuresdata$V2)
featuresdata$stdcols<-grepl("std()",featuresdata$V2)

# Create list of variables to select and select from combined data

meanvars <- featuresdata$V1[featuresdata$meancols==TRUE]
stdvars <-featuresdata$V1[featuresdata$stdcols==TRUE]
selectvars<-c(meanvars,stdvars)
selectdata<-combdata[selectvars ]

###################################################################################
## Appropriately label the data set with descriptive variable names. 
###################################################################################

# use labels from features.txt data set provided by dataset authors

varlabels<-substr(featuresdata$V2,1,50)
varlabels<-gsub("-",".",varlabels)
for(i in 1:561)
{
  name <- paste("V", i, sep = "")
  names(selectdata)[names(selectdata) == name] <- varlabels[i]
}  
# use camelCase for variable names
# substitute dashes with periods in variable names
# remove parentheses in variable names

names(selectdata)<-gsub("-",".",names(selectdata))
names(selectdata)<-gsub("\\()","",names(selectdata))

###################################################################################
## Rename activities in the data set using descriptive activity names
###################################################################################

# use activity labels provided by dataset authors

testdatalabels<-cbind(subjecttestdata,testactivities)
traindatalabels<-cbind(subjecttraindata,trainactivities)
datalabels<-rbind(testdatalabels,traindatalabels)
selectdata<-cbind(datalabels,selectdata)
selectdata$activity <- factor(selectdata$activity,
                            levels = activitylabels$subject,
                            labels = activitylabels$subjectlabel)

###################################################################################
# Creates an independent tidy data set with the average of each variable for each 
#   activity (6) and each subject (30). 
###################################################################################

# create a tidy data set where:
#   Each variable you measure should be in one column, 
#   Each different observation of that variable should be in a different row

#create means of each variable

tidydata<-aggregate(selectdata[,3:81], list(selectdata$subject,selectdata$activity), mean)
tidydata$subject<-tidydata$Group.1
tidydata$activity<-tidydata$Group.2
tidydata$Group.1<-NULL
tidydata$Group.2<-NULL
#reorder columns to make data tidier
tidydata<-cbind(tidydata$activity,tidydata$subject,tidydata[1:79])

# write out data to a text file
write.table(tidydata, file="C:/Users/Lulu/gettingdata/project/tidydata.txt", row.name=FALSE)

