plot3 <- function(){
        
        x <-read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings="?")
        
        x$Date <- as.Date(x$Date, format = "%d/%m/%Y")
        
        z <- x[(x$Date == "2007-02-01") | (x$Date == "2007-02-02"),]
        
        z$Global_active_power <- as.numeric(as.character(z$Global_active_power))
        
        datetime <- paste(as.Date(z$Date), z$Time)
        z$Datetime <- as.POSIXct(datetime)
        
        plot(z$Datetime, z$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
        lines(z$Datetime, z$Sub_metering_2,col="red")
        lines(z$Datetime, z$Sub_metering_3,col="blue")
        dev.copy(png, file="plot3.png", width=480, height=480)
        legend("topright", col=c("black","red","blue"), c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"),lty=c(1,1), lwd=c(1,1))
        dev.off()
}