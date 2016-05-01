###########################################################################################################
#
#  Coursera Getting and Cleaning Data Course Project
#  Don Martin 
#  4-26-2016
#
#  run_analysis.R 
#
#  Description:
#
#  This script prepares a single tidy data set from getdata-projectfiles-UCI HAR that can be used for 
#  later analysis
#  
#  1. Download the getdata-projectfiles-UCI HAR.zip file from the following site:
#     https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
#  2. Unzip the sample in a sample directory
#  3. Merge the training and the test sets to create one data set.
#  4. Extract only the measurements on the mean and standard deviation for each measurement. 
#  5. Use descriptive activity names to name the activities in the data set
#  6. Appropriately label the data set with descriptive activity names. 
#  7. Creates a tidy data set with the average of each variable for each activity and each subject. 
#
##########################################################################################################

 
#  0. Housekeeping - ensure requisit libraries are loaded
      
      rm(list=ls())
      if(!file.exists("./data")){ dir.create("./data") }
      wd <- getwd() 
      setwd("./data")

#  1. Download the getdata-projectfiles-UCI HAR.zip file:

      fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
      zipFile <- "getdata-projectfiles-UCI HAR Dataset.zip"

      if (!file.exists(zipFile)) { download.file(fileUrl, zipFile)}

#  2. Unzip the getdata-projectfiles-UCI HAR.zip sample in the working directory 

      if (!file.exists("UCI HAR Dataset")) { unzip(zipFile)}

#     Load relevant target datasets 

      features           <- read.table("UCI HAR Dataset/features.txt",header=FALSE)
      activityLabels     <- read.table("UCI HAR Dataset/activity_labels.txt",header=FALSE)

      testSubjectId      <- read.table("UCI HAR Dataset/test/subject_test.txt",header=FALSE)
      testMeasures       <- read.table("UCI HAR Dataset/test/X_test.txt",header=FALSE)
      testActivities     <- read.table("UCI HAR Dataset/test/Y_test.txt",header=FALSE)
      trainingSubjectId  <- read.table("UCI HAR Dataset/train/subject_train.txt",header=FALSE)
      trainingMeasures   <- read.table("UCI HAR Dataset/train/X_train.txt",header=FALSE)
      trainingActivities <- read.table("UCI HAR Dataset/train/Y_train.txt",header=FALSE)

#  3. Merge the training and the test sets to create one data set.
      
      Subjects   <- rbind(trainingSubjectId, testSubjectId)
      Activities <- rbind(trainingActivities,testActivities)
      Measures   <- rbind(trainingMeasures,  testMeasures)
      
      colnames(activityLabels) <- c('activityid','activitytype')
      colnames(Activities)     <- c('activityid')
      colnames(Subjects)       <- c('subjectid')
      colnames(Measures)       <- features[,2]

      tidyData <- cbind(Subjects,Activities)
      tidyData <- cbind(tidyData,Measures)

#  4. Extract only the measurements on the mean and standard deviation for each measurement.

      measureFilter  <- features$V2[grep("mean\\(\\)|std\\(\\)",features$V2)]
      selectedNames  <- c("activityid", "subjectid", as.character(measureFilter))
      tidyData       <- subset(tidyData,select=selectedNames)

#  5. Use descriptive activity names to name the activities in the data set

      tidyData <- merge(activityLabels,tidyData,by="activityid",all.x=TRUE)
      tidyData <- cbind(tidyData[3],tidyData[2],tidyData[4:69])

#  6. Appropriately label the data set with descriptive activity names. 
     
       names(tidyData) <- gsub('[-()]', '',            names(tidyData))
       names(tidyData) <- gsub("Acc", "Accelerometer", names(tidyData))
       names(tidyData) <- gsub("BodyBody", "Body",     names(tidyData))
       names(tidyData) <- gsub("^f", "frequency",      names(tidyData))
       names(tidyData) <- gsub("Gyro", "Gyroscope",    names(tidyData))
       names(tidyData) <- gsub("Mag", "Magnitude",     names(tidyData))
       names(tidyData) <- gsub("mean","Mean",          names(tidyData))
       names(tidyData) <- gsub("std","StdDev",         names(tidyData))
       names(tidyData) <- gsub("^t", "time",           names(tidyData))

#  7. Create a tidy data set with the average of each variable for each activity and each subject.
      
      write.table(tidyData, "tidyData.txt",row.names=FALSE,sep="\t")


#  8. Clean-up
      setwd(wd)
      rm(list=ls())

      
 
 