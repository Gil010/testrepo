## Getting and Cleaning Data Course Project
## The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. 
## The goal is to prepare tidy data that can be used for later analysis.

## This R script prepares the tidy data set.

## Intruction
## Run the "run_analysis script from the working directory.
## More information about the script can be found in the README.md and Codebook.md files.


run_analysis <- function() {
        ## loads the feature.txt and activity_labels.txt
        coln <- read.table("features.txt")
        activity_labels <- read.table("activity_labels.txt")
        
        ## separates the features containing "mean" and "std".
        meanstd <- grep(".*(mean|std).*", coln$V2)
        
        ## loads and builds the test data set containing only the measurements 
        ## on the mean and standard deviation, giving the columns and activities 
        ## descriptive names.
        xtest <- read.table("./test/X_test.txt", col.names = coln$V2)
        xtest <-xtest[, meanstd]
        ytest <- read.table("./test/y_test.txt", col.names = c("activity"))
        ytest$activity <- activity_labels$V2[ytest$activity]
        subtest <- read.table("./test/subject_test.txt", col.names = c("subject"))
        testdata <- cbind(subtest, ytest, xtest)
        
        ## loads and builds the train data set containing only the measurements 
        ## on the mean and standard deviation giving the columns and activities 
        ## descriptive names.
        xtrain <- read.table("./train/X_train.txt", col.names = coln$V2)
        xtrain <-xtrain[, meanstd]
        ytrain <- read.table("./train/y_train.txt", col.names = c("activity"))
        ytrain$activity <- activity_labels$V2[ytrain$activity]
        subtrain <- read.table("./train/subject_train.txt", col.names = c("subject"))
        traindata <- cbind(subtrain, ytrain, xtrain)
        
        ## Merges the training and the test sets to create one data set.
        data <- rbind(testdata, traindata)
        
        ## Creates tidy data set with the average of each variable for each activity and each subject.
        list = list(subject = data$subject, activity = data$activity)
        avgSubjectActivity <- aggregate(data[,3:ncol(data)], by = list, mean)
        
        ## Writes the tidy data set to the "tidy_set.txt" file.
        write.table(avgSubjectActivity, file = "tidy_set.txt", row.names = FALSE)
        
}