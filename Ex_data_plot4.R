## Load the data.
source("loading_the_data.R")

png(filename = "plot4.png", 
    width = 480, height = 480,
    units = "px", bg = "transparent")
par(mfrow = c(2, 2))
## Top-left
plot(Data_EXD1$DateTime, Data_EXD1$Global_active_power, 
     type = "l",
     xlab = "", ylab = "Global Active Power")
## Top-right
plot(Data_EXD1$DateTime, Data_EXD1$Voltage,
     type = "l",
     xlab = "datetime", ylab = "Voltage")
## Bottom-left
plot(Data_EXD1$DateTime, Data_EXD1$Sub_metering_1, 
     type = "l",
     col = "black",
     xlab = "", ylab = "Energy sub metering")
lines(Data_EXD1$DateTime, Data_EXD1$Sub_metering_2, col = "red")
lines(Data_EXD1$DateTime, Data_EXD1$Sub_metering_3, col = "blue")
# Remove the border of legend here.
legend("topright", 
       bty = "n",
       col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lwd = 1)
## Bottom-right
plot(Data_EXD1$DateTime, Data_EXD1$Global_reactive_power, 
     type = "l",
     col = "black",
     xlab = "datetime", ylab = colnames(Data_EXD1)[4])
dev.off()