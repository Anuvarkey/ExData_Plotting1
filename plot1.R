source("load_data.R")
png("plot1.png", width=480, height=480)
#Histogram 
hist(as.numeric(data$Global_active_power), main='Global Active Power', xlab='Global Active Power (kilowatts)', col='red')
dev.off()