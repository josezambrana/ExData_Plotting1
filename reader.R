get.data <- function() {
    if(!file.exists("exdata-data-household_power_consumption.zip")) {
        download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", method="curl")
    }
}

read.data <- function() {
    get.data()
    header <- read.csv("household_power_consumption.txt", header=T, sep=";", nrow=1)

    data <- read.csv("household_power_consumption.txt", header=F, sep=";", skip=66637, nrow=2880)
    colnames(data) <- colnames(header)

    data$Date <- as.Date(data$Date)
}
