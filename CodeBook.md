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
  * X, Y, Z - the axes the measurements were taken on
* **calculations performed**
  * mean()
  * std()
  
**The following are all of the variable names:**

subject  
activity_type

tBodyAcc-mean-X  
tBodyAcc-mean-Y  
tBodyAcc-mean-Z  
tBodyAcc-std-X  
tBodyAcc-std-Y  
tBodyAcc-std-Z

tGravityAcc-mean-X  
tGravityAcc-mean-Y  
tGravityAcc-mean-Z   
tGravityAcc-std-X  
tGravityAcc-std-Y  
tGravityAcc-std-Z  
    
tBodyAccJerk-mean-X  
tBodyAccJerk-mean-Y  
tBodyAccJerk-mean-Z  
tBodyAccJerk-std-X  
tBodyAccJerk-std-Y  
tBodyAccJerk-std-Z  
      
tBodyGyro-mean-X  
tBodyGyro-mean-Y  
tBodyGyro-mean-Z       
tBodyGyro-std-X  
tBodyGyro-std-Y  
tBodyGyro-std-Z  
      
tBodyGyroJerk-mean-X  
tBodyGyroJerk-mean-Y  
tBodyGyroJerk-mean-Z    
tBodyGyroJerk-std-X  
tBodyGyroJerk-std-Y  
tBodyGyroJerk-std-Z  

tBodyAccMag-mean  
tBodyAccMag-std  

tGravityAccMag-mean  
tGravityAccMag-std  

tBodyAccJerkMag-mean  
tBodyAccJerkMag-std  
     
tBodyGyroMag-mean  
tBodyGyroMag-std  

tBodyGyroJerkMag-mean      
tBodyGyroJerkMag-std  

fBodyAcc-mean-X  
fBodyAcc-mean-Y    
fBodyAcc-mean-Z  
fBodyAcc-std-X  
fBodyAcc-std-Y           
fBodyAcc-std-Z  

fBodyAccJerk-mean-X  
fBodyAccJerk-mean-Y      
fBodyAccJerk-mean-Z  
fBodyAccJerk-std-X  
fBodyAccJerk-std-Y       
fBodyAccJerk-std-Z  

fBodyGyro-mean-X  
fBodyGyro-mean-Y        
fBodyGyro-mean-Z  
fBodyGyro-std-X  
fBodyGyro-std-Y       
fBodyGyro-std-Z  

fBodyAccMag-mean  
fBodyAccMag-std  
        
fBodyBodyAccJerkMag-mean  
fBodyBodyAccJerkMag-std  

fBodyBodyGyroMag-mean     
fBodyBodyGyroMag-std  

fBodyBodyGyroJerkMag-mean  
fBodyBodyGyroJerkMag-std