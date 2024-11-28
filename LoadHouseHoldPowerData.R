
## Function to load the Household Power Consumption data downloaded from UC Irvine Machine Learning Repository
## The file should exist in the current working folder directory 

LoadHouseHoldPowerData <- function () {
        
        ## Load the Library dplyr and lubridate
        library(dplyr)
        library(lubridate)
        
        ## Load the data from the current working folder. file name "household_power_consumption.txt"
        ## File properties
        ##      Has headder row 
        ##      Column seperator is ';'
        ##      NA is represented as '?'
        householdpower <- tbl_dt(read.table("household_power_consumption.txt", sep = ";", header = TRUE,stringsAsFactors = FALSE,na="?"))
        
        ## Create a DateTime column merging the Date and Time columns using the lubridate library function
        householdpower$DateTime <- dmy_hms(paste(householdpower$Date, householdpower$Time))
        
        ## Filter the dataset for data only for date 2007-02-01 and 2007-02-02
        householdpower <- householdpower %>% filter(DateTime >= dmy("01/02/2007"), DateTime < dmy("03/02/2007"))
        
        ## Convert the datatype of column Global_active_power to mumeric
        householdpower$Global_active_power <- as.numeric(householdpower$Global_active_power)
        
        ## returnt the datatable
        return(householdpower)
}
