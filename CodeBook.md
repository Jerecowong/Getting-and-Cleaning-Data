CodeBook for the dataset average_activity_subject.txt
======================================================

Data Source
------------
This dataset is derived from the "Human Activity Recognition Using Smartphones Data Set" which was originally collected from the accelerometers from the Samsung Galaxy S smartphone.  A full description is available at the site where the data was obtained : http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Feature Selection and Transformation
-------------------------------------

*    Merges the training and the test sets to create one data set.
*    Extracts only the measurements on the mean and standard deviation for each measurement. 
*    Uses descriptive activity names to name the activities in the data set
*    Appropriately labels the data set with descriptive variable names. 
*    Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

Variable Description
-----------------------
* '-xyz' is used to denote 3-axial signals in the X, Y and Z directions.
* '-mean' is used to denote a mean value
* '-std' is ised to denote a standard deviation value
* Group.1                 : Activity
* Group.2                 : Subject

 [1] "Group.1"                   "Group.2"                   "tbodyacc-mean-x"          
 [4] "tbodyacc-mean-y"           "tbodyacc-mean-z"           "tbodyacc-std-x"           
 [7] "tbodyacc-std-y"            "tbodyacc-std-z"            "tgravityacc-mean-x"       
[10] "tgravityacc-mean-y"        "tgravityacc-mean-z"        "tgravityacc-std-x"        
[13] "tgravityacc-std-y"         "tgravityacc-std-z"         "tbodyaccjerk-mean-x"      
[16] "tbodyaccjerk-mean-y"       "tbodyaccjerk-mean-z"       "tbodyaccjerk-std-x"       
[19] "tbodyaccjerk-std-y"        "tbodyaccjerk-std-z"        "tbodygyro-mean-x"         
[22] "tbodygyro-mean-y"          "tbodygyro-mean-z"          "tbodygyro-std-x"          
[25] "tbodygyro-std-y"           "tbodygyro-std-z"           "tbodygyrojerk-mean-x"     
[28] "tbodygyrojerk-mean-y"      "tbodygyrojerk-mean-z"      "tbodygyrojerk-std-x"      
[31] "tbodygyrojerk-std-y"       "tbodygyrojerk-std-z"       "tbodyaccmag-mean"         
[34] "tbodyaccmag-std"           "tgravityaccmag-mean"       "tgravityaccmag-std"       
[37] "tbodyaccjerkmag-mean"      "tbodyaccjerkmag-std"       "tbodygyromag-mean"        
[40] "tbodygyromag-std"          "tbodygyrojerkmag-mean"     "tbodygyrojerkmag-std"     
[43] "fbodyacc-mean-x"           "fbodyacc-mean-y"           "fbodyacc-mean-z"          
[46] "fbodyacc-std-x"            "fbodyacc-std-y"            "fbodyacc-std-z"           
[49] "fbodyaccjerk-mean-x"       "fbodyaccjerk-mean-y"       "fbodyaccjerk-mean-z"      
[52] "fbodyaccjerk-std-x"        "fbodyaccjerk-std-y"        "fbodyaccjerk-std-z"       
[55] "fbodygyro-mean-x"          "fbodygyro-mean-y"          "fbodygyro-mean-z"         
[58] "fbodygyro-std-x"           "fbodygyro-std-y"           "fbodygyro-std-z"          
[61] "fbodyaccmag-mean"          "fbodyaccmag-std"           "fbodybodyaccjerkmag-mean" 
[64] "fbodybodyaccjerkmag-std"   "fbodybodygyromag-mean"     "fbodybodygyromag-std"     
[67] "fbodybodygyrojerkmag-mean" "fbodybodygyrojerkmag-std" 
 
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

The body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

A Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

My selection of features are only the measurements on the mean and standard deviation for each measurement." To be complete, I included all variables having to do with mean or standard deviation.

The last thing I did was to create an  independent tidy data set with the average of each variable for each activity and each subject.
 
