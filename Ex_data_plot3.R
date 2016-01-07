## Load the data.
source("loading_the_data.R")

png(filename = "plot3.png", 
    width = 480, height = 480,
    units = "px", bg = "transparent")
plot(Data_EXD1$DateTime, Data_EXD1$Sub_metering_1, 
     type = "l",
     col = "black",
     xlab = "", ylab = "Energy sub metering")
lines(Data_EXD1$DateTime, Data_EXD1$Sub_metering_2, col = "red")
lines(Data_EXD1$DateTime, Data_EXD1$Sub_metering_3, col = "blue")
legend("topright", 
       col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lwd = 1)
dev.off()