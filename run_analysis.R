# the purpose of this script is to demonstrate ability to collect, work with, and clean a data set
# please read README and CodeBook for additional information

# loading libraries
lybrary(tidyverse)

# downloading and storing
if (!(file.exists("data"))) {
   dir.create("data")
}
if (!(file.exists("data/dataset.zip"))) {
   download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",destfile ="data/dataset.zip", method="curl")
}
if (!(file.exists("data/UCI HAR Dataset"))) {
   unzip("data/dataset.zip",exdir="data")
}

# reading test data
xtest <- read_table("./data/UCI HAR Dataset/test/X_test.txt", col_names = FALSE)
ytest <- read_table("./data/UCI HAR Dataset/test/y_test.txt", col_names = FALSE)
# reading train data
xtrain <- read_table("./data/UCI HAR Dataset/train/X_train.txt", col_names = FALSE)
ytrain <- read_table("./data/UCI HAR Dataset/train/y_train.txt", col_names = FALSE)
# reading subject data
subjects_test <- read_table("./data/UCI HAR Dataset/test/subject_test.txt", col_names = "subject")
subjects_train <- read_table("./data/UCI HAR Dataset/train/subject_train.txt", col_names = "subject")
# reading labels
activities <- read_table2("./data/UCI HAR Dataset/activity_labels.txt", col_names = FALSE)
features <- read_table2("./data/UCI HAR Dataset/features.txt", col_names = FALSE)

# starting requested tasks
# 1. Merges the training and the test sets to create one data set.
# preparing x,y data
xdata <- bind_rows(xtest, xtrain); names(xdata) <- features[[2]]
ydata <- bind_rows(ytest, ytrain); colnames(ydata) <- "activity"
# preparing subjects
subjects <- bind_rows(subjects_test, subjects_train)
# merging sets to create one data set
data <- bind_cols(subjects, ydata, xdata)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
data <- data %>% select(1:3, matches("-mean()|-std()"))

# 3. Uses descriptive activity names to name the activities in the data set
data[[2]] <- factor(data[[2]], labels = activities[[2]]) %>% tolower

# 4. Appropriately labels the data set with descriptive variable names.
# since we already labeled the columns, we're doing some clean up
names(data) <- gsub("BodyBody","Body",names(data))
names(data) <- gsub("\\()","",names(data)) ; names(data) <- tolower(names(data))

# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
tidy_data <- aggregate(. ~subject + activity, data, mean)

# Saving final dataset
write.table(tidy_data, file="./tidy_dataset.txt", row.names = FALSE)
