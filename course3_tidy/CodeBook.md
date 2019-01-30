There are three core variables
1. Main
2. Test 3. Train
Main : activity_labels Inertial Signals Inertial Signals Test: features subject_test subject_train Train: features.info X_test X_train

README y_test y_train ‘features_info.txt’: Shows information about the variables used on the feature vector. * - ‘features.txt’: List of all features. * - ‘activity_labels.txt’: Links the class labels with their activity name. * - ‘train/X_train.txt’: Training set. * - ‘train/y_train.txt’: Training labels. * - ‘test/X_test.txt’: Test set. *- ‘test/y_test.txt’: Test labels

Analysis shows that you can categorize the data into 4 segments * training set * test set * features * activity labels

Inertial Signal data is not required. Additionally, features and activity label are more for tagging and descriptive than data sets.

The objective here is to make the test and training data as per the sequence stated above. 4 basic level data sets will be defined and created:

test data set
train data set
features data set
activity labels data set

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

Attribute Information:

For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.


