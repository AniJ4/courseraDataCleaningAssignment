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
print(head(xDt, 10))
#print(yDt)
#print(subjectDt)
### Remove before final commit



# Step 2: Extracts only the measurements on the mean and standard deviation for each measurement. 


# Step 3: Uses descriptive activity names to name the activities in the data set


# Step 4: Appropriately labels the data set with descriptive variable names. 


# Step 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


