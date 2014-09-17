Getting-Cleaning-Data
=====================

Course Project for Coursera Getting and Cleaning Data subject

The purpose of this project is to demonstrate ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 

The script works by executing the following steps:
1. Load required libraries
2. Read all data files into R data.tables.
3. Uses data from features.txt and activity-labels.txt data sets to add descriptive column labels to Test and Train data sets
4. Merge subject id and activity columns with respective Test or Train data sets
5. Merge rows from Test and Train data sets to create a Master data set.
6. Extract mean and standard deviation for each measurement. Print a few initial rows of mean and standard deviation.
7. Create a second, independent tidy data set with the average of each variable for each activity and each subject
8. Write tidy data to a file

