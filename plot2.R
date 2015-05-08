## this script needs some general functionality from mainplot.R - let's get it:
source ("mainplot.R");

## this function provides name and plotting function for excersise #2 and use functionality of mainplot.R for problem solving
plot2 <- function(name="plot2.png", ...){
        pic <- function(data, ...){
                plot(data$"Time", data$"Global_active_power", xlab="",  ylab="Global Active Power (kilowatts)", pch=".");
                lines(data$"Time", data$"Global_active_power");
        }
        mainplot(pic, name);
        name;
}
