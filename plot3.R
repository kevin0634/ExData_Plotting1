setwd("/Users/xinzhang/Documents/dataScience/Exploratory_Analysis")
data <- read.table("household_power_consumption.txt",sep=";",header=TRUE)
data$Date <- as.Date(as.character(data$Date),"%d/%m/%Y")
data1 <- data[data$Date == as.Date("2007-02-01") | data$Date == as.Date("2007-02-02"),]
data1$DateTime <- strptime(paste(data1$Date,data1$Time),format="%Y-%m-%d %H:%M:%S")
png("plot3.png",width=480,height=480)
plot(data1$DateTime, as.numeric(as.character(data1$Sub_metering_1)), 
     yaxt="n",ylab="Energy sub metering",type="l",ylim=c(0,40),xlab="")
par(new=TRUE)
plot(data1$DateTime, as.numeric(as.character(data1$Sub_metering_2)), 
     yaxt="n", ylab="Energy sub metering",col="red",type="l", ylim=c(0,40), xlab="")
par(new=TRUE)
plot(data1$DateTime, as.numeric(as.character(data1$Sub_metering_3)), 
     yaxt="n", ylab="Energy sub metering",col="blue",type="l", ylim=c(0,40), xlab="")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col=c("black","red","blue"), lty=c(1,1,1))
axis(2, at=seq(0,30,by=10))
dev.off()