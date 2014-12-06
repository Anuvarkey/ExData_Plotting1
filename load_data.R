temp <- tempfile()
download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",temp)
data <- read.csv(unz(temp, "household_power_consumption.txt"), sep=";")
unlink(temp)

## Converting the date column to Date class:
data$Date <- as.Date(data$Date, format="%d/%m/%Y")

## Subsetting the data.frame to only include the desired dates:
data <- data[data$Date >= as.Date("2007-02-01") & data$Date<=as.Date("2007-02-02"),]
data$DateTime <- strptime(paste(data$Date, data$Time), "%Y-%m-%d %H:%M:%S")
head(data)