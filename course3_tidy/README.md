You have to set the variable "pathdata" to the appropirate path where the data is located.
The test and train subdirectories are taken care of.

The first step is the read the data and store in different variables.

Objective 4:
Appropirately labels the dataset with descriptive variable names. It helps to merge datasets in next step more easily if they have common variable names.

Objective 1:

To merge the test and train datasets.
The merged dataset is contained in merged_data.

Objective 2:

To extract measurements only on the mean and standard deviation for each measurement.

Using grep command the names are segregated and then a subset of these variable names is extracted from the merged data.

Objective 3:
Uses descriptive activity names to name the activities in the data set

Using activityLabels it is achieved.

Objective 5:
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Using the aggregate command (=groupby+summarize) we extract the tidy subset and write as a text file to have the final output.

