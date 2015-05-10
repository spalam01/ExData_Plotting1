#This script exposes a function plot3() that renders the third plot. 
#It also calls the function as the question asks us to render the png from the script. 



 
source("load_data.R") 
 
 
plot3 <- function(data1=NULL) { 
     if(is.null(data1)) 
         data1 <- load_data() 
 
png("plot3.png", width=400, height=400) 
 
 
    plot(data1$Time, data1$Sub_metering_1, type="l", col="black", 
          xlab="", ylab="Energy sub metering") 
     lines(data1$Time, data1$Sub_metering_2, col="red") 
     lines(data1$Time, data1$Sub_metering_3, col="blue") 
     legend("topright", 
            col=c("black", "red", "blue"), 
            c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
            lty=1) 
 
 
     dev.off() 
 } 
 
 