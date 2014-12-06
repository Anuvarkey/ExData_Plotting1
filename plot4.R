source("load_data.R")
png("plot4.png")
#Dimensions(2 rows, 2 cols) and margin set
par(mfrow=c(2,2))

#Plot1
plot(data$DateTime, data$Global_active_power,ylab='Global Active Power (kilowatts)', xlab='', type='l')

#Plot2
plot(data$DateTime, data$Voltage, ylab='Voltage', xlab='', type='l')

#Plot3
plot(data$DateTime, data$Sub_metering_1, type='l',
     xlab='', ylab='Energy sub metering')
lines(data$DateTime, data$Sub_metering_2, col='red')
lines(data$DateTime, data$Sub_metering_3, col='blue')
legend('topright', 
       legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       col=c('black', 'red', 'blue'), 
       lty='solid')

#Plot4
plot(data$DateTime, data$Global_reactive_power, ylab='Global_reactive_power', xlab='', type='l')
dev.off()
