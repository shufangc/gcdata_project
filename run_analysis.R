library(data.table)
library(dplyr)

feature.file <- "./UCI HAR Dataset/features.txt"
feature <- fread(feature.file)

# training files
traindata.file <- "./UCI HAR Dataset/train/X_train.txt"
trainlabel.file <- "./UCI HAR Dataset/train/y_train.txt"
traindata <- fread(traindata.file)
trainlabel <- fread(trainlabel.file)
# add column names for training data
colnames(traindata) <- feature$V2
# add activity labels for training data
train <- mutate(traindata, label = trainlabel$V1)

# testing files
testdata.file <- "./UCI HAR Dataset/test/X_test.txt"
testlabel.file <- "./UCI HAR Dataset/test/y_test.txt"
testdata <- fread(testdata.file)
testlabel <- fread(testlabel.file)
# add column names for testing data
colnames(testdata) <- feature$V2
# add activity labels for testing data
test <- mutate(testdata, label = testlabel$V1)

# Merges the training and the test sets to create one data set called 'smart'
smart <- as.data.frame(rbind(train, test))

# 'smartext': measurements on the mean and standard deviation for each measurement
colIndex1 <- grep("mean", tolower(names(smart))) 
colIndex2 <- grep("std", tolower(names(smart))) 
smartext <- smart[,c(562, colIndex1,colIndex2)]

# Uses descriptive activity names to name the activities in the data set
actnames <- list("1" = "walking", "2" = "walking_upstairs", "3" = "walking_downstairs", "4"= "sitting", "5"= "standing", "6" = "laying")
smartext$label <- as.character(actnames[smartext$label])

# Label the data set with descriptive variable names
dname <- names(smartext)
dname <- gsub("tBody", "TimeDomainBody", dname)
dname <- gsub("fBody", "FrequencyDomainBody", dname)
dname <- gsub("tGravity", "TimeDomainGravity", dname)
dname <- gsub("Acc", "Acceleration", dname)
dname <- gsub("Gyro", "Gyroscope", dname)
dname <- gsub("Mag", "Magnitude", dname)
names(smartext) <- dname

# From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
subtrain.file <- "./UCI HAR Dataset/train/subject_train.txt"
subtrain <- fread(subtrain.file)
subtest.file <- "./UCI HAR Dataset/test/subject_test.txt"
subtest <- fread(subtest.file)
subject <- as.data.frame(rbind(subtrain,subtest))
smartext$subject <- subject$V1

new <- aggregate(.~label + subject, smartext, mean)
write.table(new, "run_analysis.txt",row.name=FALSE )


