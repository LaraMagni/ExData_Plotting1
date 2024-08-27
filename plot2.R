data<- read.table("household_power_consumption.txt", na.strings="?", header = TRUE, sep =";")
DateTime<- strptime(paste(data$Date, data$Time, sep= " "), "%d/%m/%Y %H:%M:%S")
data<- cbind(data, DateTime)
data$Date<- as.Date(data$Date, format="%d/%m/%Y")
data$Global_active_power<- as.numeric(data$Global_active_power)
data2<- subset(data, Date=="2007-02-01"|Date=="2007-02-02")
png("plot2.png", width = 480, height = 480)
with(data2, plot(DateTime, Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab=" "))
dev.off()


