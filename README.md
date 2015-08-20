# run_analysis.R

* **run_analysis.R** implements the course project for [coursera.org](http://www.coursera.org)'s *Getting and Cleaning Data* class
* It contains a single function, `run_analysis()`, which gathers the necessary data and transforms them
* It assumes that the data are available in the working directory in the folder **UCI HAR Dataset**
  * That data can be downloaded [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
* To execute `run_analysis()`
  * `source("run_analysis.R")`
  * `myVar <- run_analysis()`
  
* The data are spread out across several files:
  * "train\X_train.txt" and "test\X_test.txt" contain the measurements to be analyzed
  * "train\y_train.txt" and "test\y_test.txt" contain the numeric activity codes for each observation
  * "activity_labels.txt" contains the translation from activity code to label, i.e. 1->WALKING
  * "train\subject_train.txt" and "test\subject_test.txt" contain the subject number for each observation
  * "features.txt" contains the list of variable names associated with the raw data

## Steps taken to tidy the data
1. The first step in cleaning the data was to modify the variable names from "features.txt" by removing the "()" from each one
  * NOTE: There was a great deal of discussion about what was meant by "descriptive variable names".  I don't believe that making them more verbose, i.e. changing "Acc" to "Accelerometer" increases clarity or readability, but I do think that it puts more of a burden on the person using the data.  For this reason, I chose to remove "()" a) because they don't add anything and b) to demonstrate that I could manipulate the variable names
2. Add the new variable names to "X_train.txt" and "X_test.txt"
3. Add the activity codes from "y_train.txt" and "y_test.txt" to the corresponding rows in "X_train.txt" and "X_test.txt"
4. Associate each activity in "y_train.txt" and "y_test.txt" with its corresponding text label
5. Add the activity type columns to "X_train.txt" and "X_test.txt"
6. Add the lists of subjects to "X_train.txt" and "Y_train.txt"
7. Combine "X_train.txt" and "Y_train.txt".  Now there is one table containing all observations.
8. Keep only subject and activity columns, as well as those for std() and mean().  Discard the rest.
9. Group the resulting table by subject and activity
10. Summarize with the mean per subject/activity category

