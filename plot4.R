# Plot 4
# Subplots of energy, voltage, and power
# Sub Plots - mfrows

# Start the png device
png(filename="plot4.png", height=480, width=480, bg="transparent")

# Create a 2x2 split
par(mfrow=c(2,2))

# SUBPLOT 1 - same as Plot 2
plot(sub_data$Timestamp,
     sub_data$Global_active_power,
     type="l",
     xlab="",
     ylab="Global Active Power")

# SUBPLOT 2 - voltage vs time
plot(sub_data$Timestamp,
     sub_data$Voltage,
     type="l",
     xlab="datetime",
     ylab="Voltage")

# SUBPLOT 3 - same as Plot 3
# Plot the first sub-meter
plot(sub_data$Timestamp,
     sub_data$Sub_metering_1,
     type="l",
     xlab="",
     ylab="Energy sub metering")
lines(sub_data$Timestamp,
      sub_data$Sub_metering_2,
      type="l",
      col="red")
lines(sub_data$Timestamp,
      sub_data$Sub_metering_3,
      type="l",
      col="blue")

# Add the legend
legend(x="topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty=c(1,1),lwd=2,col=c("black","red","blue"),bty="n")

# SUBPLOT 4
plot(sub_data$Timestamp,
     sub_data$Global_reactive_power,
     type="l",
     xlab="datetime",
     ylab="Global_reactive_power")

# Save the figure
dev.off()

