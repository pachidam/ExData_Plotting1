# Plot 3
# Plot of energy vs day
# 3 measure Line Graph

# Start the png device
png(filename="plot3.png", height=480, width=480, bg="transparent")
# Plot the first sub-meter
plot(sub_data$Timestamp,
     sub_data$Sub_metering_1,
     type="l",
     xlab="",
     ylab="Energy sub metering")
# Plot the second sub-meter
lines(sub_data$Timestamp,
      sub_data$Sub_metering_2,
      type="l",
      col="red")
# Plot the third sub-meter
lines(sub_data$Timestamp,
      sub_data$Sub_metering_3,
      type="l",
      col="blue")
# Add the legend
legend(x="topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1),lwd=2,col=c("black","red","blue"))
# Save the figure
dev.off()
