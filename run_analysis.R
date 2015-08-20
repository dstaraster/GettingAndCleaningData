run_analysis <- function() {
  install.packages("dplyr")
  library("dplyr")
  
  # the training data itself - all numbers, no column headers
  train <- read.table("UCI HAR Dataset\\train\\X_train.txt")
  
  # the test data itself - all numbers, no column headers
  test<- read.table("UCI HAR Dataset\\test\\X_test.txt")
  
  # the activities for each row in train
  y_train <- read.table("UCI HAR Dataset\\train\\y_train.txt")
  
  # the activities for each row in test
  y_test <- read.table("UCI HAR Dataset\\test\\y_test.txt")
  
  # the list of subjects - one subject per row
  train_subjects <- read.table("UCI HAR Dataset\\train\\subject_train.txt")
  test_subjects <- read.table("UCI HAR Dataset\\test\\subject_test.txt")
  
  # the list of activities and their associated numbers
  activities <- read.table("UCI HAR Dataset\\activity_labels.txt")
  
  # the list of column names for train & test
  features <- read.table("UCI HAR Dataset\\features.txt")
  
  # change the values in features.txt to be more descriptive
  new_column_names <- c()
  for (i in 1:length(features$V2)) {
    new_column_names <- c(new_column_names, gsub("\\(\\)", "", as.character(features[i, "V2"])))
  }
  
  # set the column names for train and test to the values in features, i.e. "fBodyBodyAccJerkMag-std()"
  colnames(train) <- new_column_names
  colnames(test) <- new_column_names
  
  # y_train & y_test are just a column of numbers from 1-6 representing an activity type
  # add the activity type
  y_train$activity_type <- activities[y_train$V1, "V2"]
  y_test$activity_type <- activities[y_test$V1, "V2"]
  
  # add y_train & y_test to train & test - there is one value per row
  train$activity_type <- y_train[, "activity_type"]
  test$activity_type <- y_test[, "activity_type"]
  
  # add a column to train & test containing the subject number for each row
  train$subject <- train_subjects[, "V1"]
  test$subject <- test_subjects[, "V1"]
  
  # now both tables are done, so combine them
  combined <- rbind(train, test)
  
  # remove the columns that aren't mean or std
  good_columns <- c()
  for (n in names(combined)) {
    if (grepl("std", n) | 
        (grepl("mean", n) & !grepl("meanFreq", n)) |
        (n == "activity_type") |
        (n == "subject")) {
      good_columns <- c(good_columns, n)
    }
  }
  combined <- combined[, good_columns]
  
  # turn off warnings about taking the mean of non-numeric data_type column
  options(warn=-1)
  df <- tbl_df(combined)
  by_subject_and_activity <- group_by(df, subject, activity_type)
  summarised <- summarise_each(by_subject_and_activity, funs(mean))
  
  summarised
}