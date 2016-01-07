## Load dplyr package.
library(dplyr)

## This file is for loading the large dataset.
filename <- "household_power_consumption.txt"
inputdata <- read.table(filename,
                   header = TRUE,
                   sep = ";",
                   colClasses = c("character", "character", rep("numeric",7)),
                   na = "?")
dim(inputdata) # 2075259 9
## We only need data of 2 days.
subset <- inputdata$Date == "1/2/2007" | inputdata$Date == "2/2/2007"
Data_EXD1 <- filter(inputdata, subset)
Data_EXD1$DateTime <- strptime(paste(Data_EXD1$Date, Data_EXD1$Time), "%d/%m/%Y %H:%M:%S")
dim(Data_EXD1) # 2880   10