get.data <- function() {
    if(!file.exists("data.zip")) {
        download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", "data.zip", method="curl")
    }
    if(!file.exists("household_power_consumption.txt")) {
        unzip("data.zip")
    }
}

read.data <- function() {
    get.data()
    header <- read.csv("household_power_consumption.txt", header=T, sep=";", nrow=1)

    data <- read.csv("household_power_consumption.txt", header=F, sep=";", skip=66637, nrow=2880)
    colnames(data) <- colnames(header)
    data$DateTime <- paste(data$Date, data$Time, sep=" ")
    data$DateTime <- strptime(data$DateTime, format="%e/%m/%Y %H:%M:%S")
    data
}
