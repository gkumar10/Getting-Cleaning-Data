#Description of variables

Xtest <- holds Test data set in a data.table vector
Xtrain <- holds Train data set in a data.table vector
features <- holds features data set in a data.table vector
activity_labels <- holds activity labels data set in a data.table vector
train_labels <- holds labels for Train data set in a data.table vector
test_labels <- holds labels for Test data set in a data.table vector
test_subject <- holds subject data for Test data set in a data.table vector
train_subject <- holds subject data for Train data set in a data.table vector

master_data <- holds merged Test and Train data set in a data.table vector

extract_mean <- grep("mean", names(master_data))
extract_std <- grep("std", names(master_data))

m <- melt(master_data, id = 1:3, measure.vars = 4:564)
tidy_data <- dcast(m, subject + "activity-Label" ~ variable, mean)

write.table(tidy_data, "~/tidy_data.txt", row.names=FALSE)
