
# Merges the training and the test sets to create one data set.
# Extracts only the measurements on the mean and standard deviation for each measurement. 
# Uses descriptive activity names to name the activities in the data set
# Appropriately labels the data set with descriptive variable names. 

# From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# activity_labels
# features_info
# features
#
# train/test
# subject_train: subject
# X_train: 561 feature vector
# y_train: features
#
# train/test /Inertial Signals
# body_acc_x_train.txt
# body_acc_y_train.txt
# body_acc_z_train.txt
# body_gyro_x_train.txt
# body_gyro_y_train.txt
# body_gyro_z_train.txt
# total_acc_x_train.txt
# total_acc_y_train.txt
# total_acc_z_train.txt
#
# 128 readings per window
# 30 subjects

# load activity labels
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
names(activity_labels) <- c("activity_id", "activity")

# load features
features <- read.table("UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)
names(features) <- c("feature_id", "feature")

# load test data
test_data <- read.table("UCI HAR Dataset/test/subject_test.txt")
names(test_data)[1] <- "subject_id"
test_data <- cbind(test_data, read.table("UCI HAR Dataset/test/X_test.txt"))
names(test_data)[2:562] <- features$feature
test_data <- cbind(test_data, read.table("UCI HAR Dataset/test/y_test.txt"))
names(test_data)[563] <- "activity_id"

temp_data <- read.table("UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt")
test_data$body_acc_x_mean <- apply(temp_data, 1, mean)
test_data$body_acc_x_std <- apply(temp_data, 1, sd)
temp_data <- read.table("UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt")
test_data$body_acc_y_mean <- apply(temp_data, 1, mean)
test_data$body_acc_y_std <- apply(temp_data, 1, sd)
temp_data <- read.table("UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt")
test_data$body_acc_z_mean <- apply(temp_data, 1, mean)
test_data$body_acc_z_std <- apply(temp_data, 1, sd)
temp_data <- read.table("UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt")
test_data$body_gyro_x_mean <- apply(temp_data, 1, mean)
test_data$body_gyro_x_std <- apply(temp_data, 1, sd)
temp_data <- read.table("UCI HAR Dataset/test/Inertial Signals/body_gyro_y_test.txt")
test_data$body_gyro_y_mean <- apply(temp_data, 1, mean)
test_data$body_gyro_y_std <- apply(temp_data, 1, sd)
temp_data <- read.table("UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt")
test_data$body_gyro_z_mean <- apply(temp_data, 1, mean)
test_data$body_gyro_z_std <- apply(temp_data, 1, sd)
temp_data <- read.table("UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt")
test_data$total_acc_x_mean <- apply(temp_data, 1, mean)
test_data$total_acc_x_std <- apply(temp_data, 1, sd)
temp_data <- read.table("UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt")
test_data$total_acc_y_mean <- apply(temp_data, 1, mean)
test_data$total_acc_y_std <- apply(temp_data, 1, sd)
temp_data <- read.table("UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt")
test_data$total_acc_z_mean <- apply(temp_data, 1, mean)
test_data$total_acc_z_std <- apply(temp_data, 1, sd)

# load train data
train_data <- read.table("UCI HAR Dataset/train/subject_train.txt")
names(train_data)[1] <- "subject_id"
train_data <- cbind(train_data, read.table("UCI HAR Dataset/train/X_train.txt"))
names(train_data)[2:562] <- features$feature
train_data <- cbind(train_data, read.table("UCI HAR Dataset/train/y_train.txt"))
names(train_data)[563] <- "activity_id"

temp_data <- read.table("UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt")
train_data$body_acc_x_mean <- apply(temp_data, 1, mean)
train_data$body_acc_x_std <- apply(temp_data, 1, sd)
temp_data <- read.table("UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt")
train_data$body_acc_y_mean <- apply(temp_data, 1, mean)
train_data$body_acc_y_std <- apply(temp_data, 1, sd)
temp_data <- read.table("UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt")
train_data$body_acc_z_mean <- apply(temp_data, 1, mean)
train_data$body_acc_z_std <- apply(temp_data, 1, sd)
temp_data <- read.table("UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt")
train_data$body_gyro_x_mean <- apply(temp_data, 1, mean)
train_data$body_gyro_x_std <- apply(temp_data, 1, sd)
temp_data <- read.table("UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt")
train_data$body_gyro_y_mean <- apply(temp_data, 1, mean)
train_data$body_gyro_y_std <- apply(temp_data, 1, sd)
temp_data <- read.table("UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt")
train_data$body_gyro_z_mean <- apply(temp_data, 1, mean)
train_data$body_gyro_z_std <- apply(temp_data, 1, sd)
temp_data <- read.table("UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt")
train_data$total_acc_x_mean <- apply(temp_data, 1, mean)
train_data$total_acc_x_std <- apply(temp_data, 1, sd)
temp_data <- read.table("UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt")
train_data$total_acc_y_mean <- apply(temp_data, 1, mean)
train_data$total_acc_y_std <- apply(temp_data, 1, sd)
temp_data <- read.table("UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt")
train_data$total_acc_z_mean <- apply(temp_data, 1, mean)
train_data$total_acc_z_std <- apply(temp_data, 1, sd)

# merge test, train data
data <- rbind(test_data, train_data)

# add activity label
data <- merge(data, activity_labels, by.x = "activity_id", by.y = "activity_id")

# average of each activity and each subject
data_by_activity <- ddply(data, .(subject_id, activity), colwise(mean))