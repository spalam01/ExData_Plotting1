#This script exposes a function plot1() that renders the first plot. 
#It also calls the function as the question asks us to render the png from the script. 




#import data loading, etc. utility functions 
source("load_data.R") 

 
plot1 <- function(data1=NULL) { 
    if(is.null(data1)) 
        data1 <- load_data() 
     
    png("plot1.png", width=400, height=400) 
     
    hist(data1$Global_active_power, 
          main="Global Active Power", 
          xlab="Global Active Power (kilowatts)", 
          ylab="Frequency", 
          col="red") 
      
     dev.off() 
} 
 