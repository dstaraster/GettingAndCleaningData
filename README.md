# run_analysis.R

* **run_analysis.R** implements the course project for [coursera.org](http://www.coursera.org)'s *Getting and Cleaning Data* class
* It contains a single function, `run_analysis()`, which gathers the necessary data and transforms them - see **CodeBook.md**
* It assumes that the data are available in the working directory in the folder **UCI HAR Dataset**
  * That data can be downloaded [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
* To execute `run_analysis()`
  * `source("run_analysis.R")`
  * `myVar <- run_analysis()`