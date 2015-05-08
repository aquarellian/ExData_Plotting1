## function for data reading.
## params: directory - path from current working directory to source file, and filename
## run with empty params list if data file is in the working directory
loadData <- function (directory=NA, file="household_power_consumption.txt"){
        if (!is.na(directory)){
                setwd(directory);
        }
        read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE)
}

## select data that is necessary for further usage.
selectData <- function (data, date=c("2/2/2007", "1/2/2007")){
        subset(data, (data$Date %in% date));
}

## convert data to more usable data types
convertData <- function (data){
        data$"Time" <- paste (data$"Date", data$"Time", sep = " ", collapse = NULL)
        data$"Time" <- strptime(data$"Time", "%d/%m/%Y %H:%M:%S")
        data$"Date" <- as.Date(data$"Date", "%d/%m/%Y")
        data$"Global_active_power"<-as.numeric(data$"Global_active_power");
        data$"Global_reactive_power"<-as.numeric(data$"Global_reactive_power");
        data$"Voltage"<-as.numeric(data$"Voltage")
        data$"Global_intensity"<-as.numeric(data$"Global_intensity")
        data$"Sub_metering_1"<-as.numeric(data$"Sub_metering_1")
        data$"Sub_metering_2"<-as.numeric(data$"Sub_metering_2")
        data$"Sub_metering_3"<-as.numeric(data$"Sub_metering_3")
        data
}

## function provides main logic of Programming Assignment 1:
## reads data from file, selects data for specified dates, 
## converts data and runs function that plots result to file
mainplot <- function(pic, name, ...){
        data <- loadData();
        data <- selectData(data);
        data <- convertData(data);
        savePNG(pic, name, data);
}

## gets data, filename and plotting function
## writes result of plotting function to PNG file
savePNG <- function(pic, name, data, ...){
        png(file=name) 
        pic(data);
        dev.off();
        
}

