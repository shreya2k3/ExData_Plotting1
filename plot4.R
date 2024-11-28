
source ("LoadHouseHoldPowerData.R")

## Function to plot the Global Active Power, Voltage, Sub Metering and Global Reactive Power by Date time (Week Day)
##      in foru seperate graphs
plot4 <- function (data=NULL) {
        ## Check if the input data is NULL. If NULL load the House Hold Power Data calling 
        ##      the LoadHouseHoldPowerData() 
        if (is.null(data))
                householdpower <- LoadHouseHoldPowerData()
        else
                householdpower <- data
        
        
        ## Open the png device
        png("plot4.png", width = 480, height = 480)
        
        ## Set the plot area to two rows and two columns to accomodate four graphs
        par(mfrow = c(2,2))
        
        ## Plot the Global Active Power by DateTime (Weekday) on top left portion of the plot
        plot(householdpower$DateTime, householdpower$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")
        
        ## Plot the Voltage Usage by DateTime (Weekday)  on top right portion of the plot
        plot(householdpower$DateTime, householdpower$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")
        
        ## Plot the Sub metering by DateTime (Weekday)  on bottom left portion of the plot
        plot(householdpower$DateTime, householdpower$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "")
        points(householdpower$DateTime, householdpower$Sub_metering_2, type = "l",col="red")
        points(householdpower$DateTime, householdpower$Sub_metering_3, type = "l",col="blue")
        legend("topright", col=c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_2"), lty = 1, bty = "n")
        
        ## Plot the Global reactive Power by DateTime (Weekday)  on bottom left portion of the plot
        plot(householdpower$DateTime, householdpower$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")
        
        dev.off()
}
