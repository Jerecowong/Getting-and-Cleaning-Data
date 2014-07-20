Getting-and-Cleaning-Data
=========================

Project introduction
--------------------

The purpose of this project is to demonstrate the ability to collect, work with, and 
clean a data set. The goal is to prepare tidy data that can be used for later analysis.


About the raw data
--------------------
Data includes 2 sets: testing and training.
*The features (561 of them) are unlabeled and can be found in the x_test(train).txt.
*The activity labels are in the y_test(train).txt file. 
*The test subjects are in the subject_test(train).txt file.


About the script and the tidy dataset
---------------------------------------
Script run_analysis.R will merge the test and training sets together. 
the UCI HAR Dataset must be extracted and be availble in a directory called "UCI HAR Dataset", 
which is under the work directory.

After merging testing and training, labels are added and only columns that have to do with 
mean and standard deviation are kept.

Lastly, the script will create a tidy data set containing the means of all the columns 
per test subject and per activity. This tidy dataset will be written to a cvs file called 
average_activity_subject.txt, which is included in this repository.

About the Code Book
-------------------
The CodeBook.md file describes the variables, the data, and any transformations performed to 
clean up the data.
