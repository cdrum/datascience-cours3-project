######
####
#### Getting and Cleaning Data Course Project
#### 
#### Chris Drumgoole / November 2016
#### https://github.com/cdrum/datascience-course3-project
####
######

##
## Libraries
##
library(reshape2)
library(dplyr)

##
## Costants
##
RESETDATA <- FALSE # Set to TRUE if you want to re-download and unzip data

##
## Download Data Set
## Download dataset in zip file, unzip and store in ./data folder
##

if(!file.exists("./data")){dir.create("./data")}

if(RESETDATA) { # Only execute the following if we want to reset out data
    fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download.file(fileUrl,destfile="./data/Dataset.zip",method="curl")
    unzip("./data/Dataset.zip", exdir="./data", overwrite = TRUE, junkpaths = TRUE) # I use junkpaths as I want all files to be in data
}

##
## Read data
##

# Result Values - Using fread from data.table here since it's a lot of data and read.table would be quite slow
test.values             <- tbl_df(fread("./data/X_test.txt"))
train.values            <- tbl_df(fread("./data/X_train.txt"))

# Class Activies - Setting the column name at this stage since it's a single column of data
test.activities          <- read.table("./data/y_test.txt", col.names = c("Activity"))
train.activities        <- read.table("./data/y_train.txt", col.names = c("Activity"))

# Subjects - Setting the column name at this stage since it's a single column of data
test.subjects           <- read.table("./data/subject_test.txt", col.names = c("Subject"))
train.subjects          <- read.table("./data/subject_train.txt", col.names = c("Subject"))

# Measurement Labels (setting colnames for ease of use later)
measurement.labels  <- read.table("./data/features.txt", col.names = c("Index", "Measurement"))

# Activity Lables (setting colnames for ease of use later)
activity.labels <- read.table("./data/activity_labels.txt", col.names = c("Index", "Activity.Name"))

## 
## Add Column Names to Data Sets, taken from the measurement.labels (features.txt) data set
## 
colnames(test.values) <- make.names(measurement.labels$Measurement)
colnames(train.values) <- make.names(measurement.labels$Measurement)

##
## Combine activities col to both data sets
##

test.data <- cbind(test.subjects, test.activities, test.values)
train.data <- cbind(train.subjects, train.activities, train.values)

##
## Core Functionality as per Assignment
##

## 1. Merge the training and the test sets to create one data set.
# We can do a simple rbind here since we've done the heavy lifting earlier of ading Subjects, Activities and colnames
# test.data and train.data are identical structurly at this stage

complete.data <- rbind(test.data, train.data)

## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# Since we also want cols for Activity and Subject, we include this in our expression for matching
# Need to make sure we ignore the case since some are caps and some are all lower caps

# Here, we're making a new DF to keep it separate - calling it .focused since we're focusing only on the cols we want. All 88 of them.
complete.data.focused <- complete.data[,grepl("Activity|Subject|*mean*|*std*", names(complete.data), ignore.case = TRUE)]

## 3. Uses descriptive activity names to name the activities in the data set
# We have the activity names in the activity.lables data frame

# What we can do is subset the activity.lables data frame Index col with the Activity col from complete.data.focused
# then apply the Activity.Name value back to the Activity col in complete.data.focused
complete.data.focused$Activity <- activity.labels[complete.data.focused$Activity,]$Activity.Name

## 4. Appropriately labels the data set with descriptive variable names.
# We need to do some clean up for the measurement names
names(complete.data.focused) <- gsub("mean", "Mean", names(complete.data.focused))
names(complete.data.focused) <- gsub("std", "StdDev", names(complete.data.focused))
names(complete.data.focused) <- gsub("[.][.][.]", "-", names(complete.data.focused)) # Replace the elipsis ... with a hyphen
names(complete.data.focused) <- gsub("[.][.]", "", names(complete.data.focused)) # Remove the .. at end of some variables.
names(complete.data.focused) <- gsub("[.]$", "", names(complete.data.focused)) # Remove the . at end of some variables.

## 5. From the data set in step 4, creates a second, independent tidy data set 
##    with the average of each variable for each activity and each subject.

# For Tidy, we need to ensure the following:
#  a. Each Variable forms a column
#  b. Each observation forms a row
#  c. Each table stores data about one kind of observation

# In this case, in the context of the question, the variable we want to have in a col is the "average"

# What we will want is a single value 
# Get the averages in the col
Summary.Data <- group_by(complete.data.focused, Subject, Activity) %>% summarize_each(funs(mean))

# Now transpose for each emasurement to fall in a row, so all we show is the average value for the combo
# Subject - Activity - Measurement
# We're going to use melt from reshape2
Summary.Data <- melt(Summary.Data, id=c("Subject", "Activity"), variable.name = "Measurement", value.name = "Average_Measure")
Summary.Data <- arrange(Summary.Data, Subject, Activity, Measurement)

# Now we can write this result to a new file!
write.table(Summary.Data, file="./Result_Summary_Data.txt", row.name=FALSE)