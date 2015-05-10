source("reader.R")
library(graphics)

data <- read.data()
par(bg="white")

with(data, plot(DateTime, Sub_metering_1, type="l", xlab=NA, ylab="Energy sub metering"))
with(data, lines(x=DateTime, y=Sub_metering_2, type="l", col="red"))
with(data, lines(x=DateTime, y=Sub_metering_3, type="l", col="blue"))
legend("topright", col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=1)

dev.copy(png, file="plot3.png")
dev.off()
