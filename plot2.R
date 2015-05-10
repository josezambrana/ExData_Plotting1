source("reader.R")
library(graphics)

data <- read.data()
par(bg="white")
with(data, plot(DateTime, Global_active_power, type="l", xlab=NA, ylab="Global Active Power (kilowatts)"))
dev.copy(png, file="plot2.png")
dev.off()
