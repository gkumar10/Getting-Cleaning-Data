#Description of variables<br>

Xtest <- holds Test data set in a data.frame vector<br>
Xtrain <- holds Train data set in a data.frame vector<br>
features <- holds features data set in a data.frame vector<br>
activity_labels <- holds activity labels data set in a data.frame vector<br>
train_labels <- holds labels for Train data set in a data.frame vector<br>
test_labels <- holds labels for Test data set in a data.frame vector<br>
test_subject <- holds subject data for Test data set in a data.frame vector<br>
train_subject <- holds subject data for Train data set in a data.frame vector<br>

master_data <- holds merged Test and Train data set in a data.frame vector<br>

extract_mean <- holds mean for each measurement in an integer vector<br>
extract_std <- holds standard deviation for each measurement in an integer vector<br>

m <- holds melted data from master_data with  first 3 rows (subject, activity id and label) as ids and all  other rows as measure variables in a data.frame vector<br>

tidy_data <- holds average of each variable for each activity and each subject in a data.frame vector<br>

