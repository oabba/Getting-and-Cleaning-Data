a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md

### Original Dataset and its measurements

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

### New dataset and its variables
In our new dataset, we utilise only the set of 
variabless that were obtained by applying mean() and standard deviation
std() functions over the measurements. 
Mean() function is applied over each variable in a function to yield
variables in the new dataset. 


The complete list of variables in new dataset is as follows.


subjectID
TargetActivity
mean(tBodyAcc-mean()-X)
mean(tBodyAcc-mean()-Y)
mean(tBodyAcc-mean()-Z)
mean(tBodyAcc-std()-X)
mean(tBodyAcc-std()-Y)
mean(tBodyAcc-std()-Z)
mean(tGravityAcc-mean()-X)
mean(tGravityAcc-mean()-Y)
mean(tGravityAcc-mean()-Z)
mean(tGravityAcc-std()-X)
mean(tGravityAcc-std()-Y)
mean(tGravityAcc-std()-Z)
mean(tBodyAccJerk-mean()-X)
mean(tBodyAccJerk-mean()-Y)
mean(tBodyAccJerk-mean()-Z)
mean(tBodyAccJerk-std()-X)
mean(tBodyAccJerk-std()-Y)
mean(tBodyAccJerk-std()-Z)
mean(tBodyGyro-mean()-X)
mean(tBodyGyro-mean()-Y)
mean(tBodyGyro-mean()-Z)
mean(tBodyGyro-std()-X)
mean(tBodyGyro-std()-Y)
mean(tBodyGyro-std()-Z)
mean(tBodyGyroJerk-mean()-X)
mean(tBodyGyroJerk-mean()-Y)
mean(tBodyGyroJerk-mean()-Z)
mean(tBodyGyroJerk-std()-X)
mean(tBodyGyroJerk-std()-Y)
mean(tBodyGyroJerk-std()-Z)
mean(tBodyAccMag-mean())
mean(tBodyAccMag-std())
mean(tGravityAccMag-mean())
mean(tGravityAccMag-std())
mean(tBodyAccJerkMag-mean())
mean(tBodyAccJerkMag-std())
mean(tBodyGyroMag-mean())
mean(tBodyGyroMag-std())
mean(tBodyGyroJerkMag-mean())
mean(tBodyGyroJerkMag-std())
mean(fBodyAcc-mean()-X)
mean(fBodyAcc-mean()-Y)
mean(fBodyAcc-mean()-Z)
mean(fBodyAcc-std()-X)
mean(fBodyAcc-std()-Y)
mean(fBodyAcc-std()-Z)
mean(fBodyAccJerk-mean()-X)
mean(fBodyAccJerk-mean()-Y)
mean(fBodyAccJerk-mean()-Z)
mean(fBodyAccJerk-std()-X)
mean(fBodyAccJerk-std()-Y)
mean(fBodyAccJerk-std()-Z)
mean(fBodyGyro-mean()-X)
mean(fBodyGyro-mean()-Y)
mean(fBodyGyro-mean()-Z)
mean(fBodyGyro-std()-X)
mean(fBodyGyro-std()-Y)
mean(fBodyGyro-std()-Z)
mean(fBodyAccMag-mean())
mean(fBodyAccMag-std())
mean(fBodyBodyAccJerkMag-mean())
mean(fBodyBodyAccJerkMag-std())
mean(fBodyBodyGyroMag-mean())
mean(fBodyBodyGyroMag-std())
mean(fBodyBodyGyroJerkMag-mean())
mean(fBodyBodyGyroJerkMag-std())




