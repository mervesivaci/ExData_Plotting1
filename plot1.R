full_data <- read.csv("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")
subset_data <- subset(full_data, Date %in% c("1/2/2007", "2/2/2007"))

hist(subset_data$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

dev.copy(png, "plot1.png")
dev.off()
