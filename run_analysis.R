# Load the libraries and set the local working envirnment where data is located

setwd("~/Learning/03-GettingAndCleaningData/project/UCI HAR Dataset")
library(data.table)
library(dplyr)

# Following steps are done as per the sequence mentioned in the assignment
# Step 1: Merges the training and the test sets to create one data set.

# Load Training Data
xTrain <- read.table("train/X_train.txt")
yTrain <- read.table("train/y_train.txt")
subjectTrain <- read.table("train/subject_train.txt")

# Load Testing Data
xTest <- read.table("test/X_test.txt")
yTest <- read.table("test/y_test.txt")
subjectTest <- read.table("test/subject_test.txt")

# Create dataset "X"
xDt <- rbind(xTrain, xTest)

# Create dataset "Y"
yDt <- rbind(yTrain, yTest)

# Create dataset "Subject"
subjectDt <- rbind(subjectTrain, subjectTest)

### Remove before final commit
#print(head(xDt, 10))
#print(yDt)
#print(subjectDt)
### Remove before final commit



# Step 2: Extracts only the measurements on the mean and standard deviation for each measurement. 
features <- read.table("features.txt")

# Replace Mean and Std Dev names
features[,2] = gsub("-mean", "Mean", features[,2])
features[,2] = gsub("-std", "Std", features[,2])
features[,2] = gsub("[-()]", "", features[,2])

# Reatin features needed
colNeeded <- grep(".*Mean.*|.*Std.*", features[,2])

# subset the desired columns
xDt <- xDt[, colNeeded]

# add proper column names
names(xDt) <- features[colNeeded, 2]


# Step 3: Uses descriptive activity names to name the activities in the data set
activities <- read.table("activity_labels.txt")

# update values with correct activity names
yDt[,1] <- activities[yDt[, 1], 2]

# Update column name
names(yDt) <- "activity"


# Step 4: Appropriately labels the data set with descriptive variable names. 

# Correct name for subject data
names(subjectDt) <- "subject"

# Merge Data into singe data frame
dt <- cbind(xDt, yDt, subjectDt)


# Step 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


