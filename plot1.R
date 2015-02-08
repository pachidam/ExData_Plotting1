#  Measurements of electric power consumption in one household 
# with a one-minute sampling rate over a period of almost 4 years.
# Different electrical quantities and some sub-metering values are available.

# This data set has 2,075,259 rows and 9 columns
# The memory usage of this data set is 224131200 Bytes
# Read in the power consumption data set
# First two columns will be converted to date/time in next step
# In this data set missing values are coded as "?"

# Plot 1
# Histogram of Frequency vs Global Active Power

data <- read.csv("household_power_consumption.txt",
                 sep=";",
                 colClasses=c(rep("character",2),rep("numeric",7)),
                 na.strings="?")

# Combine the date and time columns into one timestapm
data$Timestamp <- strptime(paste(data$Date,data$Time),
                           format="%d/%m/%Y %H:%M:%S")

# Drop the now-unnecessary date and time cols
data$Date=NULL
data$Time=NULL

# Subset the data to only look at desired time span
# Here we'll be working with data from 2007-02-01 to 2007-02-02.
sub_data = subset(data,as.Date(data$Timestamp) >= "2007-02-01" 
                  & as.Date(data$Timestamp) < "2007-02-03") 

# Start the png device
png(filename="plot1.png", height=480, width=480, bg="transparent")

# Plot the histogram
hist(sub_data$Global_active_power,
     col="red",
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)",
     ylab="Frequency")
# Save the figure
dev.off()
