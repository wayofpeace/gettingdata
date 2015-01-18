==================================================================
CODEBOOK
==================================================================

The dataset is structure by cohorts with two keys: activity and subject.

=====================================================================================
activity 
=====================================================================================
	Numeric identifier indicating the volunteer's physical activity corresponding to 
  recorded measurements.  

  Value labels are:
	1 WALKING
	2 WALKING_UPSTAIRS
  3 WALKING_DOWNSTAIRS
  4 SITTING
  5 STANDING
  6 LAYING

=====================================================================================
subject
=====================================================================================
	Numeric identifier for one of 30 subject volunteers

=====================================================================================
Mnemonics for other variables in the dataset are a composite of several components:
  Domain/Acceleration/Gauge/Statistic/Jerk Signal?/Magnitude 3D signals?/Axis
=====================================================================================

  where the allowable values for each component are:
    <domain>  Time or Frequency Domain
      t for time
      f for frequency

    <acceleration> Type of acceleration signal measured    
      Body acceleration signal
      Gravity acceleration signal
  
    <gauge> Type of smartphone gauge used to gather data
      Acc for accelerometer
      Gyro for gyroscope

    <Statistic> Type of statistic reported
      mean for mean across observations
      std for standard deviation across observations

    <Jerk Signal?>  Indicator for Jerk Signals
      Jerk for  metrics where body linear acceleration and angular velocity were     
                derived in time to obtain Jerk signals

    <Magnitude 3D signals?> Indicator for Magnitude metrics
      Mag for metrics where the magnitude of the three-dimensional 
                            signals were calculated using the Euclidean norm

    <Axis> Axis of measurement
      X for x-axis
      Y for y-axis
      Z for z-axis
  
=============================================
Example of variable names and interpretation:
=============================================

  Variable name: fBodyAcc.mean.X	
    Frequency-domain	
    Body acceleration signal	
    Accelerometer	
    Mean across observations			
    X-axis

===============================
Alphabetical list of variables:
===============================
fBodyAcc.mean.X
fBodyAcc.mean.Y
fBodyAcc.mean.Z
fBodyAcc.meanFreq.X
fBodyAcc.meanFreq.Y
fBodyAcc.meanFreq.Z
fBodyAcc.std.X
fBodyAcc.std.Y
fBodyAcc.std.Z
fBodyAccJerk.mean.X
fBodyAccJerk.mean.Y
fBodyAccJerk.mean.Z
fBodyAccJerk.meanFreq.X
fBodyAccJerk.meanFreq.Y
fBodyAccJerk.meanFreq.Z
fBodyAccJerk.std.X
fBodyAccJerk.std.Y
fBodyAccJerk.std.Z
fBodyAccMag.mean
fBodyAccMag.meanFreq
fBodyAccMag.std
fBodyBodyAccJerkMag.mean
fBodyBodyAccJerkMag.meanFreq
fBodyBodyAccJerkMag.std
fBodyBodyGyroJerkMag.mean
fBodyBodyGyroJerkMag.meanFreq
fBodyBodyGyroJerkMag.std
fBodyBodyGyroMag.mean
fBodyBodyGyroMag.meanFreq
fBodyBodyGyroMag.std
fBodyGyro.mean.X
fBodyGyro.mean.Y
fBodyGyro.mean.Z
fBodyGyro.meanFreq.X
fBodyGyro.meanFreq.Y
fBodyGyro.meanFreq.Z
fBodyGyro.std.X
fBodyGyro.std.Y
fBodyGyro.std.Z
tBodyAcc.mean.X
tBodyAcc.mean.Y
tBodyAcc.mean.Z
tBodyAcc.std.X
tBodyAcc.std.Y
tBodyAcc.std.Z
tBodyAccJerk.mean.X
tBodyAccJerk.mean.Y
tBodyAccJerk.mean.Z
tBodyAccJerk.std.X
tBodyAccJerk.std.Y
tBodyAccJerk.std.Z
tBodyAccJerkMag.mean
tBodyAccJerkMag.std
tBodyAccMag.mean
tBodyAccMag.std
tBodyGyro.mean.X
tBodyGyro.mean.Y
tBodyGyro.mean.Z
tBodyGyro.std.X
tBodyGyro.std.Y
tBodyGyro.std.Z
tBodyGyroJerk.mean.X
tBodyGyroJerk.mean.Y
tBodyGyroJerk.mean.Z
tBodyGyroJerk.std.X
tBodyGyroJerk.std.Y
tBodyGyroJerk.std.Z
tBodyGyroJerkMag.mean
tBodyGyroJerkMag.std
tBodyGyroMag.mean
tBodyGyroMag.std
tGravityAcc.mean.X
tGravityAcc.mean.Y
tGravityAcc.mean.Z
tGravityAcc.std.X
tGravityAcc.std.Y
tGravityAcc.std.Z
tGravityAccMag.mean
tGravityAccMag.std
