filename: r_CourseProject.txt
source files:

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

- 'test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

description: File generated for Getting and Cleaning Data Course Project.  
transformations: The Training set (X_train.txt) has been merged with Training Labels (y_train.txt) and subjects (subject_train.txt).  Column names were sourced from features.txt.  The description of the label has been sourced from activity_labels.txt (column:ActivityLabel).  The Test set (X_test.txt) has been merged with Test Labels (y_test.txt) and subjects (subject_test.txt).  Column names were sourced from features.txt.  The description of the label has been sourced from activity_labels.txt (column:ActivityLabel).  The Training set and Test set have been merged.  Calculated from this merged dataset, data in the columns in r_CourseProject.txt represents average mean and average std grouped by subject (column:SubjectID) and activity (column:ActivityLabel)

Column names

"SubjectID"
"ActivityLabel"
"tBodyAcc-mean()-X _Avg"
"tBodyAcc-mean()-Y _Avg"
"tBodyAcc-mean()-Z _Avg"
"tBodyAcc-std()-X _Avg"
"tBodyAcc-std()-Y _Avg"
"tBodyAcc-std()-Z _Avg"
"tGravityAcc-mean()-X _Avg"
"tGravityAcc-mean()-Y _Avg"
"tGravityAcc-mean()-Z _Avg"
"tGravityAcc-std()-X _Avg"
"tGravityAcc-std()-Y _Avg"
"tGravityAcc-std()-Z _Avg"
"tBodyAccJerk-mean()-X _Avg"
"tBodyAccJerk-mean()-Y _Avg"
"tBodyAccJerk-mean()-Z _Avg"
"tBodyAccJerk-std()-X _Avg"
"tBodyAccJerk-std()-Y _Avg"
"tBodyAccJerk-std()-Z _Avg"
"tBodyGyro-mean()-X _Avg"
"tBodyGyro-mean()-Y _Avg"
"tBodyGyro-mean()-Z _Avg"
"tBodyGyro-std()-X _Avg"
"tBodyGyro-std()-Y _Avg"
"tBodyGyro-std()-Z _Avg"
"tBodyGyroJerk-mean()-X _Avg"
"tBodyGyroJerk-mean()-Y _Avg"
"tBodyGyroJerk-mean()-Z _Avg"
"tBodyGyroJerk-std()-X _Avg"
"tBodyGyroJerk-std()-Y _Avg"
"tBodyGyroJerk-std()-Z _Avg"
"tBodyAccMag-mean() _Avg"
"tBodyAccMag-std() _Avg"
"tGravityAccMag-mean() _Avg"
"tGravityAccMag-std() _Avg"
"tBodyAccJerkMag-mean() _Avg"
"tBodyAccJerkMag-std() _Avg"
"tBodyGyroMag-mean() _Avg"
"tBodyGyroMag-std() _Avg"
"tBodyGyroJerkMag-mean() _Avg"
"tBodyGyroJerkMag-std() _Avg"
"fBodyAcc-mean()-X _Avg"
"fBodyAcc-mean()-Y _Avg"
"fBodyAcc-mean()-Z _Avg"
"fBodyAcc-std()-X _Avg"
"fBodyAcc-std()-Y _Avg"
"fBodyAcc-std()-Z _Avg"
"fBodyAcc-meanFreq()-X _Avg"
"fBodyAcc-meanFreq()-Y _Avg"
"fBodyAcc-meanFreq()-Z _Avg"
"fBodyAccJerk-mean()-X _Avg"
"fBodyAccJerk-mean()-Y _Avg"
"fBodyAccJerk-mean()-Z _Avg"
"fBodyAccJerk-std()-X _Avg"
"fBodyAccJerk-std()-Y _Avg"
"fBodyAccJerk-std()-Z _Avg"
"fBodyAccJerk-meanFreq()-X _Avg"
"fBodyAccJerk-meanFreq()-Y _Avg"
"fBodyAccJerk-meanFreq()-Z _Avg"
"fBodyGyro-mean()-X _Avg"
"fBodyGyro-mean()-Y _Avg"
"fBodyGyro-mean()-Z _Avg"
"fBodyGyro-std()-X _Avg"
"fBodyGyro-std()-Y _Avg"
"fBodyGyro-std()-Z _Avg"
"fBodyGyro-meanFreq()-X _Avg"
"fBodyGyro-meanFreq()-Y _Avg"
"fBodyGyro-meanFreq()-Z _Avg"
"fBodyAccMag-mean() _Avg"
"fBodyAccMag-std() _Avg"
"fBodyAccMag-meanFreq() _Avg"
"fBodyBodyAccJerkMag-mean() _Avg"
"fBodyBodyAccJerkMag-std() _Avg"
"fBodyBodyAccJerkMag-meanFreq() _Avg"
"fBodyBodyGyroMag-mean() _Avg"
"fBodyBodyGyroMag-std() _Avg"
"fBodyBodyGyroMag-meanFreq() _Avg"
"fBodyBodyGyroJerkMag-mean() _Avg"
"fBodyBodyGyroJerkMag-std() _Avg"
"fBodyBodyGyroJerkMag-meanFreq() _Avg"
"angle(tBodyAccMean,gravity) _Avg"
"angle(tBodyAccJerkMean),gravityMean) _Avg"
"angle(tBodyGyroMean,gravityMean) _Avg"
"angle(tBodyGyroJerkMean,gravityMean) _Avg"
"angle(X,gravityMean) _Avg"
"angle(Y,gravityMean) _Avg"
"angle(Z,gravityMean) _Avg"