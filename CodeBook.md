## Coursera DataSciences Exploratory Data Analysis Course Project 1 - Code Book

The purpose of this document is to describe the Data Files and the steps included to draw plots

### Data Description
Data for this assignment describes the measurements of electric power consumption in one household with a one-minute sampling rate over a period of almost 4 years. 
This is downloaded from the UC Irvine Machine Learning Repository.

##### Descriptions of the 9 variables in the dataset:

Date: Date in format dd/mm/yyyy

Time: time in format hh:mm:ss

Global_active_power: household global minute-averaged active power (in kilowatt)

Global_reactive_power: household global minute-averaged reactive power (in kilowatt)

Voltage: minute-averaged voltage (in volt)

Global_intensity: household global minute-averaged current intensity (in ampere)

Sub_metering_1: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered).

Sub_metering_2: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light.

Sub_metering_3: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.


### Implementation Steps

Implementation is broken down into five files:

1. LoadHouseHoldPowerData - This file helps load the data set from the current working folder. (Be sure to drop the R pacakges and the Data in the same folder). Logic includes loading the file into a data table and filtering the data based on the analysis dates 2007-02-01 and 2007-02-02. This file is included as the source for all the remaining four files.
	
2. plot1.R - Plot the Global Active Power Frequency from the House Hold Power Data

3. plot2.R - Function to plot the Global Active Power usage by Week Day

4. plot3.R - Function to plot the Energy sub metering by Week Day

5. plot3.R - plot the Global Active Power, Voltage, Sub Metering and Global Reactive Power by Date time (Week Day) in four seperate graphs.

