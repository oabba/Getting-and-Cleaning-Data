#install.packages("dplyr")
library(dplyr)
#install.packages("plyr")
#library(plyr)


getwd()
setwd("E:\\DataScience\\Coursera-DataScience\\Getting and Cleaning Data\\RCoding\\CourseProjectFinal")
#dir.create("Files")

# Downloading the data
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" 
#?download.file
download.file(url, destfile="./dataet.zip", cacheOK=FALSE)
#Extracting the zip folder
unzip("dataet.zip")
# Checking the directories
dir()
dir("./UCI HAR Dataset")
dir("./UCI HAR Dataset/train")

##### P1 - Merges the training and the test sets to create one data set.

# Extracting data from training set
subjectIDTrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")
dim(subjectIDTrain)
Xtrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
dim(Xtrain)
Ytrain <- read.table("./UCI HAR Dataset/train/Y_train.txt")
dim(Ytrain)

# Extracting data from test set
subjectIDTest <- read.table("./UCI HAR Dataset/test/subject_test.txt")
dim(subjectIDTest)
Xtest <- read.table("./UCI HAR Dataset/test/X_test.txt")
dim(Xtest)
Ytest <- read.table("./UCI HAR Dataset/test/Y_test.txt")
dim(Ytest)

# Combining the data sets
subjectID <- rbind(subjectIDTrain,subjectIDTest)
dim(subjectID)
X <- rbind(Xtrain,Xtest)
dim(X)
Y <- rbind(Ytrain,Ytest)
dim(Y)

# Combining the dataset into one.
# Subject ID, Target, Features, 
dataset <- cbind(subjectID, Y, X)
dim(dataset)


# P2 -  Extracts only the measurements on the mean and standard deviation for each measurement. 


# Name of the 561 features is stored in the following file.
features <- read.table("./UCI HAR Dataset/features.txt",stringsAsFactors=FALSE)
names(features) <- c("feature_index","feature_name")
#str(features)
# Recall, we set our dataset as follows.
# Subject ID, Features, Target Activity
# So, we prepend feature names by Subject ID and postpend with Target Activity

# Increase the index by 2 since, we want first two
# columns be subjectID and target activity
features$feature_index = features$feature_index + 2
variableSet <- rbind(c(1,"subjectID"),c(2,"TargetActivity"), features)

#variableSet
# We include subjectID and activity since these are not variables 
# but identifiers and targets
pattern <- "mean\\(\\)|std\\(\\)|subjectID|TargetActivity"
Index <- grepl(pattern, variableSet$feature_name)
# Features to be extracted
#features[Index,]
# Recall the new dataset is named as dataset
new.dataset <- dataset[,Index]
dim(new.dataset)

names(new.dataset)


##### Done P2########
# P4: Appropriately labels the data set with descriptive variable names. 

names(new.dataset) <- variableSet[Index,2]

#head(new.dataset)
#tail(new.dataset)

#names(new.dataset)


# P3 - Uses descriptive activity names to name the activities in the data set.

# The merged dataset is now named "new.dataset" and 
#is in the following format
# subjectID, features, target activities.

#head(new.dataset)
#names(new.dataset)

activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt",stringsAsFactors=FALSE)
#str(activity_labels)

# Define a function that converts activityID to activity name
ActivityID2Name <- function(ID){   activity_labels[ID,2]  }


# Now replacing the activity labels in the dataset with the activity names.
new.dataset <- mutate(new.dataset, TargetActivity=ActivityID2Name(TargetActivity))
#head(new.dataset)

# P5: From the data set in step 4, creates a second, independent tidy data set 
# with the average of each variable for each activity and each subject.

# Now we have the dataset as new.dataset.
#head(new.dataset)
#names(new.dataset)
#dim(new.dataset)

final.dataset <- new.dataset %>%
  group_by(subjectID,TargetActivity) %>%
  summarise_each(funs(mean))

names.final <- names(final.dataset) 
names.final[3:68] <- paste0("mean(",names.final[3:68],")")
names(final.dataset)   <-  names.final

write.table(final.dataset, file="CourseraData.txt", row.name=FALSE)
#write.csv(final.dataset, file="CourseraData.csv")
