setwd("/Users/xinzhang/Documents/dataScience/Exploratory_Analysis")
data <- read.table("household_power_consumption.txt",sep=";",header=TRUE)
data$Date <- as.Date(as.character(data$Date),"%d/%m/%Y")
data1 <- data[data$Date == as.Date("2007-02-01") | data$Date == as.Date("2007-02-02"),]
data1$DateTime <- strptime(paste(data1$Date,data1$Time),format="%Y-%m-%d %H:%M:%S")
png("plot2.png",width=480,height=480)
plot(data1$DateTime, as.numeric(as.character(data1$Global_active_power)), ylab="Global Active Power (kilowatts)",xlab="",type="l")
dev.off()
