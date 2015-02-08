# Plot 2
# Plot of Global Active Power vs day
# Line Graph
# sub_data has the subset of data created in plot1.R

png(filename="plot2.png", height=480, width=480, bg="transparent")

# Plot the line
plot(sub_data$Timestamp,
     sub_data$Global_active_power,
     type="l",
     xlab="",
     ylab="Global Active Power (kilowatts)")

# Save the figure
dev.off()
