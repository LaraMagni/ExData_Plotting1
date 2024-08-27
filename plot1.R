data<- read.table("household_power_consumption.txt", na.strings = "?", header = TRUE, sep =";" )
data$Date<- as.Date(data$Date, format= "%d/ %m /%Y")
data_2<- subset(data, Date=="2007-02-01"| Date== "2007-02-02")


png("plot1.png", width=480, height=480)
Global_active_power<- as.numeric(data_2$Global_active_power)
hist(Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main= "Global Active Power")
dev.off()