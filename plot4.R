source("reader.R")
library(graphics)

data <- read.data()

par(mfrow = c(2, 2))
par(bg="white")

with(data, {
    plot(DateTime, Global_active_power, type="l", xlab=NA, ylab="Global Active Power (kilowatts)")
    plot(DateTime, Voltage, type="l", xlab="datetime", ylab="Voltage")
    plot(DateTime, Sub_metering_1, type="l", xlab=NA, ylab="Energy sub metering")
    lines(x=DateTime, y=Sub_metering_2, type="l", col="red")
    lines(x=DateTime, y=Sub_metering_3, type="l", col="blue")
    legend("topright", box.lwd=0, col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=1)
    plot(DateTime, Global_reactive_power, type="l", xlab="datetime")
})

dev.copy(png, file="plot4.png")
dev.off()
