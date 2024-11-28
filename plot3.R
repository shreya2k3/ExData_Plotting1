
source ("LoadHouseHoldPowerData.R")

## Function to plot the Energy sub metering by Week Day
plot3 <- function (data=NULL) {
        ## Check if the input data is NULL. If NULL load the House Hold Power Data calling 
        ##      the LoadHouseHoldPowerData() 
        if (is.null(data))
                householdpower <- LoadHouseHoldPowerData()
        else
                householdpower <- data
        
        
        ## Open the png device
        png("plot3.png", width = 480, height = 480)
        
        ## Plot lines for the various sum meetering by Weekday (DateTime)
        plot(householdpower$DateTime, householdpower$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "",col="black")
        points(householdpower$DateTime, householdpower$Sub_metering_2, type = "l",col="red")
        points(householdpower$DateTime, householdpower$Sub_metering_3, type = "l",col="blue")
        legend("topright", col=c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1)
        
        ## Close Device
        dev.off()
}
