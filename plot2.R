
source ("LoadHouseHoldPowerData.R")

## Function to plot the Global Active Power usage by Week Day
plot2 <- function (data=NULL) {
        ## Check if the input data is NULL. If NULL load the House Hold Power Data calling 
        ##      the LoadHouseHoldPowerData() 
        if (is.null(data))
                householdpower <- LoadHouseHoldPowerData()
        else
                householdpower <- data
        
        ## Open the png device
        png("plot2.png", width = 480, height = 480)
        
        ## Plot a line graph (type = "l") for Global Active power in killowatt
        ##      for the week day
        plot(householdpower$DateTime
                , householdpower$Global_active_power
                , type = "l"
                , xlab = ""
                , ylab = "Global Active Power (kilowatts)")
        
        ## Close Device
        dev.off()
}

