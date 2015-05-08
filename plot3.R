## this script needs some general functionality from mainplot.R - let's get it:
source ("mainplot.R");

## this function provides name and plotting function for excersise #3 and use functionality of mainplot.R for problem solving
plot3 <- function(name="plot3.png", ...){
        pic <- function(data, ...){
                doplot3(data);
        }
        mainplot(pic, name);
        name;
}

## this function provides plotting function for excersise #3
doplot3 <- function(data, ...){
        with(data, plot(data$"Time", data$"Sub_metering_1",  xlab="",  ylab="Energy sub metering", pch="."));
        lines(data$"Time", data$"Sub_metering_1");
        
        with(data, points(data$"Time", data$"Sub_metering_1",  xlab="",  ylab="", pch=".", col="Red"));
        lines(data$"Time", data$"Sub_metering_2", col="Red");
        
        with(data, points(data$"Time", data$"Sub_metering_3",  xlab="",  ylab="", pch=".", col="Blue"));
        lines(data$"Time", data$"Sub_metering_3", col="Blue");
        
        legend('topright', c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
               lty=1, col=c('black', 'red','blue'), cex=.75)
        
}