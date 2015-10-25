Getting and Cleaning Data: Course Project

Subject: Human Activity Recognition Using Smartphones Dataset
date: 10/24/2015
output: tidy_set.txt
  

Project Description

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. 
The goal is to prepare tidy data that can be used for later analysis.   


Collection of the raw data
The data has been made available by UCI's Machine Learning Repository.
Url: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The data comes from the experiment done by: Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz.

Creating the tidy datafile

The tidy data file “tidy_set.txt” is the result of running the R script “run_analysis”.
This script does the following:

Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement. 
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names. 
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Description of the variables in the tidy_set.txt file


The variables in the tidy set are:

subject
activity
tBodyAcc.mean
tBodyAcc.mean
tBodyAcc.mean
tBodyAcc.std
tBodyAcc.std
tBodyAcc.std
tGravityAcc.mean
tGravityAcc.mean
tGravityAcc.mean
tGravityAcc.std
tGravityAcc.std
tGravityAcc.std
tBodyAccJerk.mean
tBodyAccJerk.mean
tBodyAccJerk.mean
tBodyAccJerk.std
tBodyAccJerk.std
tBodyAccJerk.std
tBodyGyro.mean
tBodyGyro.mean
tBodyGyro.mean
tBodyGyro.std
tBodyGyro.std
tBodyGyro.std
tBodyGyroJerk.mean
tBodyGyroJerk.mean
tBodyGyroJerk.mean
tBodyGyroJerk.std
tBodyGyroJerk.std
tBodyGyroJerk.std
tBodyAccMag.mean
tBodyAccMag.std
tGravityAccMag.mean
tGravityAccMag.std
tBodyAccJerkMag.mean
tBodyAccJerkMag.std
tBodyGyroMag.mean
tBodyGyroMag.std
tBodyGyroJerkMag.mean
tBodyGyroJerkMag.std
fBodyAcc.mean
fBodyAcc.mean
fBodyAcc.mean
fBodyAcc.std
fBodyAcc.std
fBodyAcc.std
fBodyAcc.meanFreq
fBodyAcc.meanFreq
fBodyAcc.meanFreq
fBodyAccJerk.mean
fBodyAccJerk.mean
fBodyAccJerk.mean
fBodyAccJerk.std
fBodyAccJerk.std
fBodyAccJerk.std
fBodyAccJerk.meanFreq
fBodyAccJerk.meanFreq
fBodyAccJerk.meanFreq
fBodyGyro.mean
fBodyGyro.mean
fBodyGyro.mean
fBodyGyro.std
fBodyGyro.std
fBodyGyro.std
fBodyGyro.meanFreq
fBodyGyro.meanFreq
fBodyGyro.meanFreq
fBodyAccMag.mean
fBodyAccMag.std
fBodyAccMag.meanFreq
fBodyBodyAccJerkMag.mean
fBodyBodyAccJerkMag.std
fBodyBodyAccJerkMag.meanFreq
fBodyBodyGyroMag.mean
fBodyBodyGyroMag.std
fBodyBodyGyroMag.meanFreq
fBodyBodyGyroJerkMag.mean
fBodyBodyGyroJerkMag.std
fBodyBodyGyroJerkMag.meanFreq

The subject variable is about the persons involved in the experiment.
The activity variable is about the activities excecuted in the experiment.

The other variables are either frequency measurements (starting with f) or velocity measurements (starting with t).

The values are all averages.
