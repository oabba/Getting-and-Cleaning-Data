### Overview and the Packages
In this work, utilise raw data from gyroscopes and accelerometers to recognise human activities. We utilise dplyr package with te base R libraries to download, process, and clean the data and retains only the mean of relevant variables.  

### Data download and merging the datasets
Our R script is an autonomous script that downloads, unzips and extract all the relevant data that is needed in this work. After downloading the data, the training and testing datasets are merged together to form a bigger datasets. There are a total of three files associated with each of the training and the test set namely: subjectID, variables and the targetActivities. The merged bigger dataset is composed of a total of six files. The merged dataset consists of 10299 observations, each with 563 variables. It is to remark that one of the variables is the subjectID and another is the Activity. It makes the number of variables as 561. 

### Extracting variables
In this work, we are interested in retaining the variables which are obtained by applying mean() or standard deviation (std()) functions on measurements. There is a file in raw dataset called features.txt in which the variables are listed in order. We extract the index information of all the variables that are obtained by applying mean() or std() function using powerful regular expression libraries of base R. We then utilise this index information and utilise basic subsetting functions over the merged dataset and retain only the aforementioned variables along with subjectID and Activity. In our new dataset, the number of variables reduces from 563 to 68.  

### Descriptive variable names
So far, we have not assigned any descriptive names to the variables in our dataset. It is to again remark that features.txt contains original descriptive names of the variables. We utilise the index information, as obtained in the previous step to extract the names of extracted variables and assign them to the variables in our new dataset. Note that by extracted variables, we mean the variables which are obtained by applying mean() or std() functions over the measurements and the new dataset consist only of these variables. 

### descriptive activity names
Recall there is a variable 'Activity' in our dataset. This variable, so far contains numbers instead of descriptive activity names. The correspondence between these numbers and actual activities is contained in file called activity_labels.txt. By utilising this file, we define a function that converts activity number to descriptive activity names. By utilising this function, we employ mutate function over the activity variable which replaces activity numbers to their corresponding descriptive activities.

### Independent tidy dataset

We are interested in generating a second, independent tidy data set in which the mean information of variables is provided for each activity of all the subjects. Here, we make the most of dplyr package and generate this new dataset by the foloowing sequence of operations. i) Make groups in the data with respect to subjectID and Activity. It can be conveniently done with group_by command. ii) Summarize each variable in a group with its mean value. It can be done with summarize_each command. This independent tidy dataset consist of 180 records, each with 68 variables. 

Finally this independent tidy dataset is written to a text file named CourseraData.txt. 
