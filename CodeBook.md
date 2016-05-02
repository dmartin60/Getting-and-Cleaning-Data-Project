# Code Book 

##Source Data

A full description of the data used in this project can be found at The UCI Machine Learning Repository
The source data for this project can be found here.
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Data Set Information
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Once downloaded, and unziped a directory called UCI HAR Dataset contains the following files.

- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name WALKING...LAYING.
- 'train/subject_train.txt' : Numeric ids of the subject who conducted the activity.
- 'train/X_train.txt': Training measurement set.
- 'train/y_train.txt': Training labels.
- 'test/subject_test.txt': Numeric ids of the subjects who conducted the activity.
- 'test/X_test.txt': Test measurement set.
- 'test/y_test.txt': Test labels.

##Acquiring and cleansing this data for analysis of mean and standard deviation measurements

The run_analysis.R scripts handles all tasks required to create one tidy data set from the source data above.

- Download the getdata-projectfiles-UCI HAR.zip file from the following site: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
- Unzip the sample in a sample directory     
- Merge the training and the test sets to create one data set.
- Extract only the mean and standard deviation measurements for further analysis. 
- Use the descriptive activity names to name the activities in the data set
- Appropriately label the data set with descriptive activity names. 
- Creates a tidy data set with the average of each variable for each activity and each subject. 


This code book describes the data fields in tidy.txt.

## Variable descriptions in the tidyData.txt file
- subjectid : A numeric identifyer of the subject performing the test [ 1-30]
- activitytype : Description of the activity the subject performed [WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING,LYING
- timeBodyAccelerometerMeanX : Mean value for the X direction axial signal of the Time Body Accelerometer meausrements for this subject and activity
- timeBodyAccelerometerMeanY : Mean value for the Y direction axial signal of the Time Body Accelerometer meausrements for this subject and activity
- timeBodyAccelerometerMeanZ : Mean value for the Z direction axial signal of the Time Body Accelerometer meausrements for this subject and activity
- timeBodyAccelerometerStdDevX : Standard Deviation for the X direction axial signal of the Time Body Accelerometer meausrements for this subject and activity
- timeBodyAccelerometerStdDevY : Standard Deviation for the Y direction axial signal of the Time Body Accelerometer meausrements for this subject and activity
- timeBodyAccelerometerStdDevZ : Standard Deviation for the Z direction axial signal of the Time Body Accelerometer meausrements for this subject and activity
- timeGravityAccelerometerMeanX : Mean value for the X direction axial signal of the TimeGravity Accelerometer meausrements for this subject and activity
- timeGravityAccelerometerMeanY : Mean value for the Y direction axial signal of the TimeGravity Accelerometer meausrements for this subject and activity
- timeGravityAccelerometerMeanZ : Mean value for the Z direction axial signal of the TimeGravity Accelerometer meausrements for this subject and activity
- timeGravityAccelerometerStdDevX : Standard Deviation for the X direction axial signal of the TimeGravity Accelerometer meausrements for this subject and activity
- timeGravityAccelerometerStdDevY : Standard Deviation for the Y direction axial signal of the TimeGravity Accelerometer meausrements for this subject and activity
- timeGravityAccelerometerStdDevZ : Standard Deviation for the Z direction axial signal of the TimeGravity Accelerometer meausrements for this subject and activity
- timeBodyAccelerometerJerkMeanX : Mean value for the X direction axial signal of the Time Body Accelerometer Jerk meausrements for this subject and activity
- timeBodyAccelerometerJerkMeanY : Mean value for the Y direction axial signal of the Time Body Accelerometer Jerk meausrements for this subject and activity
- timeBodyAccelerometerJerkMeanZ : Mean value for the Z direction axial signal of the Time Body Accelerometer Jerk meausrements for this subject and activity
- timeBodyAccelerometerJerkStdDevX : Standard Deviation for the X direction axial signal of the Time Body Accelerometer Jerk meausrements for this subject and activity
- timeBodyAccelerometerJerkStdDevY : Standard Deviation for the Y direction axial signal of the Time Body Accelerometer Jerk meausrements for this subject and activity
- timeBodyAccelerometerJerkStdDevZ : Standard Deviation for the Z direction axial signal of the Time Body Accelerometer Jerk meausrements for this subject and activity
- timeBodyGyroscopeMeanX : Mean value for the X direction axial signal of the Time Body Gyroscope meausrements for this subject and activity
- timeBodyGyroscopeMeanY : Mean value for the Y direction axial signal of the Time Body Gyroscope meausrements for this subject and activity
- timeBodyGyroscopeMeanZ : Mean value for the Z direction axial signal of the Time Body Gyroscope meausrements for this subject and activity
- timeBodyGyroscopeStdDevX : Standard Deviation for the X direction axial signal of the Time Body Gyroscope meausrements for this subject and activity
- timeBodyGyroscopeStdDevY : Standard Deviation for the Y direction axial signal of the Time Body Gyroscope meausrements for this subject and activity
- timeBodyGyroscopeStdDevZ : Standard Deviation for the Z direction axial signal of the Time Body Gyroscope meausrements for this subject and activity
- timeBodyGyroscopeJerkMeanX : Mean value for the X direction axial signal of the Time Body Gyroscope Jerk meausrements for this subject and activity
- timeBodyGyroscopeJerkMeanY : Mean value for the Y direction axial signal of the Time Body Gyroscope Jerk meausrements for this subject and activity
- timeBodyGyroscopeJerkMeanZ : Mean value for the Z direction axial signal of the Time Body Gyroscope Jerk meausrements for this subject and activity
- timeBodyGyroscopeJerkStdDevX : Standard Deviation for the X direction axial signal of the Time Body Gyroscope Jerk meausrements for this subject and activity
- timeBodyGyroscopeJerkStdDevY : Standard Deviation for the Y direction axial signal of the Time Body Gyroscope Jerk meausrements for this subject and activity
- timeBodyGyroscopeJerkStdDevZ : Standard Deviation for the Z direction axial signal of the Time Body Gyroscope Jerk meausrements for this subject and activity
- timeBodyAccelerometerMagnitudeMean : Mean value for the Time Body Accelerometer Magnitude meausrements for this subject and activity
- timeBodyAccelerometerMagnitudeStdDev : Standard Deviation for the Time Body Accelerometer Magnitude meausrements for this subject and activity
- timeGravityAccelerometerMagnitudeMean : Mean value for the Time Gravity Accelerometer Magnitude meausrements for this subject and activity
- timeGravityAccelerometerMagnitudeStdDev : Standard Deviation for the Time Gravity Accelerometer Magnitude meausrements for this subject and activity
- timeBodyAccelerometerJerkMagnitudeMean : Mean value for the Time Body Accelerometer Magnitude Jerk meausrements for this subject and activity
- timeBodyAccelerometerJerkMagnitudeStdDev : Standard Deviation for the Time Body Accelerometer Magnitude Jerk meausrements for this subject and activity
- timeBodyGyroscopeMagnitudeMean : Mean value for the Time Body Gyroscope Magnitude meausrements for this subject and activity
- timeBodyGyroscopeMagnitudeStdDev : Standard Deviation for the Time Body Gyroscope Magnitude  meausrements for this subject and activity
- timeBodyGyroscopeJerkMagnitudeMean : Mean value for the Time Body Gyroscope Magnitude Jerk meausrements for this subject and activity
- timeBodyGyroscopeJerkMagnitudeStdDev : Standard Deviation for the Time Body Gyroscope Magnitude Jerk meausrements for this subject and activity
- frequencyBodyAccelerometerMeanX : Mean value for the X direction axial signal of the Frequency Body Accelerometer meausrements for this subject and activity
- frequencyBodyAccelerometerMeanY : Mean value for the Y direction axial signal of the  Frequency Body Accelerometer meausrements for this subject and activity
- frequencyBodyAccelerometerMeanZ : Mean value for the Z direction axial signal of the  Frequency Body Accelerometer meausrements for this subject and activity
- frequencyBodyAccelerometerStdDevX : Standard Deviation for the X direction axial signal of the Frequency Body Accelerometer meausrements for this subject and activity
- frequencyBodyAccelerometerStdDevY : Standard Deviation for the Y direction axial signal of the Frequency Body Accelerometer meausrements for this subject and activity
- frequencyBodyAccelerometerStdDevZ : Standard Deviation for the Z direction axial signal of the Frequency Body Accelerometer meausrements for this subject and activity
- frequencyBodyAccelerometerJerkMeanX : Mean value for the X direction axial signal of the  Frequency Body Accelerometer Jerk meausrements for this subject and activity
- frequencyBodyAccelerometerJerkMeanY : Mean value for the Y direction axial signal of the  Frequency Body Accelerometer Jerk meausrements for this subject and activity
- frequencyBodyAccelerometerJerkMeanZ : Mean value for the Z direction axial signal of the  Frequency Body Accelerometer Jerk meausrements for this subject and activity
- frequencyBodyAccelerometerJerkStdDevX : Standard Deviation for the X direction axial signal of the Frequency Body Accelerometer Jerk meausrements for this subject and activity
- frequencyBodyAccelerometerJerkStdDevY : Standard Deviation for the Y direction axial signal of the Frequency Body Accelerometer Jerk meausrements for this subject and activity
- frequencyBodyAccelerometerJerkStdDevZ : Standard Deviation for the Z direction axial signal of the Frequency Body Accelerometer Jerk meausrements for this subject and activity
- frequencyBodyGyroscopeMeanX : Mean value for the X direction axial signal of the Frequency Body Gyroscope meausrements for this subject and activity
- frequencyBodyGyroscopeMeanY : Mean value for the Y direction axial signal of the  Frequency Body Gyroscope meausrements for this subject and activity
- frequencyBodyGyroscopeMeanZ : Mean value for the Z direction axial signal of the  Frequency Body Gyroscope meausrements for this subject and activity
- frequencyBodyGyroscopeStdDevX : Standard Deviation for the X direction axial signal of the Frequency Body Gyroscope meausrements for this subject and activity
- frequencyBodyGyroscopeStdDevY : Standard Deviation for the Y direction axial signal of the Frequency Body Gyroscope meausrements for this subject and activity
- frequencyBodyGyroscopeStdDevZ : Standard Deviation for the Z direction axial signal of the Frequency Body Gyroscope meausrements for this subject and activity
- frequencyBodyAccelerometerMagnitudeMean : Mean value for the FrequencyBodyAccelerometerMagnitude meausrements for this subject and activity
- frequencyBodyAccelerometerMagnitudeStdDev : Standard Deviation for the FrequencyBodyAccelerometerMagnitude  meausrements for this subject and activity
- frequencyBodyAccelerometerJerkMagnitudeMean : Mean value for the FrequencyBodyAccelerometerMagnitude Jerk meausrements for this subject and activity
- frequencyBodyAccelerometerJerkMagnitudeStdDev : Standard Deviation for the FrequencyBodyAccelerometerMagnitude Jerk meausrements for this subject and activity
- frequencyBodyGyroscopeMagnitudeMean : Mean value for the Frequency Body Gyroscope Magnitude meausrements for this subject and activity
- frequencyBodyGyroscopeMagnitudeStdDev : Standard Deviation for the Frequency Body Gyroscope Magnitude meausrements for this subject and activity
- frequencyBodyGyroscopeJerkMagnitudeMean : Mean value for the Frequency Body Gyroscope Jerk Magnitude meausrements for this subject and activity
- frequencyBodyGyroscopeJerkMagnitudeStdDev : Standard Deviation for the Frequency Body Gyroscope Jerk Magnitude meausrements for this subject and activity



