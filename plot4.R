## this script needs some general functionality from mainplot.R - let's get it:
source ("mainplot.R");
## we also can use function from plot3.R for part of plotting function of this excersice:
source ("plot3.R");

## this function provides name and plotting function for excersise #4 and use functionality of mainplot.R and "plot3.R" for problem solving
plot4 <- function(name="plot4.png", ...){
        pic <- function(data, ...){
                par(mfrow = c(2,2));
                
                ##1
                plot(data$"Time", data$"Global_active_power", xlab="",  ylab="Global Active Power",  pch=".");
                lines(data$"Time", data$"Global_active_power");
                
                ##2
                plot(data$"Time", data$"Voltage", pch=".", xlab="datetime",  ylab="Voltage");
                lines(data$"Time", data$"Voltage");
                
                ##3
                doplot3(data);
                legend('topright', c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
                       lty=1, col=c('black', 'red','blue'), cex=.75, bty="n")
                
                ##4
                plot(data$"Time", data$"Global_reactive_power", pch=".", xlab="datetime");
                lines(data$"Time", data$"Global_reactive_power");
                
                
        }
        mainplot(pic, name);
        name;
}