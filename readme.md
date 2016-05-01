# Getting and Cleaning Data Project Submission

Don Martin 


##Overview

This project serves to demonstrate the collection and cleaning of a tidy data set that can be used for subsequent analysis. A full description of the data used in this project can be found at The UCI Machine Learning Repository

##Project Summary

The following is a summary description of the project instructions

You should create one R script called run_analysis.R that does the following. 
1. Merges the training and the test sets to create one data set. 
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set 
4. Appropriately labels the data set with descriptive activity names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.


##Repo Contents

- This README file
- CodeBook.md a file describing the source and target of this project
- run_analysis.R an R script that performs all steps necessary to produce the tidyData.txt
- tidyData.txt a sample of the initial run of run_analysis.R


The data in tidyData.txt is in "wide" format as described by [Wickham](http://vita.had.co.nz/papers/tidy-data.pdf); there is a single row for each subject/activity pair, and a single column for each measurement.
