full_data <- read.csv("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")
subset_data <- subset(full_data, Date %in% c("1/2/2007", "2/2/2007"))

datetime <- strptime(paste(subset_data$Date, subset_data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
sub_metering1 <- as.numeric(subset_data$Sub_metering_1)
sub_metering2 <- as.numeric(subset_data$Sub_metering_2)
sub_metering3 <- as.numeric(subset_data$Sub_metering_3)

plot(datetime, sub_metering1, type="l", xlab="", ylab="Energy sub metering")
lines(datetime, sub_metering2, type="l", col="red")
lines(datetime, sub_metering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2)

dev.copy(png, "plot3.png")
dev.off()