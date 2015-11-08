plot1 <- function(){
        
        x <-read.table("household_power_consumption.txt", header = TRUE, sep = ";")
        
        x$Date <- as.Date(x$Date, format = "%d/%m/%Y")
        
        z <- x[(x$Date == "2007-02-01") | (x$Date == "2007-02-02"),]
        
        z$Global_active_power <- as.numeric(as.character(z$Global_active_power))
        
        hist(z$Global_active_power, main = paste("Global Active Power"), col="red", xlab="Global Active Power (kilowatts)")
        
        dev.copy(png, file="plot1.png", width=480, height=480)
        
        dev.off()
}