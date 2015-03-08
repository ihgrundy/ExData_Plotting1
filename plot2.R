##################################################
#
# Exploratory Data Analysis - Course Project 1
#
# File: plot2.R
# Written by: Ian Grundy
# Date: Sunday 8 March 2015
#
###################################################

library(dplyr)
library(lubridate)

## Download and unzip  data file, if necessary

fileURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
 
if (!file.exists("household_power_consumption.zip"))
{  
    cat("Downloading Data Set")
    download.file(fileURL, destfile="./household_power_consumption.zip", method="curl")
    unzip("household_power_consumption.zip")
    cat("   ... downloaded and unzipped\n")
 
}

## Read data into data table, converting all instances of "?" into NA
 
cat("Reading data from file")
powerdata <- read.table("household_power_consumption.txt", 
colClasses = c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"),
sep=";", na.strings="?", header=TRUE)
cat("   ... read",nrow(powerdata),"rows x",ncol(powerdata),"columns\n")

## Use dmy_hms() from lubridate to append a new column containing a single usable "daytime" variable
## from the separate date and time columns.
 
cat("Tidying and reducing data")
augpowerdata <- mutate(powerdata, cleanDateTime = dmy_hms(paste0(powerdata$Date,powerdata$Time)))

## Subset the data, based on the start and end date.
 
startdate <- ymd("2007-02-01") 
enddate <- ymd("2007-02-03")  
 
reduced_data <- augpowerdata[augpowerdata$cleanDateTime >= startdate & augpowerdata$cleanDateTime < enddate,]
cat("   ... built",nrow(reduced_data),"rows x",ncol(reduced_data),"columns\n")

## Build plot2 from the "reduced_data" data table.
    
cat("Making plot #2")
png(file="plot2.png", width=480, height=480)

with(reduced_data, plot(cleanDateTime, Global_active_power, type ="l", xlab = "", ylab = "Global Active Power (kilowatts)"))

dev.off() 
cat("   ... done\n")
