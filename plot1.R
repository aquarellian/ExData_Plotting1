## this script needs some general functionality from mainplot.R - let's get it:
source ("mainplot.R");

## this function provides name and plotting function for excersise #1 and use functionality of mainplot.R for problem solving
plot1 <- function(name="plot1.png"){
        pic <- function(data){
                with(data, hist(data$"Global_active_power", 
                                main="Global Active Power", 
                                col="Red", 
                                xlab="Global Active Power (kilowatts)"));
        }
        mainplot(pic, name);
        name;
}