#Getting and Cleaning Data Course Project
#27 December 2015

library(dplyr)


#import files
#test set
tes.sub <- read.table(paste(getwd(), '/test/subject_test.txt', sep=""), sep="\t")
tes.Y <- read.table(paste(getwd(), '/test/y_test.txt', sep=""), sep="\t")
tes.X <- read.table(paste(getwd(), '/test/X_test.txt', sep=""))

#train set
tra.sub <- read.table(paste(getwd(), '/train/subject_train.txt', sep=""), sep="\t")
tra.Y <- read.table(paste(getwd(), '/train/y_train.txt', sep=""), sep="\t")
tra.X <- read.table(paste(getwd(), '/train/X_train.txt', sep =""))

#column labels
fet <- read.table(paste(getwd(), '/features.txt', sep=""), sep=" ")
act <- read.table(paste(getwd(), '/activity_labels.txt', sep=""), sep=" ")

#look up activity label merge with test and training sets
#test set
tes.Y.lbl <- merge(tes.Y, act, by.x = "V1", by.y = "V1")
#train set
tra.Y.lbl <- merge(tra.Y, act, by.x = "V1", by.y = "V1")

#amend column names
#test set
colnames(tes.Y.lbl) <- c('ActivityCode', 'ActivityLabel')
colnames(tes.sub) <- 'subjectid'
colnames(tes.X) <- fet[,2]
#train set
colnames(tra.Y.lbl) <- c('ActivityCode', 'ActivityLabel')
colnames(tra.sub) <- 'subjectid'
colnames(tra.X) <- fet[,2]

#combine data (assuming rows are in same order)
#test set
tes.f <- cbind(tes.sub, tes.Y.lbl, tes.X)
#train set
tra.f <- cbind(tra.sub, tra.Y.lbl, tra.X)

#combine test set and training set
tes.tra <- rbind(tes.f, tra.f)
#identify columns (mean or standard deviation)
col.mn <- data.frame(grep("MEAN", toupper(colnames(tes.f))))
colnames(col.mn) <- "colindex"
col.std <- data.frame(grep("STD", toupper(colnames(tes.f))))
colnames(col.std) <- "colindex"
col.sel <- rbind(col.mn, col.std)               
col.sel.ord <- sort.int(col.sel[,"colindex"], decreasing=FALSE) 

#select mean and std columns from dataset using index calculated above
tes.tra.f <- cbind(tes.tra[,"subjectid"], tes.tra[,"ActivityLabel"],tes.tra[,col.sel.ord])
colnames(tes.tra.f)[1] <- "SubjectID"
colnames(tes.tra.f)[2] <- "ActivityLabel"

#calculate average for each variable and rename the column
out.f <- summarise_each(group_by(tes.tra.f, SubjectID, ActivityLabel), funs(mean(., na.rm = TRUE)))
colnames(r)[3:88] <- paste(colnames(out.f)[3:88], "_Avg")

write.table(r, "r_CourseProject.txt", sep = "\t", row.names = FALSE)
