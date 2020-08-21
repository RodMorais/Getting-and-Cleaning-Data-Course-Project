Getting and Cleaning Data - Course Project
==========================================

## About the data
The Human Activity Recognition Using Smartphones Dataset represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Final dataset
The final summary tidy dataset **tidy_dataset.txt** contains the average of each variable for each activity and each subject from the Human Activity Recognition Using Smartphones Data Set. 

Tasks performed:

 : Merging the training and the test sets to create one data set.

 : Extracting only the measurements on the mean and standard deviation for each measurement.

 : Apllying descriptive activity names to name the activities in the data set.

 : Appropriately labeling the data set with descriptive variable names.

 : Creating a second, independent tidy data set with the average of each variable for each activity and each subject.


## Codebook
The features selected from the original database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. A Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

| Label | Description |
|-------|-------------|
| tbodyacc-mean-x | X axis body acceleration mean on the time domain |
| tbodyacc-mean-y | Y axis body acceleration mean on the time domain |
| tbodyacc-mean-z | Z axis body acceleration mean on the time domain |
| tbodyacc-std-x | X axis body acceleration standard deviation on the time domain |
| tbodyacc-std-y | Y axis body acceleration standard deviation on the time domain |
| tbodyacc-std-z | Z axis body acceleration standard deviation on the time domain |
| tgravityacc-mean-x | X axis gravity acceleration mean on the time domain |
| tgravityacc-mean-y | Y axis gravity acceleration mean on the time domain |
| tgravityacc-mean-z | Z axis gravity acceleration mean on the time domain |
| tgravityacc-std-x | X axis gravity acceleration standard deviation on the time domain |
| tgravityacc-std-y | Y axis gravity acceleration standard deviation on the time domain |
| tgravityacc-std-z | Z axis gravity acceleration standard deviation on the time domain |
| tbodyaccjerk-mean-x | X axis body linear acceleration mean on the time domain |
| tbodyaccjerk-mean-y | Y axis body linear acceleration mean on the time domain |
| tbodyaccjerk-mean-z | Z axis body linear acceleration mean on the time domain |
| tbodyaccjerk-std-x | X axis body linear acceleration standard deviation on the time domain |
| tbodyaccjerk-std-y | Y axis body linear acceleration standard deviation on the time domain |
| tbodyaccjerk-std-z | Z axis body linear acceleration standard deviation on the time domain |
| tbodygyro-mean-x | X axis body gyroscope mean on the time domain |
| tbodygyro-mean-y | Y axis body gyroscope mean on the time domain |
| tbodygyro-mean-z | Z axis body gyroscope mean on the time domain |
| tbodygyro-std-x | X axis body gyroscope standard deviation on the time domain |
| tbodygyro-std-y | Y axis body gyroscope standard deviation on the time domain |
| tbodygyro-std-z | Z axis body gyroscope standard deviation on the time domain |
| tbodygyrojerk-mean-x | X axis body angular velocity mean on the time domain |
| tbodygyrojerk-mean-y | Y axis body angular velocity mean on the time domain |
| tbodygyrojerk-mean-z | Z axis body angular velocity mean on the time domain |
| tbodygyrojerk-std-x | X axis body angular velocity standard deviation on the time domain |
| tbodygyrojerk-std-y | Y axis body angular velocity standard deviation on the time domain |
| tbodygyrojerk-std-z | Z axis body angular velocity standard deviation on the time domain |
| tbodyaccmag-mean | body acceleration magnitude mean on the time domain |
| tbodyaccmag-std | body acceleration magnitude standard deviation on the time domain |
| tgravityaccmag-mean | gravity acceleration magnitude mean on the time domain |
| tgravityaccmag-std | gravity acceleration magnitude standard deviation on the time domain |
| tbodyaccjerkmag-mean | body linear acceleration magnitude mean on the time domain |
| tbodyaccjerkmag-std | body linear acceleration magnitude standard deviation on the time domain |
| tbodygyromag-mean | body gyroscope magnitude mean on the time domain |
| tbodygyromag-std | body gyroscope magnitude standard deviation on the time domain |
| tbodygyrojerkmag-mean | body angular velocity magnitude mean on the time domain |
| tbodygyrojerkmag-std | body angular velocity magnitude standard deviation on the time domain |
| fbodyacc-mean-x | X axis body acceleration mean on the frequency domain |
| fbodyacc-mean-y | Y axis body acceleration mean on the frequency domain |
| fbodyacc-mean-z | Z axis body acceleration mean on the frequency domain |
| fbodyacc-std-x | X axis body acceleration standard deviation on the frequency domain |
| fbodyacc-std-y | Y axis body acceleration standard deviation on the frequency domain |
| fbodyacc-std-z | Z axis body acceleration standard deviation on the frequency domain |
| fbodyacc-meanfreq-x | X axis body acceleration frequency mean on the frequency domain |
| fbodyacc-meanfreq-y | Y axis body acceleration frequency mean on the frequency domain |
| fbodyacc-meanfreq-z | Z axis body acceleration frequency mean on the frequency domain |
| fbodyaccjerk-mean-x | X axis body linear acceleration mean on the frequency domain |
| fbodyaccjerk-mean-y | Y axis body linear acceleration mean on the frequency domain |
| fbodyaccjerk-mean-z | Z axis body linear acceleration mean on the frequency domain |
| fbodyaccjerk-std-x | X axis body linear acceleration standard deviation on the frequency domain |
| fbodyaccjerk-std-y | Y axis body linear acceleration standard deviation on the frequency domain |
| fbodyaccjerk-std-z | Z axis body linear acceleration standard deviation on the frequency domain |
| fbodyaccjerk-meanfreq-x | X axis body linear acceleration frequency mean on the frequency domain |
| fbodyaccjerk-meanfreq-y | Y axis body linear acceleration frequency mean on the frequency domain |
| fbodyaccjerk-meanfreq-z | Z axis body linear acceleration frequency mean on the frequency domain |
| fbodygyro-mean-x | X axis body gyroscope mean on the frequency domain |
| fbodygyro-mean-y | Y axis body gyroscope mean on the frequency domain |
| fbodygyro-mean-z | Z axis body gyroscope mean on the frequency domain |
| fbodygyro-std-x | X axis body gyroscope standard deviation on the frequency domain |
| fbodygyro-std-y | Y axis body gyroscope standard deviation on the frequency domain |
| fbodygyro-std-z | Z axis body gyroscope standard deviation on the frequency domain |
| fbodygyro-meanfreq-x | X axis body gyroscope mean frequency on the frequency domain |
| fbodygyro-meanfreq-y | Y axis body gyroscope mean frequency on the frequency domain |
| fbodygyro-meanfreq-z | Z axis body  mean frequency on the frequency domain |
| fbodyaccmag-mean | body acceleration mean on the frequency domain |
| fbodyaccmag-std | body acceleration standard deviation on the frequency domain |
| fbodyaccmag-meanfreq | body acceleration magnitude mean frequency on the frequency domain |
| fbodyaccjerkmag-mean | body linear acceleration magnitude mean on the frequency domain |
| fbodyaccjerkmag-std | body linear acceleration magnitude standard deviation on the frequency domain |
| fbodyaccjerkmag-meanfreq | body linear acceleration magnitude mean frequency on the frequency domain |
| fbodygyromag-mean | body gyroscope magnitude mean on the frequency domain |
| fbodygyromag-std | body gyroscope magnitude standard deviation on the frequency domain |
| fbodygyromag-meanfreq | body gyroscope magnitude mean frequency on the frequency domain |
| fbodygyrojerkmag-mean | body angular velocity magnitude mean on the frequency domain |
| fbodygyrojerkmag-std | body angular velocity standard deviation magnitude mean on the frequency domain |
| fbodygyrojerkmag-meanfreq | body angular velocity magnitude mean frequency on the frequency domain |

      