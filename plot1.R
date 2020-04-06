setwd("D:/r workspace/ExData_Plotting1")

d<-read.csv2("household_power_consumption.csv",colClasses = "character")

library(dplyr)

reqdata<-filter(d,Date=="2/2/2007"| Date=="1/2/2007")
reqdata$Global_active_power<-as.numeric(reqdata$Global_active_power)
png("plot1.png",width = 480,height = 480)
hist(reqdata$Global_active_power,ylab = "Frequency",
     xlab = "Global Active Power (kilowatts)",
     main = "Global Active Power",col = "Red")
dev.off()


