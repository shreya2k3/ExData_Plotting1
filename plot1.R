
source ("LoadHouseHoldPowerData.R")

## Function to plot the Global Active Power Frequency from the House Hold Power Data
plot1 <- function (data=NULL) {
        ## Check if the input data is NULL. If NULL load the House Hold Power Data calling 
        ##      the LoadHouseHoldPowerData() 
        if (is.null(data))
                householdpower <- LoadHouseHoldPowerData()
        else
                householdpower <- data
        
        ## Open the png device
        png("plot1.png", width = 480, height = 480)
        
        ## Plot the histogram on the frequency of Global Active Power in killowatts with properties
        hist(householdpower$Global_active_power
                , main = "Global Active Power"
                , col = "red"
                , xlab = "Global Active Power (kilowatts)"
                , ylab = "Frequency")

        ## Close Device
        dev.off()
}
