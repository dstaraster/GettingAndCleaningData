# CodeBook.md

This is the codebook for the course project for [coursera.org](http://www.coursera.org)'s *Getting and Cleaning Data* course.

## Variables
* **subject** - the number of the subject for the observation, ranges from 1-30
* **activity_type** - the type of activity for the observation, LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS
* **measurements taken** - the remaining 66 variables consist of the different measurements taken for each observation, in various combinations of the following
  * t or f - time or frequency
  * Body or Gravity
  * Acc or Gyro - accelerometer or gyroscope
  * Jerk
  * Mag - magnitude
* **calculations performed**
  * mean()
  * std()
  
The following are all of the variable names:

 [1] "subject"                   "activity_type"             "tBodyAcc-mean-X"          
 [4] "tBodyAcc-mean-Y"           "tBodyAcc-mean-Z"           "tBodyAcc-std-X"           
 [7] "tBodyAcc-std-Y"            "tBodyAcc-std-Z"            "tGravityAcc-mean-X"       
[10] "tGravityAcc-mean-Y"        "tGravityAcc-mean-Z"        "tGravityAcc-std-X"        
[13] "tGravityAcc-std-Y"         "tGravityAcc-std-Z"         "tBodyAccJerk-mean-X"      
[16] "tBodyAccJerk-mean-Y"       "tBodyAccJerk-mean-Z"       "tBodyAccJerk-std-X"       
[19] "tBodyAccJerk-std-Y"        "tBodyAccJerk-std-Z"        "tBodyGyro-mean-X"         
[22] "tBodyGyro-mean-Y"          "tBodyGyro-mean-Z"          "tBodyGyro-std-X"          
[25] "tBodyGyro-std-Y"           "tBodyGyro-std-Z"           "tBodyGyroJerk-mean-X"     
[28] "tBodyGyroJerk-mean-Y"      "tBodyGyroJerk-mean-Z"      "tBodyGyroJerk-std-X"      
[31] "tBodyGyroJerk-std-Y"       "tBodyGyroJerk-std-Z"       "tBodyAccMag-mean"         
[34] "tBodyAccMag-std"           "tGravityAccMag-mean"       "tGravityAccMag-std"       
[37] "tBodyAccJerkMag-mean"      "tBodyAccJerkMag-std"       "tBodyGyroMag-mean"        
[40] "tBodyGyroMag-std"          "tBodyGyroJerkMag-mean"     "tBodyGyroJerkMag-std"     
[43] "fBodyAcc-mean-X"           "fBodyAcc-mean-Y"           "fBodyAcc-mean-Z"          
[46] "fBodyAcc-std-X"            "fBodyAcc-std-Y"            "fBodyAcc-std-Z"           
[49] "fBodyAccJerk-mean-X"       "fBodyAccJerk-mean-Y"       "fBodyAccJerk-mean-Z"      
[52] "fBodyAccJerk-std-X"        "fBodyAccJerk-std-Y"        "fBodyAccJerk-std-Z"       
[55] "fBodyGyro-mean-X"          "fBodyGyro-mean-Y"          "fBodyGyro-mean-Z"         
[58] "fBodyGyro-std-X"           "fBodyGyro-std-Y"           "fBodyGyro-std-Z"          
[61] "fBodyAccMag-mean"          "fBodyAccMag-std"           "fBodyBodyAccJerkMag-mean" 
[64] "fBodyBodyAccJerkMag-std"   "fBodyBodyGyroMag-mean"     "fBodyBodyGyroMag-std"     
[67] "fBodyBodyGyroJerkMag-mean" "fBodyBodyGyroJerkMag-std" 