
# Merges the training and the test sets to create one data set.

training_x<-read.table("UCI HAR Dataset/train/X_train.txt")
training_y<-read.table("UCI HAR Dataset/train/Y_train.txt")
training_z<- read.table("UCI HAR Dataset/train/subject_train.txt")
training<- cbind(training_x, training_y, training_z)


testing_x<-read.table("UCI HAR Dataset/test/X_test.txt")
testing_y<-read.table("UCI HAR Dataset/test/Y_test.txt")
testing_z<-read.table("UCI HAR Dataset/test/subject_test.txt")
testing<- cbind(testing_x, testing_y, testing_z)
 

data<-rbind(training, testing)

# Appropriately labels the data set with descriptive activity names.
colnames(data)[562] = "activity"
colnames(data)[563] = "subject"

# Extracts only the measurements on the mean and standard deviation for each measurement.
features<- read.table("UCI HAR Dataset/features.txt")
indices_wanted<- grep("-mean\\(\\)|-std\\(\\)", features[, 2])
data_wanted <- data[, indices_wanted]
names(data_wanted) <- features[indices_wanted, 2]
names(data_wanted) <- gsub("\\(|\\)", "", names(data_wanted))
names(data_wanted) <- tolower(names(data_wanted)) 
data_wanted<-cbind(data_wanted, data[, (562:563)])

# 3. Uses descriptive activity names to name the activities in the data set
activities <- read.table("UCI HAR Dataset/activity_labels.txt")
activities[, 2] = tolower(as.character(activities[, 2]))
data_wanted$activity = activities[data_wanted$activity, 2]
 
#store it to local file
write.table(data_wanted, "merged_wanted_data.txt")

# 5. Creates a 2nd, independent tidy data set with the average of each variable for each activity and each subject.

averages<-aggregate(data_wanted[,1:66], by=list(data_wanted$activity, data_wanted$subject), mean)

write.csv(averages, file="average_activity_subject.txt", row.names=FALSE)

