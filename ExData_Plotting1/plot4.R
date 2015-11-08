plot4 <- function(){
         x <-read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings="?")
         x$Date <- as.Date(x$Date, format = "%d/%m/%Y")
        z <- x[(x$Date == "2007-02-01") | (x$Date == "2007-02-02"),]
        z$Global_active_power <- as.numeric(as.character(z$Global_active_power))
        datetime <- paste(as.Date(z$Date), z$Time)
        z$Datetime <- as.POSIXct(datetime)
        
        
        par(mfrow=c(2,2))
        plot(z$Datetime, z$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
       
        plot(z$Datetime,z$Voltage, type="l", xlab="datetime", ylab="Voltage")
        
        plot(z$Datetime,z$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
        lines(z$Datetime,z$Sub_metering_2,col="red")
        lines(z$Datetime,z$Sub_metering_3,col="blue")
        legend("topright", col=c("black","red","blue"), c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  "),lty= 1, lwd =2, bty="n", cex = .5)
        
        plot(z$Datetime, z$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
         
        
        dev.copy(png, file="plot4.png", width=480, height=480)
        
        dev.off()
}