
# READMETOO.md


###
### Coursera - Exploratory Data Analysis - Course Project 1
### Author: Ian Grundy 
### Date: 8 March 2015
###


## CONTENTS OF THIS FILE
   
 * Introduction
 
 * Installation and Running
 
 * Credits
 

## Introduction

The included R scripts plot1.R, plot2.R, plot3.R, plot4.R process raw data from the 
“Individual household electric power consumption Data Set” archive located at the following address:

     https://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption 

The data contains 2075259 measurements of electric power consumption in one household with a one-minute sampling rate,  
gathered between December 2006 and November 2010 (47 months). Different electrical quantities and some sub-metering values are available.

The data is described in more detail at the URL given above.

Each script in this submission performs the following tasks:

 1. Downloads and unzips the data file located at 
 
     https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip
     
    The zipped file is stored locally, in the same folder as the script, as household\_power\_consumption.zip  
     
    If the zipped data file has previously been downloaded, i.e. household\_power\_consumption.zip exists, the script will skip this step. If the zipped file is in the folder but the unzip has failed, you should either (a) delete household\_power\_consumption.zip or (b) unzip household\_power\_consumption.zip manually.
 
 2. The script reads the unzipped data (contained household\_power\_consumption.txt) into a data table, converting all instances of "?" into NA.
 
 3. The script then combines the separate date and time columns and appends a single column containing the combined daytime variable.
 
 4. The data is then subsetted so that only the rows between the required start and end date are kept.
 
 5. The subsetted data is then used to build each of the required plots. That is, plot1.R builds plot1.png, plot2.R builds plot2.png, etc.


## Installation & Running

To run the scripts, simply download and save them into a folder on your machine.  The scripts will download and
unzip the file containing the dataset (if not done already) into the same folder containing the scripts. The plots will also be created in the same folder containing the scripts.


## Credits

This submission was written by Ian Grundy ihgrundy@gmail.com  for the Coursera course "Exploratory Data Analysis".





