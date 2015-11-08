plot2 <- function(){
        
        x <-read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings="?")
        
        x$Date <- as.Date(x$Date, format = "%d/%m/%Y")
        
        z <- x[(x$Date == "2007-02-01") | (x$Date == "2007-02-02"),]
        
        z$Global_active_power <- as.numeric(as.character(z$Global_active_power))
        
        datetime <- paste(as.Date(z$Date), z$Time)
        z$Datetime <- as.POSIXct(datetime)
        
        plot(z$Datetime, z$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
        
        dev.copy(png, file="plot2.png", width=480, height=480)
        
        dev.off()
}