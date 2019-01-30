#read the datasets
xtrain <- read.table(file.path(pathdata,"train","X_train.txt"), header=FALSE)
ytrain <- read.table(file.path(pathdata,"train","y_train.txt"),header=FALSE)
subject_train <- read.table(file.path(pathdata,"train","subject_train.txt"),header=FALSE)
xtest <- read.table(file.path(pathdata,"test","X_test.txt"),header=FALSE)
ytest <- read.table(file.path(pathdata,"test","y_test.txt"),header=FALSE)
subject_test <- read.table(file.path(pathdata,"test","subject_test.txt"),header=FALSE)
features <- read.table(file.path(pathdata,"features.txt"),header=FALSE)
activityLabels <- read.table(file.path(pathdata,"activity_lablels.txt"),header=FALSE)

#label the dataset with descriptive variable names. The right column names are marked now.
colnames(xtrain)=features[,2]
colnames(ytrain)="activity"
colnames(subject_train)="subject"
colnames(xtest)= features[,2]
colnames(ytest)="activity"
colnames(subject_test)="subject"
colnames(activityLabels) <- c('activity','activitytype')

#Merge the test and train data:
mrg_train <- cbind(ytrain,subject_train,xtrain)
mrg_test <- cbind(ytest,subject_test,xtest)
merged_data <- rbind(mrg_train,mrg_test)

#so the two datasets are merged in merged_data now.

#To extract only the measurements on the mean and standard deviation for each measurement
#using grep

colNames <- colnames(merged_data)
mean_std <- (grepl("activity",colNames)|grepl("subject",colNames)|grepl("mean...",colNames)|grepl("std...",colNames))

#subset of data
subset_mean_std <- merged_data[,mean_std==TRUE]

#Uses descriptive activity names to name the activites in the dataset
subset_activity <- merge(subset_mean_std, activityLabels, by="activity", all.x=TRUE)

#Create a new tidy dataset with the average of each variable for each activity and each subject

tidy_set <- aggregate(. ~subject+activity, subset_activity,mean)
tidy_set <- tidy_set[order(tidy_set$subject, tidy_set$activity),]
write.table(tidy_set, "./data/tidy_set.txt", row.name=FALSE)