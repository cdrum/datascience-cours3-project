# Result_Summary_Data.txt Data Dictionary

The data set is structured in 4 columns:

## 1. Subject
 Index value representing the subject (human) who participated in the study and generated the study results.
 There are 30 different subjects, each represented by an integer from 1 to 30.

## 2. Activity
 The different activities the subjects were asked to do during the testing. There are 6 possibilities, named explicitely in the data set:
 WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

## 3. Measurement
 The original expirments collected 561-feature vectors with time and frequency domain variables. For purposes of this data analysis, we were particularly interested in only Mean and Standard Deviation feature vectors (measurements). There are 86 different Mean and Standard Deviation measurements recorded for each Subject/Activity pair. I.e. Subject 1 (John), as he was WALKING, 86 different measurementns were taken. Each row represents a value for one of these distinct measurement. The possible measurement are:
 
* tBodyAcc.Mean-X
* tBodyAcc.Mean-Y
* tBodyAcc.Mean-Z
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
    
### From thr original experiment: 
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are _(and a [*] is appended at the end for the values we're focusing on for this analysis)_: 

mean(): Mean value [*]
std(): Standard deviation [*]
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency [*]
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean [*]
tBodyAccMean [*]
tBodyAccJerkMean [*]
tBodyGyroMean [*]
tBodyGyroJerkMean [*]

## 4. Average_Measure
 Each subject was asked to conduct several iterations of each activity test. E.g., Subject 1 (John) was asked to conduct his WALKING activity, and multiple distinct recordings of each of the 86 measurements were recorded. This field represents the average of all values for the respective Measurement the SUbject did while doing his/her activity (WALKING).
 The original data set provided values of the Features normalized and bounded within [-1,1]. Since this new data set is simply means of these same values, the values in the data set are also normalized and bounded within [-1,1].