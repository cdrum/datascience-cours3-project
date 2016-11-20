The codebook still has the specific description of the tidy data file contents (and you mention that it exists and it’s role in the ReadMe)

# Result_Summary_Data.txt Data Dictionary

The data set is structured in 4 columns:

Subject
 Index value representing the subject (human) who participated in the study and generated the study results.
 There are 30 different subjects, each represented by an integer from 1 to 30.

Activity
 The different activities the subjects were asked to do during the testing. There are 6 possibilities, named explicitely in the data set:
 WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

Measurement
 There are 86 different Mean and Standard Deviation measurements recorded for each Subject/Activity pair. I.e. Subject 1 (John), as he was WALKING, 86 different measurementns were taken. Each row represents a value for one of these distinct measurement. The possible measurement are:
    tBodyAcc.Mean-X
    tBodyAcc.Mean-Y
    tBodyAcc.Mean-Z
    tBodyAcc.StdDev-X
    tBodyAcc.StdDev-Y
    tBodyAcc.StdDev-Z
    tGravityAcc.Mean-X
    tGravityAcc.Mean-Y
    tGravityAcc.Mean-Z
    tGravityAcc.StdDev-X
    tGravityAcc.StdDev-Y
    tGravityAcc.StdDev-Z
    tBodyAccJerk.Mean-X
    tBodyAccJerk.Mean-Y
    tBodyAccJerk.Mean-Z
    tBodyAccJerk.StdDev-X
    tBodyAccJerk.StdDev-Y
    tBodyAccJerk.StdDev-Z
    tBodyGyro.Mean-X
    tBodyGyro.Mean-Y
    tBodyGyro.Mean-Z
    tBodyGyro.StdDev-X
    tBodyGyro.StdDev-Y
    tBodyGyro.StdDev-Z
    tBodyGyroJerk.Mean-X
    tBodyGyroJerk.Mean-Y
    tBodyGyroJerk.Mean-Z
    tBodyGyroJerk.StdDev-X
    tBodyGyroJerk.StdDev-Y
    tBodyGyroJerk.StdDev-Z
    tBodyAccMag.Mean
    tBodyAccMag.StdDev
    tGravityAccMag.Mean
    tGravityAccMag.StdDev
    tBodyAccJerkMag.Mean
    tBodyAccJerkMag.StdDev
    tBodyGyroMag.Mean
    tBodyGyroMag.StdDev
    tBodyGyroJerkMag.Mean
    tBodyGyroJerkMag.StdDev
    fBodyAcc.Mean-X
    fBodyAcc.Mean-Y
    fBodyAcc.Mean-Z
    fBodyAcc.StdDev-X
    fBodyAcc.StdDev-Y
    fBodyAcc.StdDev-Z
    fBodyAcc.MeanFreq-X
    fBodyAcc.MeanFreq-Y
    fBodyAcc.MeanFreq-Z
    fBodyAccJerk.Mean-X
    fBodyAccJerk.Mean-Y
    fBodyAccJerk.Mean-Z
    fBodyAccJerk.StdDev-X
    fBodyAccJerk.StdDev-Y
    fBodyAccJerk.StdDev-Z
    fBodyAccJerk.MeanFreq-X
    fBodyAccJerk.MeanFreq-Y
    fBodyAccJerk.MeanFreq-Z
    fBodyGyro.Mean-X
    fBodyGyro.Mean-Y
    fBodyGyro.Mean-Z
    fBodyGyro.StdDev-X
    fBodyGyro.StdDev-Y
    fBodyGyro.StdDev-Z
    fBodyGyro.MeanFreq-X
    fBodyGyro.MeanFreq-Y
    fBodyGyro.MeanFreq-Z
    fBodyAccMag.Mean
    fBodyAccMag.StdDev
    fBodyAccMag.MeanFreq
    fBodyBodyAccJerkMag.Mean
    fBodyBodyAccJerkMag.StdDev
    fBodyBodyAccJerkMag.MeanFreq
    fBodyBodyGyroMag.Mean
    fBodyBodyGyroMag.StdDev
    fBodyBodyGyroMag.MeanFreq
    fBodyBodyGyroJerkMag.Mean
    fBodyBodyGyroJerkMag.StdDev
    fBodyBodyGyroJerkMag.MeanFreq
    angle.tBodyAccMean.gravity
    angle.tBodyAccJerkMeangravityMean
    angle.tBodyGyroMean.gravityMean
    angle.tBodyGyroJerkMean.gravityMean
    angle.X.gravityMean
    angle.Y.gravityMean
    angle.Z.gravityMean

Average_Measure
 Each subject was asked to conduct several iterations of each activity test. E.g., Subject 1 (John) was asked to conduct his WALKING activity, and multiple distinct recordings of each of the 86 measurements were recorded. This field represents the average of all values for the respective Measurement the SUbject did while doing his/her activity (WALKING).