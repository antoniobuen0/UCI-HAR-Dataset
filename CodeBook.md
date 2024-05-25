
# Code Book for Tidy Data Set

## Description

The tidy data set contains measurements from the accelerometers and gyroscopes of the Samsung Galaxy S II smartphone, processed to retain only the mean and standard deviation for each measurement.

## Variables

### Identifiers

- `subjectId`: Identifier of the subject who performed the activity (integer range: 1 to 30).
- `activityId`: Identifier of the activity (integer range: 1 to 6).
- `activityType`: Descriptive name of the activity (character).

### Measurements

All measurements are normalized and bounded within [-1, 1].

- `timeBodyAccelerometer-mean()-X`
- `timeBodyAccelerometer-mean()-Y`
- `timeBodyAccelerometer-mean()-Z`
- `timeBodyAccelerometer-std()-X`
- `timeBodyAccelerometer-std()-Y`
- `timeBodyAccelerometer-std()-Z`
- `timeGravityAccelerometer-mean()-X`
- `timeGravityAccelerometer-mean()-Y`
- `timeGravityAccelerometer-mean()-Z`
- `timeGravityAccelerometer-std()-X`
- `timeGravityAccelerometer-std()-Y`
- `timeGravityAccelerometer-std()-Z`
- `timeBodyAccelerometerJerk-mean()-X`
- `timeBodyAccelerometerJerk-mean()-Y`
- `timeBodyAccelerometerJerk-mean()-Z`
- `timeBodyAccelerometerJerk-std()-X`
- `timeBodyAccelerometerJerk-std()-Y`
- `timeBodyAccelerometerJerk-std()-Z`
- `timeBodyGyroscope-mean()-X`
- `timeBodyGyroscope-mean()-Y`
- `timeBodyGyroscope-mean()-Z`
- `timeBodyGyroscope-std()-X`
- `timeBodyGyroscope-std()-Y`
- `timeBodyGyroscope-std()-Z`
- `timeBodyGyroscopeJerk-mean()-X`
- `timeBodyGyroscopeJerk-mean()-Y`
- `timeBodyGyroscopeJerk-mean()-Z`
- `timeBodyGyroscopeJerk-std()-X`
- `timeBodyGyroscopeJerk-std()-Y`
- `timeBodyGyroscopeJerk-std()-Z`
- `timeBodyAccelerometerMagnitude-mean()`
- `timeBodyAccelerometerMagnitude-std()`
- `timeGravityAccelerometerMagnitude-mean()`
- `timeGravityAccelerometerMagnitude-std()`
- `timeBodyAccelerometerJerkMagnitude-mean()`
- `timeBodyAccelerometerJerkMagnitude-std()`
- `timeBodyGyroscopeMagnitude-mean()`
- `timeBodyGyroscopeMagnitude-std()`
- `timeBodyGyroscopeJerkMagnitude-mean()`
- `timeBodyGyroscopeJerkMagnitude-std()`
- `frequencyBodyAccelerometer-mean()-X`
- `frequencyBodyAccelerometer-mean()-Y`
- `frequencyBodyAccelerometer-mean()-Z`
- `frequencyBodyAccelerometer-std()-X`
- `frequencyBodyAccelerometer-std()-Y`
- `frequencyBodyAccelerometer-std()-Z`
- `frequencyBodyAccelerometerJerk-mean()-X`
- `frequencyBodyAccelerometerJerk-mean()-Y`
- `frequencyBodyAccelerometerJerk-mean()-Z`
- `frequencyBodyAccelerometerJerk-std()-X`
- `frequencyBodyAccelerometerJerk-std()-Y`
- `frequencyBodyAccelerometerJerk-std()-Z`
- `frequencyBodyGyroscope-mean()-X`
- `frequencyBodyGyroscope-mean()-Y`
- `frequencyBodyGyroscope-mean()-Z`
- `frequencyBodyGyroscope-std()-X`
- `frequencyBodyGyroscope-std()-Y`
- `frequencyBodyGyroscope-std()-Z`
- `frequencyBodyAccelerometerMagnitude-mean()`
- `frequencyBodyAccelerometerMagnitude-std()`
- `frequencyBodyAccelerometerJerkMagnitude-mean()`
- `frequencyBodyAccelerometerJerkMagnitude-std()`
- `frequencyBodyGyroscopeMagnitude-mean()`
- `frequencyBodyGyroscopeMagnitude-std()`
- `frequencyBodyGyroscopeJerkMagnitude-mean()`
- `frequencyBodyGyroscopeJerkMagnitude-std()`

Each measurement represents the mean value of the variable for each activity and each subject.

## Transformations

1. The original data was loaded and combined into a single data set.
2. Only the measurements on the mean and standard deviation for each measurement were extracted.
3. Activity labels were applied to the data set.
4. Variable names were appropriately labeled with descriptive names.
5. A second tidy data set was created with the average of each variable for each activity and each subject.

## License

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited. Use of this dataset in publications must be acknowledged by referencing the following publication:

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
