source("load_data.R")

png("plot2.png", width = 480, height = 480)

# Plot 
plot(data$DateTime, data$Global_active_power,
     ylab='Global Active Power (kilowatts)', xlab='', type='l')

# Turn off device
dev.off()