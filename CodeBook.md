CodeBook
========

This is CodeBook for Getting and Cleaning data course assignment. 

Introduction
------------
The following CodeBook describes the steps taken and variables used for getting a tidy data from the provided data. The data is already downloaded and assumed to be stored in uncompressed format at a location on PC.


Steps for cleaning data
-----------------------

The script 'run_analysis.R' performs the data cleaning the steps in 5 steps. These steps are as below.
1. Step 1: Merges the training and the test sets to create one data set.
	* Data is loaded in variables. 
	* Training and Test Data is merged
2. Step 2: Extracts only the measurements on the mean and standard deviation for each measurement.
	* Features are loaded and cleaned.
	* column names are added to the data set; from the features that were loaded
3. Step 3: Uses descriptive activity names to name the activities in the data set
	* Descriptive activity names are added
4. Step 4: Appropriately labels the data set with descriptive variable names.
	* Extension of step 2 data labels are added
5. Step 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
	* Data is summarised and written to file.
	
Variables Used
--------------
`xTrain`, `yTrain`, `subjectTrain`, `xTest`, `yTest`, `subjectTest` are variable for data loaded from files.

`xDt`, `yDt`, `subjectDt` are variables that store merged data from the variable above.

`features` contains the correct names for xDt.

`activities` contains activity labels loaded from file.

`allData` is the variable for all the finally merged data.

`averagesDt' is the variable in which summarised data is stored. It is summarised by "activity" and "subject"





