#plot2.R
#This script exposes a function plot2() that renders the second plot. 
#It also calls the function as the question asks us to render the png from the script. 




#import data loading, etc. utility functions  
 
source("load_data.R") 

 
plot2 <- function(data1=NULL) { 
    if(is.null(data1)) 
       data1 <- load_data() 

 
    png("plot2.png", width=400, height=400) 
     
    plot(data1$Time, data1$Global_active_power, 
         type="l", 
          xlab="", 
          ylab="Global Active Power (kilowatts)") 
      
     dev.off() 
 } 

  