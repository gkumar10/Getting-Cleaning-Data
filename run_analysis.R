#load libraries
library(reshape2)

# read all files into tables
Xtest <- read.table("~/UCI HAR Dataset/test/X_test.txt")
Xtrain <- read.table("~/UCI HAR Dataset/train/X_train.txt")
features <- read.table("~/UCI HAR Dataset/features.txt")
activity_labels <- read.table("~/UCI HAR Dataset/activity_labels.txt")
train_labels <- read.table("~/UCI HAR Dataset/train/y_train.txt")
test_labels <- read.table("~/UCI HAR Dataset/test/y_test.txt")
test_subject <- read.table("~/UCI HAR Dataset/test/subject_test.txt")
train_subject <- read.table("~/UCI HAR Dataset/train/subject_train.txt")

#attach descriptive colummn labels to Xtrain and Xtest data set
names(Xtest) <- features$V2
names(Xtrain) <- features$V2

#create a new column for activity labels matched to activity ids. course project objective #3
train_labels[,2] <- activity_labels$V2[train_labels[,1]]
test_labels[,2] <- activity_labels$V2[test_labels[,1]]

#update descriptive column labels. course project objective #4
names(test_labels) <- c("activity-ID", "activity-Label")
names(train_labels) <- c("activity-ID", "activity-Label")
names(test_subject) <- "subject"
names(train_subject) <- "subject"

#merge columns from subject, labels table with respective data table
test_data <- cbind(test_subject, test_labels, Xtest)
train_data <- cbind(train_subject, train_labels, Xtrain)

#merge rows of test and train data sets. course project objective #1
master_data <- rbind(test_data, train_data)

#extract mean and standard deviation for each measurement. course project objective #2
extract_mean <- grep("mean", names(master_data))
extract_std <- grep("std", names(master_data))
head(master_data[,extract_mean])
head(master_data[,extract_std])

#create a second, independent tidy data set with the average of each variable for each activity and each subject. course project objective #5
m <- melt(master_data, id = 1:3, measure.vars = 4:564)
tidy_data <- dcast(m, subject + "activity-Label" ~ variable, mean)

#write tidy_data to file
write.table(tidy_data, "~/tidy_data.txt", row.names=FALSE)
