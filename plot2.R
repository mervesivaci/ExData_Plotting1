full_data <- read.csv("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")
subset_data <- subset(full_data, Date %in% c("1/2/2007", "2/2/2007"))

datetime <- strptime(paste(subset_data$Date, subset_data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
gap <- as.numeric(subset_data$Global_active_power)

plot(datetime, gap, type="l", xlab="", ylab="Global Active Power (kilowatts)")

dev.copy(png, "plot2.png")
dev.off()