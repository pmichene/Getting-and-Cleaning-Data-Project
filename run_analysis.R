# Coursera
# Getting and Cleaning Data
# Course Project

# You should create one R script called run_analysis.R that does the following.

# Merges the training and the test sets to create one data set.
# Extracts only the measurements on the mean and standard deviation for each measurement.
# Uses descriptive activity names to name the activities in the data set
# Appropriately labels the data set with descriptive variable names.
# From the data set in step 4, creates a second, independent tidy data set with the average 
# of each variable for each activity and each subject.

# Get the dplyr package

library(dplyr)


# Obtain data set if it is not in current working directory

# Downloaded .zip file will be called PhoneData.zip
DataFile <- "PhoneData.zip"

if (!file.exists(DataFile)) {
    
    download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", DataFile, method = "curl")
    
}

# unzip zip file if it doesn't already exist
# New folder was previously named "USI HAR Dataset"
if (!file.exists("USI HAR Dataset")) {
    unzip(DataFile)
}

# Read the data for both training set and test set
# Reads from current working directory, so full file path is not needed.

Subjects_Train <- read.table("UCI HAR Dataset/train/subject_train.txt")
Values_Train <- read.table("UCI HAR Dataset/train/X_train.txt")
Labels_Train <- read.table("UCI HAR Dataset/train/Y_train.txt")

Subjects_Test <- read.table("UCI HAR Dataset/test/subject_test.txt")
Values_Test <- read.table("UCI HAR Dataset/test/X_test.txt")
Labels_Test <- read.table("UCI HAR Dataset/test/Y_test.txt")

# read features and activity levels.  as.is = TRUE prevents factor conversion
features <- read.table("UCI HAR Dataset/features.txt", as.is = TRUE)
activities <- read.table("UCI HAR Dataset/activity_labels.txt", as.is = TRUE)

# Merge to one data table
# cbind joins data based on columns
Train_data <- cbind(Subjects_Train, Labels_Train, Values_Train)
Test_data <- cbind(Subjects_Test, Labels_Test, Values_Test)
# rbind joins data based on rows
Sum_Data <- rbind(Train_data, Test_data)


# assign column names
colnames(Sum_Data) <- c("subject", "activity", features[, 2]) # Use the second column from the features table.


# keep columns that contain the keywords ("subject", "activity", "mean()", "std") using grepl
# replace Sum_Data table with currated version
# Since "mean()" and "meanFreq()" exist in the variable names, must specificy that we are keeping mean() and ignoring meanFreq()
Sum_Data <- Sum_Data[,grepl("subject|activity|mean\\(\\)|std", colnames(Sum_Data))]


# replace activity values with named factor levels based on the activity_labels.txt file
# Numbers 1-6 in the activity column become "Standing", "Walking", etc
Sum_Data$activity <- factor(Sum_Data$activity, levels = activities[, 1], labels = activities[, 2])


# Clean up the variable names in the columns

# get column names
Sum_Data_columns <- colnames(Sum_Data)

# remove special characters "(", ")", "-". 
# "(" and ")" are metacharacters so they need to be "broken" of of that state with a preceding "//".
Sum_Data_columns <- gsub("[\\(\\)-]", "", Sum_Data_columns)

# expand abbreviations based off of features_info.txt file
Sum_Data_columns <- gsub("^f", "Frequency", Sum_Data_columns)
Sum_Data_columns <- gsub("^t", "Time", Sum_Data_columns)
Sum_Data_columns <- gsub("Acc", "Accelerometer", Sum_Data_columns)
Sum_Data_columns <- gsub("Gyro", "Gyroscope", Sum_Data_columns)
Sum_Data_columns <- gsub("Mag", "Magnitude", Sum_Data_columns)
Sum_Data_columns <- gsub("mean", "Mean", Sum_Data_columns)
Sum_Data_columns <- gsub("std", "StandardDeviation", Sum_Data_columns)
Sum_Data_columns <- gsub("BodyBody", "Body", Sum_Data_columns) # this is a typo to fix


# use new labels as column names
colnames(Sum_Data) <- Sum_Data_columns



# Create a text file with the average of each variable for each activity and each subject


# group by subject and activity and summarise using mean
Sum_Data_mean <- Sum_Data %>% 
    group_by(subject, activity) %>%
    summarise_all(funs(mean))

# output to file "tidy_data.txt"
write.table(Sum_Data_mean, "tidy_data.txt", row.names = TRUE, quote = FALSE)
