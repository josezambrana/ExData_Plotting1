source("reader.R")
library(graphics)

data <- read.data()
par(bg="white")
hist(data$Global_active_power, xlab="Global Active Power (kilowatts)", col="red", main="Global Active Power")
dev.copy(png, file="plot1.png")
dev.off()
