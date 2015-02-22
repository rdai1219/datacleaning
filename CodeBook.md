Column1: Activity:
		1 WALKING
		2 WALKING_UPSTAIRS
		3 WALKING_DOWNSTAIRS
		4 SITTING
		5 STANDING
		6 LAYING

Column2: Subject: 1-30 

Column 3-68: Average of means or standard deviations for each activity and each subject. 
X, Y, Z: three different axis. 
Prefix 't' denote time and prefix 'f' denote fast fourier transform.
BodyAcc: body linear acceleration signal
GravityAcc: gravity acceleration signal
BodyAccJerk: body linear acceleration Jerk signal
BodyGyro: body gyroscope signal
BodyGyroJerk: body gyroscope Jerk signal
BodyAccMag: magnitude of body linear acceleration signal
GravityAccMag: magnitude of gravity acceleration signal
BodyAccJerkMag: magnitude of body linear acceleration Jerk signal
Measurements as listed below:
mean(): Mean value
std(): Standard deviation

[3] "tBodyAcc-mean()-X"           
[4] "tBodyAcc-mean()-Y"          
[5] "tBodyAcc-mean()-Z"           
[6] "tBodyAcc-std()-X"           
[7] "tBodyAcc-std()-Y"            
[8] "tBodyAcc-std()-Z"           
[9] "tGravityAcc-mean()-X"        
[10] "tGravityAcc-mean()-Y"       
[11] "tGravityAcc-mean()-Z"        
[12] "tGravityAcc-std()-X"        
[13] "tGravityAcc-std()-Y"         
[14] "tGravityAcc-std()-Z"        
[15] "tBodyAccJerk-mean()-X"       
[16] "tBodyAccJerk-mean()-Y"      
[17] "tBodyAccJerk-mean()-Z"       
[18] "tBodyAccJerk-std()-X"       
[19] "tBodyAccJerk-std()-Y"        
[20] "tBodyAccJerk-std()-Z"       
[21] "tBodyGyro-mean()-X"          
[22] "tBodyGyro-mean()-Y"         
[23] "tBodyGyro-mean()-Z"          
[24] "tBodyGyro-std()-X"          
[25] "tBodyGyro-std()-Y"           
[26] "tBodyGyro-std()-Z"          
[27] "tBodyGyroJerk-mean()-X"      
[28] "tBodyGyroJerk-mean()-Y"     
[29] "tBodyGyroJerk-mean()-Z"      
[30] "tBodyGyroJerk-std()-X"      
[31] "tBodyGyroJerk-std()-Y"       
[32] "tBodyGyroJerk-std()-Z"      
[33] "tBodyAccMag-mean()"          
[34] "tBodyAccMag-std()"          
[35] "tGravityAccMag-mean()"       
[36] "tGravityAccMag-std()"       
[37] "tBodyAccJerkMag-mean()"      
[38] "tBodyAccJerkMag-std()"      
[39] "tBodyGyroMag-mean()"         
[40] "tBodyGyroMag-std()"         
[41] "tBodyGyroJerkMag-mean()"     
[42] "tBodyGyroJerkMag-std()"     
[43] "fBodyAcc-mean()-X"           
[44] "fBodyAcc-mean()-Y"          
[45] "fBodyAcc-mean()-Z"           
[46] "fBodyAcc-std()-X"           
[47] "fBodyAcc-std()-Y"            
[48] "fBodyAcc-std()-Z"           
[49] "fBodyAccJerk-mean()-X"       
[50] "fBodyAccJerk-mean()-Y"      
[51] "fBodyAccJerk-mean()-Z"       
[52] "fBodyAccJerk-std()-X"       
[53] "fBodyAccJerk-std()-Y"        
[54] "fBodyAccJerk-std()-Z"       
[55] "fBodyGyro-mean()-X"          
[56] "fBodyGyro-mean()-Y"         
[57] "fBodyGyro-mean()-Z"          
[58] "fBodyGyro-std()-X"          
[59] "fBodyGyro-std()-Y"           
[60] "fBodyGyro-std()-Z"          
[61] "fBodyAccMag-mean()"          
[62] "fBodyAccMag-std()"          
[63] "fBodyBodyAccJerkMag-mean()"  
[64] "fBodyBodyAccJerkMag-std()"  
[65] "fBodyBodyGyroMag-mean()"     
[66] "fBodyBodyGyroMag-std()"     
[67] "fBodyBodyGyroJerkMag-mean()" 
[68] "fBodyBodyGyroJerkMag-std()"



To generate this clean dataset:
1. the activity type (Y_test and Y_train), the subject data (subject_test and subject_train) and the measurement data (X_test, X_train) are combined. Then test data and training data are merged. 
2. the descriptive activity labels and the feature labels are used.
3. the columns of interest(the means and the stds) are extracted.
4. the data is grouped such that same activity and same subject data are in one group and the average of each measurement in each group is calculated. 

