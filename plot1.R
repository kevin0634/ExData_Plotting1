setwd("/Users/xinzhang/Documents/dataScience/Exploratory_Analysis")
data <- read.table("household_power_consumption.txt",sep=";",header=TRUE)
data$Date <- as.Date(as.character(data$Date),"%d/%m/%Y")
data1 <- data[data$Date == as.Date("2007-02-01") | data$Date == as.Date("2007-02-02"),]
png("plot1.png", width=480, height=480)
hist(as.numeric(as.character(data1$Global_active_power)),col="orangered", main="Global Active Power",xlab="Global Active Power (Kilowatts)")
dev.off()