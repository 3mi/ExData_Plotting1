## Load the data.
source("loading_the_data.R")

png(filename = "plot2.png", 
    width = 480, height = 480,
    units = "px", bg = "transparent")
plot(Data_EXD1$DateTime, Data_EXD1$Global_active_power, 
     type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")
dev.off()